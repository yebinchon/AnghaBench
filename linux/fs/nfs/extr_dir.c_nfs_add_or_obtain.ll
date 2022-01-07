; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_add_or_obtain.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_add_or_obtain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32 }
%struct.nfs_fh = type { i64 }
%struct.nfs_fattr = type { i32 }
%struct.nfs4_label = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_server = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fattr*, i32*, i32*)* }
%struct.TYPE_6__ = type { i32 (%struct.inode*, i32*, %struct.nfs_fh*, %struct.nfs_fattr*, i32*)* }

@NFS_ATTR_FATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @nfs_add_or_obtain(%struct.dentry* %0, %struct.nfs_fh* %1, %struct.nfs_fattr* %2, %struct.nfs4_label* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.nfs_fh*, align 8
  %7 = alloca %struct.nfs_fattr*, align 8
  %8 = alloca %struct.nfs4_label*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nfs_server*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %6, align 8
  store %struct.nfs_fattr* %2, %struct.nfs_fattr** %7, align 8
  store %struct.nfs4_label* %3, %struct.nfs4_label** %8, align 8
  %15 = load %struct.dentry*, %struct.dentry** %5, align 8
  %16 = call %struct.dentry* @dget_parent(%struct.dentry* %15)
  store %struct.dentry* %16, %struct.dentry** %9, align 8
  %17 = load %struct.dentry*, %struct.dentry** %9, align 8
  %18 = call %struct.inode* @d_inode(%struct.dentry* %17)
  store %struct.inode* %18, %struct.inode** %10, align 8
  %19 = load %struct.dentry*, %struct.dentry** %5, align 8
  %20 = call i32 @d_drop(%struct.dentry* %19)
  %21 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %22 = getelementptr inbounds %struct.nfs_fh, %struct.nfs_fh* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %4
  %26 = load %struct.inode*, %struct.inode** %10, align 8
  %27 = call %struct.TYPE_6__* @NFS_PROTO(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32 (%struct.inode*, i32*, %struct.nfs_fh*, %struct.nfs_fattr*, i32*)*, i32 (%struct.inode*, i32*, %struct.nfs_fh*, %struct.nfs_fattr*, i32*)** %28, align 8
  %30 = load %struct.inode*, %struct.inode** %10, align 8
  %31 = load %struct.dentry*, %struct.dentry** %5, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 1
  %33 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %34 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %35 = call i32 %29(%struct.inode* %30, i32* %32, %struct.nfs_fh* %33, %struct.nfs_fattr* %34, i32* null)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  br label %86

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39, %4
  %41 = load %struct.dentry*, %struct.dentry** %5, align 8
  %42 = load %struct.inode*, %struct.inode** %10, align 8
  %43 = call i32 @nfs_save_change_attribute(%struct.inode* %42)
  %44 = call i32 @nfs_set_verifier(%struct.dentry* %41, i32 %43)
  %45 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %46 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @NFS_ATTR_FATTR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %71, label %51

51:                                               ; preds = %40
  %52 = load %struct.dentry*, %struct.dentry** %5, align 8
  %53 = getelementptr inbounds %struct.dentry, %struct.dentry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.nfs_server* @NFS_SB(i32 %54)
  store %struct.nfs_server* %55, %struct.nfs_server** %14, align 8
  %56 = load %struct.nfs_server*, %struct.nfs_server** %14, align 8
  %57 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fattr*, i32*, i32*)*, i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fattr*, i32*, i32*)** %61, align 8
  %63 = load %struct.nfs_server*, %struct.nfs_server** %14, align 8
  %64 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %65 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %66 = call i32 %62(%struct.nfs_server* %63, %struct.nfs_fh* %64, %struct.nfs_fattr* %65, i32* null, i32* null)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %51
  br label %86

70:                                               ; preds = %51
  br label %71

71:                                               ; preds = %70, %40
  %72 = load %struct.dentry*, %struct.dentry** %5, align 8
  %73 = getelementptr inbounds %struct.dentry, %struct.dentry* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.nfs_fh*, %struct.nfs_fh** %6, align 8
  %76 = load %struct.nfs_fattr*, %struct.nfs_fattr** %7, align 8
  %77 = load %struct.nfs4_label*, %struct.nfs4_label** %8, align 8
  %78 = call %struct.inode* @nfs_fhget(i32 %74, %struct.nfs_fh* %75, %struct.nfs_fattr* %76, %struct.nfs4_label* %77)
  store %struct.inode* %78, %struct.inode** %11, align 8
  %79 = load %struct.inode*, %struct.inode** %11, align 8
  %80 = load %struct.dentry*, %struct.dentry** %5, align 8
  %81 = call %struct.dentry* @d_splice_alias(%struct.inode* %79, %struct.dentry* %80)
  store %struct.dentry* %81, %struct.dentry** %12, align 8
  br label %82

82:                                               ; preds = %86, %71
  %83 = load %struct.dentry*, %struct.dentry** %9, align 8
  %84 = call i32 @dput(%struct.dentry* %83)
  %85 = load %struct.dentry*, %struct.dentry** %12, align 8
  ret %struct.dentry* %85

86:                                               ; preds = %69, %38
  %87 = load %struct.inode*, %struct.inode** %10, align 8
  %88 = call i32 @nfs_mark_for_revalidate(%struct.inode* %87)
  %89 = load i32, i32* %13, align 4
  %90 = call %struct.dentry* @ERR_PTR(i32 %89)
  store %struct.dentry* %90, %struct.dentry** %12, align 8
  br label %82
}

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local %struct.TYPE_6__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @nfs_set_verifier(%struct.dentry*, i32) #1

declare dso_local i32 @nfs_save_change_attribute(%struct.inode*) #1

declare dso_local %struct.nfs_server* @NFS_SB(i32) #1

declare dso_local %struct.inode* @nfs_fhget(i32, %struct.nfs_fh*, %struct.nfs_fattr*, %struct.nfs4_label*) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @nfs_mark_for_revalidate(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
