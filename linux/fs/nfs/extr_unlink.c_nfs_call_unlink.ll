; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_unlink.c_nfs_call_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_unlink.c_nfs_call_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32, %struct.nfs_unlinkdata*, i32 }
%struct.inode = type { i32 }
%struct.nfs_unlinkdata = type { %struct.dentry*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@DCACHE_NFSFS_RENAMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.nfs_unlinkdata*)* @nfs_call_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_call_unlink(%struct.dentry* %0, %struct.inode* %1, %struct.nfs_unlinkdata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.nfs_unlinkdata*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.nfs_unlinkdata* %2, %struct.nfs_unlinkdata** %7, align 8
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.inode* @d_inode(i32 %14)
  store %struct.inode* %15, %struct.inode** %8, align 8
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = call %struct.TYPE_4__* @NFS_I(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @down_read_non_owner(i32* %18)
  %20 = load %struct.dentry*, %struct.dentry** %5, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %7, align 8
  %24 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %7, align 8
  %27 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %26, i32 0, i32 1
  %28 = call %struct.dentry* @d_alloc_parallel(i32 %22, i32* %25, i32* %27)
  store %struct.dentry* %28, %struct.dentry** %9, align 8
  %29 = load %struct.dentry*, %struct.dentry** %9, align 8
  %30 = call i64 @IS_ERR(%struct.dentry* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = call %struct.TYPE_4__* @NFS_I(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @up_read_non_owner(i32* %35)
  store i32 0, i32* %4, align 4
  br label %89

37:                                               ; preds = %3
  %38 = load %struct.dentry*, %struct.dentry** %9, align 8
  %39 = call i32 @d_in_lookup(%struct.dentry* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %82, label %41

41:                                               ; preds = %37
  store i8* null, i8** %11, align 8
  %42 = load %struct.dentry*, %struct.dentry** %9, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 1
  %44 = call i32 @spin_lock(i32* %43)
  %45 = load %struct.dentry*, %struct.dentry** %9, align 8
  %46 = call i64 @d_really_is_positive(%struct.dentry* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %41
  %49 = load %struct.dentry*, %struct.dentry** %9, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @DCACHE_NFSFS_RENAMED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %48
  %56 = load %struct.dentry*, %struct.dentry** %9, align 8
  %57 = getelementptr inbounds %struct.dentry, %struct.dentry* %56, i32 0, i32 2
  %58 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %57, align 8
  %59 = bitcast %struct.nfs_unlinkdata* %58 to i8*
  store i8* %59, i8** %11, align 8
  %60 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %7, align 8
  %61 = load %struct.dentry*, %struct.dentry** %9, align 8
  %62 = getelementptr inbounds %struct.dentry, %struct.dentry* %61, i32 0, i32 2
  store %struct.nfs_unlinkdata* %60, %struct.nfs_unlinkdata** %62, align 8
  %63 = load i32, i32* @DCACHE_NFSFS_RENAMED, align 4
  %64 = load %struct.dentry*, %struct.dentry** %9, align 8
  %65 = getelementptr inbounds %struct.dentry, %struct.dentry* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  store i32 1, i32* %10, align 4
  br label %69

68:                                               ; preds = %48, %41
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %68, %55
  %70 = load %struct.dentry*, %struct.dentry** %9, align 8
  %71 = getelementptr inbounds %struct.dentry, %struct.dentry* %70, i32 0, i32 1
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load %struct.dentry*, %struct.dentry** %9, align 8
  %74 = call i32 @dput(%struct.dentry* %73)
  %75 = load %struct.inode*, %struct.inode** %8, align 8
  %76 = call %struct.TYPE_4__* @NFS_I(%struct.inode* %75)
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = call i32 @up_read_non_owner(i32* %77)
  %79 = load i8*, i8** %11, align 8
  %80 = call i32 @kfree(i8* %79)
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %4, align 4
  br label %89

82:                                               ; preds = %37
  %83 = load %struct.dentry*, %struct.dentry** %9, align 8
  %84 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %7, align 8
  %85 = getelementptr inbounds %struct.nfs_unlinkdata, %struct.nfs_unlinkdata* %84, i32 0, i32 0
  store %struct.dentry* %83, %struct.dentry** %85, align 8
  %86 = load %struct.inode*, %struct.inode** %6, align 8
  %87 = load %struct.nfs_unlinkdata*, %struct.nfs_unlinkdata** %7, align 8
  %88 = call i32 @nfs_do_call_unlink(%struct.inode* %86, %struct.nfs_unlinkdata* %87)
  store i32 1, i32* %4, align 4
  br label %89

89:                                               ; preds = %82, %69, %32
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @down_read_non_owner(i32*) #1

declare dso_local %struct.TYPE_4__* @NFS_I(%struct.inode*) #1

declare dso_local %struct.dentry* @d_alloc_parallel(i32, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @up_read_non_owner(i32*) #1

declare dso_local i32 @d_in_lookup(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @nfs_do_call_unlink(%struct.inode*, %struct.nfs_unlinkdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
