; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_getroot.c_nfs_get_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_getroot.c_nfs_get_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32, i8* }
%struct.super_block = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_server = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*)* }
%struct.nfs_fsinfo = type { i32* }
%struct.inode = type { i32, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"nfs_get_root: getattr error = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"nfs_get_root: get root inode failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"nfs_get_root: get root dentry failed\0A\00", align 1
@DCACHE_NFSFS_RENAMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @nfs_get_root(%struct.super_block* %0, %struct.nfs_fh* %1, i8* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.nfs_fh*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nfs_server*, align 8
  %9 = alloca %struct.nfs_fsinfo, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = call %struct.nfs_server* @NFS_SB(%struct.super_block* %14)
  store %struct.nfs_server* %15, %struct.nfs_server** %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kstrdup(i8* %16, i32 %17)
  store i8* %18, i8** %12, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.inode* @ERR_PTR(i32 %23)
  %25 = bitcast %struct.inode* %24 to %struct.dentry*
  store %struct.dentry* %25, %struct.dentry** %4, align 8
  br label %132

26:                                               ; preds = %3
  %27 = call i32* (...) @nfs_alloc_fattr()
  %28 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %9, i32 0, i32 0
  store i32* %27, i32** %28, align 8
  %29 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %9, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load i8*, i8** %12, align 8
  %34 = call i32 @kfree(i8* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.inode* @ERR_PTR(i32 %36)
  %38 = bitcast %struct.inode* %37 to %struct.dentry*
  store %struct.dentry* %38, %struct.dentry** %4, align 8
  br label %132

39:                                               ; preds = %26
  %40 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %41 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*)*, i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*)** %45, align 8
  %47 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %48 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %49 = call i32 %46(%struct.nfs_server* %47, %struct.nfs_fh* %48, %struct.nfs_fsinfo* %9)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %39
  %53 = load i32, i32* %13, align 4
  %54 = sub nsw i32 0, %53
  %55 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %13, align 4
  %57 = call %struct.inode* @ERR_PTR(i32 %56)
  %58 = bitcast %struct.inode* %57 to %struct.dentry*
  store %struct.dentry* %58, %struct.dentry** %10, align 8
  br label %125

59:                                               ; preds = %39
  %60 = load %struct.super_block*, %struct.super_block** %5, align 8
  %61 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %62 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %9, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call %struct.inode* @nfs_fhget(%struct.super_block* %60, %struct.nfs_fh* %61, i32* %63, i32* null)
  store %struct.inode* %64, %struct.inode** %11, align 8
  %65 = load %struct.inode*, %struct.inode** %11, align 8
  %66 = call i64 @IS_ERR(%struct.inode* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %59
  %69 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.inode*, %struct.inode** %11, align 8
  %71 = call %struct.inode* @ERR_CAST(%struct.inode* %70)
  %72 = bitcast %struct.inode* %71 to %struct.dentry*
  store %struct.dentry* %72, %struct.dentry** %10, align 8
  br label %125

73:                                               ; preds = %59
  %74 = load %struct.super_block*, %struct.super_block** %5, align 8
  %75 = load %struct.inode*, %struct.inode** %11, align 8
  %76 = call i32 @nfs_superblock_set_dummy_root(%struct.super_block* %74, %struct.inode* %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i32, i32* %13, align 4
  %81 = call %struct.inode* @ERR_PTR(i32 %80)
  %82 = bitcast %struct.inode* %81 to %struct.dentry*
  store %struct.dentry* %82, %struct.dentry** %10, align 8
  br label %125

83:                                               ; preds = %73
  %84 = load %struct.inode*, %struct.inode** %11, align 8
  %85 = call %struct.inode* @d_obtain_root(%struct.inode* %84)
  %86 = bitcast %struct.inode* %85 to %struct.dentry*
  store %struct.dentry* %86, %struct.dentry** %10, align 8
  %87 = load %struct.dentry*, %struct.dentry** %10, align 8
  %88 = bitcast %struct.dentry* %87 to %struct.inode*
  %89 = call i64 @IS_ERR(%struct.inode* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %125

93:                                               ; preds = %83
  %94 = load %struct.dentry*, %struct.dentry** %10, align 8
  %95 = bitcast %struct.dentry* %94 to %struct.inode*
  %96 = load %struct.inode*, %struct.inode** %11, align 8
  %97 = call i32 @security_d_instantiate(%struct.inode* %95, %struct.inode* %96)
  %98 = load %struct.dentry*, %struct.dentry** %10, align 8
  %99 = getelementptr inbounds %struct.dentry, %struct.dentry* %98, i32 0, i32 1
  %100 = call i32 @spin_lock(i32* %99)
  %101 = load %struct.dentry*, %struct.dentry** %10, align 8
  %102 = bitcast %struct.dentry* %101 to %struct.inode*
  %103 = call i64 @IS_ROOT(%struct.inode* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %93
  %106 = load %struct.dentry*, %struct.dentry** %10, align 8
  %107 = getelementptr inbounds %struct.dentry, %struct.dentry* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %121, label %110

110:                                              ; preds = %105
  %111 = load %struct.dentry*, %struct.dentry** %10, align 8
  %112 = getelementptr inbounds %struct.dentry, %struct.dentry* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @DCACHE_NFSFS_RENAMED, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %110
  %118 = load i8*, i8** %12, align 8
  %119 = load %struct.dentry*, %struct.dentry** %10, align 8
  %120 = getelementptr inbounds %struct.dentry, %struct.dentry* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  store i8* null, i8** %12, align 8
  br label %121

121:                                              ; preds = %117, %110, %105, %93
  %122 = load %struct.dentry*, %struct.dentry** %10, align 8
  %123 = getelementptr inbounds %struct.dentry, %struct.dentry* %122, i32 0, i32 1
  %124 = call i32 @spin_unlock(i32* %123)
  br label %125

125:                                              ; preds = %121, %91, %79, %68, %52
  %126 = load i8*, i8** %12, align 8
  %127 = call i32 @kfree(i8* %126)
  %128 = getelementptr inbounds %struct.nfs_fsinfo, %struct.nfs_fsinfo* %9, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = call i32 @nfs_free_fattr(i32* %129)
  %131 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %131, %struct.dentry** %4, align 8
  br label %132

132:                                              ; preds = %125, %32, %21
  %133 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %133
}

declare dso_local %struct.nfs_server* @NFS_SB(%struct.super_block*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32* @nfs_alloc_fattr(...) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local %struct.inode* @nfs_fhget(%struct.super_block*, %struct.nfs_fh*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_CAST(%struct.inode*) #1

declare dso_local i32 @nfs_superblock_set_dummy_root(%struct.super_block*, %struct.inode*) #1

declare dso_local %struct.inode* @d_obtain_root(%struct.inode*) #1

declare dso_local i32 @security_d_instantiate(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @IS_ROOT(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfs_free_fattr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
