; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { i32 }
%struct.nfs4_label = type { i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32 (%struct.inode*, %struct.TYPE_5__*, %struct.nfs_fh*, %struct.nfs_fattr*, %struct.nfs4_label*)* }

@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"NFS: lookup(%pd2)\0A\00", align 1
@NFSIOS_VFSLOOKUP = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@LOOKUP_RENAME_TARGET = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @nfs_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.nfs_fh*, align 8
  %11 = alloca %struct.nfs_fattr*, align 8
  %12 = alloca %struct.nfs4_label*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.inode* null, %struct.inode** %9, align 8
  store %struct.nfs_fh* null, %struct.nfs_fh** %10, align 8
  store %struct.nfs_fattr* null, %struct.nfs_fattr** %11, align 8
  store %struct.nfs4_label* null, %struct.nfs4_label** %12, align 8
  %14 = load i32, i32* @VFS, align 4
  %15 = load %struct.dentry*, %struct.dentry** %6, align 8
  %16 = bitcast %struct.dentry* %15 to %struct.nfs4_label*
  %17 = call i32 @dfprintk(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.nfs4_label* %16)
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = load i32, i32* @NFSIOS_VFSLOOKUP, align 4
  %20 = call i32 @nfs_inc_stats(%struct.inode* %18, i32 %19)
  %21 = load %struct.dentry*, %struct.dentry** %6, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = call %struct.TYPE_6__* @NFS_SERVER(%struct.inode* %25)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %24, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %3
  %34 = load i32, i32* @ENAMETOOLONG, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.nfs4_label* @ERR_PTR(i32 %35)
  %37 = bitcast %struct.nfs4_label* %36 to %struct.dentry*
  store %struct.dentry* %37, %struct.dentry** %4, align 8
  br label %156

