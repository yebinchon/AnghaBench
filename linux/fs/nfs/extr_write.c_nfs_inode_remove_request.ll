; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_inode_remove_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_inode_remove_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32, i64, %struct.nfs_page* }
%struct.address_space = type { i32, %struct.inode* }
%struct.inode = type { i32 }
%struct.nfs_inode = type { i32 }

@PG_REMOVE = common dso_local global i32 0, align 4
@PG_MAPPED = common dso_local global i32 0, align 4
@PG_INODE_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_page*)* @nfs_inode_remove_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs_inode_remove_request(%struct.nfs_page* %0) #0 {
  %2 = alloca %struct.nfs_page*, align 8
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nfs_inode*, align 8
  %6 = alloca %struct.nfs_page*, align 8
  store %struct.nfs_page* %0, %struct.nfs_page** %2, align 8
  %7 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %8 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = call %struct.address_space* @page_file_mapping(i64 %9)
  store %struct.address_space* %10, %struct.address_space** %3, align 8
  %11 = load %struct.address_space*, %struct.address_space** %3, align 8
  %12 = getelementptr inbounds %struct.address_space, %struct.address_space* %11, i32 0, i32 1
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %4, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.nfs_inode* @NFS_I(%struct.inode* %14)
  store %struct.nfs_inode* %15, %struct.nfs_inode** %5, align 8
  %16 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %17 = load i32, i32* @PG_REMOVE, align 4
  %18 = call i64 @nfs_page_group_sync_on_bit(%struct.nfs_page* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %60

20:                                               ; preds = %1
  %21 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %22 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %21, i32 0, i32 2
  %23 = load %struct.nfs_page*, %struct.nfs_page** %22, align 8
  store %struct.nfs_page* %23, %struct.nfs_page** %6, align 8
  %24 = load %struct.address_space*, %struct.address_space** %3, align 8
  %25 = getelementptr inbounds %struct.address_space, %struct.address_space* %24, i32 0, i32 0
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %28 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %20
  %32 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %33 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @PageSwapCache(i64 %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %31, %20
  %39 = phi i1 [ false, %20 ], [ %37, %31 ]
  %40 = zext i1 %39 to i32
  %41 = call i64 @likely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %45 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @set_page_private(i64 %46, i32 0)
  %48 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %49 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @ClearPagePrivate(i64 %50)
  %52 = load i32, i32* @PG_MAPPED, align 4
  %53 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %54 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %53, i32 0, i32 0
  %55 = call i32 @clear_bit(i32 %52, i32* %54)
  br label %56

56:                                               ; preds = %43, %38
  %57 = load %struct.address_space*, %struct.address_space** %3, align 8
  %58 = getelementptr inbounds %struct.address_space, %struct.address_space* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock(i32* %58)
  br label %60

60:                                               ; preds = %56, %1
  %61 = load i32, i32* @PG_INODE_REF, align 4
  %62 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %63 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %62, i32 0, i32 0
  %64 = call i64 @test_and_clear_bit(i32 %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  %68 = call i32 @nfs_release_request(%struct.nfs_page* %67)
  %69 = load %struct.nfs_inode*, %struct.nfs_inode** %5, align 8
  %70 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %69, i32 0, i32 0
  %71 = call i32 @atomic_long_dec(i32* %70)
  br label %72

72:                                               ; preds = %66, %60
  ret void
}

declare dso_local %struct.address_space* @page_file_mapping(i64) #1

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i64 @nfs_page_group_sync_on_bit(%struct.nfs_page*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @PageSwapCache(i64) #1

declare dso_local i32 @set_page_private(i64, i32) #1

declare dso_local i32 @ClearPagePrivate(i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @nfs_release_request(%struct.nfs_page*) #1

declare dso_local i32 @atomic_long_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
