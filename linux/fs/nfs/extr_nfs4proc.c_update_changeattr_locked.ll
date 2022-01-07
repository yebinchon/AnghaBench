; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_update_changeattr_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_update_changeattr_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nfs4_change_info = type { i64, i32, i64 }
%struct.nfs_inode = type { i64, i64, i32, i32 }

@NFS_INO_INVALID_CTIME = common dso_local global i64 0, align 8
@NFS_INO_INVALID_MTIME = common dso_local global i64 0, align 8
@NFS_INO_INVALID_DATA = common dso_local global i64 0, align 8
@NFS_INO_REVAL_PAGECACHE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@NFS_INO_INVALID_ACCESS = common dso_local global i32 0, align 4
@NFS_INO_INVALID_ACL = common dso_local global i32 0, align 4
@NFS_INO_INVALID_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.nfs4_change_info*, i64, i64)* @update_changeattr_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_changeattr_locked(%struct.inode* %0, %struct.nfs4_change_info* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.nfs4_change_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nfs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.nfs4_change_info* %1, %struct.nfs4_change_info** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call %struct.nfs_inode* @NFS_I(%struct.inode* %10)
  store %struct.nfs_inode* %11, %struct.nfs_inode** %9, align 8
  %12 = load i64, i64* @NFS_INO_INVALID_CTIME, align 8
  %13 = load i64, i64* @NFS_INO_INVALID_MTIME, align 8
  %14 = or i64 %12, %13
  %15 = load i64, i64* @NFS_INO_INVALID_DATA, align 8
  %16 = or i64 %14, %15
  %17 = load i64, i64* %8, align 8
  %18 = or i64 %16, %17
  %19 = load %struct.nfs_inode*, %struct.nfs_inode** %9, align 8
  %20 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = or i64 %21, %18
  store i64 %22, i64* %20, align 8
  %23 = load %struct.nfs4_change_info*, %struct.nfs4_change_info** %6, align 8
  %24 = getelementptr inbounds %struct.nfs4_change_info, %struct.nfs4_change_info* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %4
  %28 = load %struct.nfs4_change_info*, %struct.nfs4_change_info** %6, align 8
  %29 = getelementptr inbounds %struct.nfs4_change_info, %struct.nfs4_change_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = call i64 @inode_peek_iversion_raw(%struct.inode* %31)
  %33 = icmp eq i64 %30, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = load i64, i64* @NFS_INO_REVAL_PAGECACHE, align 8
  %36 = xor i64 %35, -1
  %37 = load %struct.nfs_inode*, %struct.nfs_inode** %9, align 8
  %38 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = and i64 %39, %36
  store i64 %40, i64* %38, align 8
  %41 = load i32, i32* @jiffies, align 4
  %42 = load %struct.nfs_inode*, %struct.nfs_inode** %9, align 8
  %43 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  br label %63

44:                                               ; preds = %27, %4
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = call i32 @nfs_force_lookup_revalidate(%struct.inode* %45)
  %47 = load %struct.nfs4_change_info*, %struct.nfs4_change_info** %6, align 8
  %48 = getelementptr inbounds %struct.nfs4_change_info, %struct.nfs4_change_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = call i64 @inode_peek_iversion_raw(%struct.inode* %50)
  %52 = icmp ne i64 %49, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %44
  %54 = load i32, i32* @NFS_INO_INVALID_ACCESS, align 4
  %55 = load i32, i32* @NFS_INO_INVALID_ACL, align 4
  %56 = or i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = load %struct.nfs_inode*, %struct.nfs_inode** %9, align 8
  %59 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = or i64 %60, %57
  store i64 %61, i64* %59, align 8
  br label %62

62:                                               ; preds = %53, %44
  br label %63

63:                                               ; preds = %62, %34
  %64 = load %struct.inode*, %struct.inode** %5, align 8
  %65 = load %struct.nfs4_change_info*, %struct.nfs4_change_info** %6, align 8
  %66 = getelementptr inbounds %struct.nfs4_change_info, %struct.nfs4_change_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @inode_set_iversion_raw(%struct.inode* %64, i32 %67)
  %69 = load i64, i64* %7, align 8
  %70 = load %struct.nfs_inode*, %struct.nfs_inode** %9, align 8
  %71 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = call i32 (...) @nfs_inc_attr_generation_counter()
  %73 = load %struct.nfs_inode*, %struct.nfs_inode** %9, align 8
  %74 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @NFS_INO_INVALID_CHANGE, align 4
  %76 = xor i32 %75, -1
  %77 = sext i32 %76 to i64
  %78 = load %struct.nfs_inode*, %struct.nfs_inode** %9, align 8
  %79 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = and i64 %80, %77
  store i64 %81, i64* %79, align 8
  %82 = load %struct.inode*, %struct.inode** %5, align 8
  %83 = call i32 @nfs_fscache_invalidate(%struct.inode* %82)
  ret void
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i64 @inode_peek_iversion_raw(%struct.inode*) #1

declare dso_local i32 @nfs_force_lookup_revalidate(%struct.inode*) #1

declare dso_local i32 @inode_set_iversion_raw(%struct.inode*, i32) #1

declare dso_local i32 @nfs_inc_attr_generation_counter(...) #1

declare dso_local i32 @nfs_fscache_invalidate(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