38:                                               ; preds = %3
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @nfs_is_exclusive_create(%struct.inode* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @LOOKUP_RENAME_TARGET, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %38
  store %struct.dentry* null, %struct.dentry** %4, align 8
  br label %156

49:                                               ; preds = %43
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  %52 = call %struct.nfs4_label* @ERR_PTR(i32 %51)
  %53 = bitcast %struct.nfs4_label* %52 to %struct.dentry*
  store %struct.dentry* %53, %struct.dentry** %8, align 8
  %54 = call %struct.nfs_fh* (...) @nfs_alloc_fhandle()
  store %struct.nfs_fh* %54, %struct.nfs_fh** %10, align 8
  %55 = call %struct.nfs_fattr* (...) @nfs_alloc_fattr()
  store %struct.nfs_fattr* %55, %struct.nfs_fattr** %11, align 8
  %56 = load %struct.nfs_fh*, %struct.nfs_fh** %10, align 8
  %57 = icmp eq %struct.nfs_fh* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %49
  %59 = load %struct.nfs_fattr*, %struct.nfs_fattr** %11, align 8
  %60 = icmp eq %struct.nfs_fattr* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %58, %49
  br label %150

62:                                               ; preds = %58
  %63 = load %struct.inode*, %struct.inode** %5, align 8
  %64 = call %struct.TYPE_6__* @NFS_SERVER(%struct.inode* %63)
  %65 = load i32, i32* @GFP_NOWAIT, align 4
  %66 = call %struct.nfs4_label* @nfs4_label_alloc(%struct.TYPE_6__* %64, i32 %65)
  store %struct.nfs4_label* %66, %struct.nfs4_label** %12, align 8
  %67 = load %struct.nfs4_label*, %struct.nfs4_label** %12, align 8
  %68 = call i64 @IS_ERR(%struct.nfs4_label* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %150

71:                                               ; preds = %62
  %72 = load %struct.inode*, %struct.inode** %5, align 8
  %73 = load %struct.dentry*, %struct.dentry** %6, align 8
  %74 = bitcast %struct.dentry* %73 to %struct.nfs4_label*
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @trace_nfs_lookup_enter(%struct.inode* %72, %struct.nfs4_label* %74, i32 %75)
  %77 = load %struct.inode*, %struct.inode** %5, align 8
  %78 = call %struct.TYPE_7__* @NFS_PROTO(%struct.inode* %77)
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32 (%struct.inode*, %struct.TYPE_5__*, %struct.nfs_fh*, %struct.nfs_fattr*, %struct.nfs4_label*)*, i32 (%struct.inode*, %struct.TYPE_5__*, %struct.nfs_fh*, %struct.nfs_fattr*, %struct.nfs4_label*)** %79, align 8
  %81 = load %struct.inode*, %struct.inode** %5, align 8
  %82 = load %struct.dentry*, %struct.dentry** %6, align 8
  %83 = getelementptr inbounds %struct.dentry, %struct.dentry* %82, i32 0, i32 1
  %84 = load %struct.nfs_fh*, %struct.nfs_fh** %10, align 8
  %85 = load %struct.nfs_fattr*, %struct.nfs_fattr** %11, align 8
  %86 = load %struct.nfs4_label*, %struct.nfs4_label** %12, align 8
  %87 = call i32 %80(%struct.inode* %81, %struct.TYPE_5__* %83, %struct.nfs_fh* %84, %struct.nfs_fattr* %85, %struct.nfs4_label* %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @ENOENT, align 4
  %90 = sub nsw i32 0, %89
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %71
  br label %119

93:                                               ; preds = %71
  %94 = load i32, i32* %13, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* %13, align 4
  %98 = call %struct.nfs4_label* @ERR_PTR(i32 %97)
  %99 = bitcast %struct.nfs4_label* %98 to %struct.dentry*
  store %struct.dentry* %99, %struct.dentry** %8, align 8
  br label %141

100:                                              ; preds = %93
  %101 = load %struct.dentry*, %struct.dentry** %6, align 8
  %102 = getelementptr inbounds %struct.dentry, %struct.dentry* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.nfs_fh*, %struct.nfs_fh** %10, align 8
  %105 = load %struct.nfs_fattr*, %struct.nfs_fattr** %11, align 8
  %106 = load %struct.nfs4_label*, %struct.nfs4_label** %12, align 8
  %107 = call %struct.inode* @nfs_fhget(i32 %103, %struct.nfs_fh* %104, %struct.nfs_fattr* %105, %struct.nfs4_label* %106)
  store %struct.inode* %107, %struct.inode** %9, align 8
  %108 = load %struct.inode*, %struct.inode** %9, align 8
  %109 = call %struct.nfs4_label* @ERR_CAST(%struct.inode* %108)
  %110 = bitcast %struct.nfs4_label* %109 to %struct.dentry*
  store %struct.dentry* %110, %struct.dentry** %8, align 8
  %111 = load %struct.dentry*, %struct.dentry** %8, align 8
  %112 = bitcast %struct.dentry* %111 to %struct.nfs4_label*
  %113 = call i64 @IS_ERR(%struct.nfs4_label* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %100
  br label %141

116:                                              ; preds = %100
  %117 = load %struct.inode*, %struct.inode** %5, align 8
  %118 = call i32 @nfs_force_use_readdirplus(%struct.inode* %117)
  br label %119

119:                                              ; preds = %116, %92
  %120 = load %struct.inode*, %struct.inode** %9, align 8
  %121 = load %struct.dentry*, %struct.dentry** %6, align 8
  %122 = bitcast %struct.dentry* %121 to %struct.nfs4_label*
  %123 = call %struct.nfs4_label* @d_splice_alias(%struct.inode* %120, %struct.nfs4_label* %122)
  %124 = bitcast %struct.nfs4_label* %123 to %struct.dentry*
  store %struct.dentry* %124, %struct.dentry** %8, align 8
  %125 = load %struct.dentry*, %struct.dentry** %8, align 8
  %126 = icmp ne %struct.dentry* %125, null
  br i1 %126, label %127, label %135

127:                                              ; preds = %119
  %128 = load %struct.dentry*, %struct.dentry** %8, align 8
  %129 = bitcast %struct.dentry* %128 to %struct.nfs4_label*
  %130 = call i64 @IS_ERR(%struct.nfs4_label* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %141

133:                                              ; preds = %127
  %134 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %134, %struct.dentry** %6, align 8
  br label %135

135:                                              ; preds = %133, %119
  %136 = load %struct.dentry*, %struct.dentry** %6, align 8
  %137 = bitcast %struct.dentry* %136 to %struct.nfs4_label*
  %138 = load %struct.inode*, %struct.inode** %5, align 8
  %139 = call i32 @nfs_save_change_attribute(%struct.inode* %138)
  %140 = call i32 @nfs_set_verifier(%struct.nfs4_label* %137, i32 %139)
  br label %141

141:                                              ; preds = %135, %132, %115, %96
  %142 = load %struct.inode*, %struct.inode** %5, align 8
  %143 = load %struct.dentry*, %struct.dentry** %6, align 8
  %144 = bitcast %struct.dentry* %143 to %struct.nfs4_label*
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @trace_nfs_lookup_exit(%struct.inode* %142, %struct.nfs4_label* %144, i32 %145, i32 %146)
  %148 = load %struct.nfs4_label*, %struct.nfs4_label** %12, align 8
  %149 = call i32 @nfs4_label_free(%struct.nfs4_label* %148)
  br label %150

150:                                              ; preds = %141, %70, %61
  %151 = load %struct.nfs_fattr*, %struct.nfs_fattr** %11, align 8
  %152 = call i32 @nfs_free_fattr(%struct.nfs_fattr* %151)
  %153 = load %struct.nfs_fh*, %struct.nfs_fh** %10, align 8
  %154 = call i32 @nfs_free_fhandle(%struct.nfs_fh* %153)
  %155 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %155, %struct.dentry** %4, align 8
  br label %156

156:                                              ; preds = %150, %48, %33
  %157 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %157
}

declare dso_local i32 @dfprintk(i32, i8*, %struct.nfs4_label*) #1

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_6__* @NFS_SERVER(%struct.inode*) #1

declare dso_local %struct.nfs4_label* @ERR_PTR(i32) #1

declare dso_local i64 @nfs_is_exclusive_create(%struct.inode*, i32) #1

declare dso_local %struct.nfs_fh* @nfs_alloc_fhandle(...) #1

declare dso_local %struct.nfs_fattr* @nfs_alloc_fattr(...) #1

declare dso_local %struct.nfs4_label* @nfs4_label_alloc(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @IS_ERR(%struct.nfs4_label*) #1

declare dso_local i32 @trace_nfs_lookup_enter(%struct.inode*, %struct.nfs4_label*, i32) #1

declare dso_local %struct.TYPE_7__* @NFS_PROTO(%struct.inode*) #1

declare dso_local %struct.inode* @nfs_fhget(i32, %struct.nfs_fh*, %struct.nfs_fattr*, %struct.nfs4_label*) #1

declare dso_local %struct.nfs4_label* @ERR_CAST(%struct.inode*) #1

declare dso_local i32 @nfs_force_use_readdirplus(%struct.inode*) #1

declare dso_local %struct.nfs4_label* @d_splice_alias(%struct.inode*, %struct.nfs4_label*) #1

declare dso_local i32 @nfs_set_verifier(%struct.nfs4_label*, i32) #1

declare dso_local i32 @nfs_save_change_attribute(%struct.inode*) #1

declare dso_local i32 @trace_nfs_lookup_exit(%struct.inode*, %struct.nfs4_label*, i32, i32) #1

declare dso_local i32 @nfs4_label_free(%struct.nfs4_label*) #1

declare dso_local i32 @nfs_free_fattr(%struct.nfs_fattr*) #1

declare dso_local i32 @nfs_free_fhandle(%struct.nfs_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
