; ModuleID = '/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlbfs_punch_hole.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlbfs_punch_hole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.address_space* }
%struct.address_space = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hstate = type { i32 }
%struct.hugetlbfs_inode_info = type { i32 }

@F_SEAL_WRITE = common dso_local global i32 0, align 4
@F_SEAL_FUTURE_WRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, i32, i32)* @hugetlbfs_punch_hole to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hugetlbfs_punch_hole(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hstate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.address_space*, align 8
  %13 = alloca %struct.hugetlbfs_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = call %struct.hstate* @hstate_inode(%struct.inode* %14)
  store %struct.hstate* %15, %struct.hstate** %8, align 8
  %16 = load %struct.hstate*, %struct.hstate** %8, align 8
  %17 = call i32 @huge_page_size(%struct.hstate* %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @round_up(i32 %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @round_down(i32 %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %77

29:                                               ; preds = %3
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load %struct.address_space*, %struct.address_space** %31, align 8
  store %struct.address_space* %32, %struct.address_space** %12, align 8
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = call %struct.hugetlbfs_inode_info* @HUGETLBFS_I(%struct.inode* %33)
  store %struct.hugetlbfs_inode_info* %34, %struct.hugetlbfs_inode_info** %13, align 8
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = call i32 @inode_lock(%struct.inode* %35)
  %37 = load %struct.hugetlbfs_inode_info*, %struct.hugetlbfs_inode_info** %13, align 8
  %38 = getelementptr inbounds %struct.hugetlbfs_inode_info, %struct.hugetlbfs_inode_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @F_SEAL_WRITE, align 4
  %41 = load i32, i32* @F_SEAL_FUTURE_WRITE, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %29
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = call i32 @inode_unlock(%struct.inode* %46)
  %48 = load i64, i64* @EPERM, align 8
  %49 = sub nsw i64 0, %48
  store i64 %49, i64* %4, align 8
  br label %78

50:                                               ; preds = %29
  %51 = load %struct.address_space*, %struct.address_space** %12, align 8
  %52 = call i32 @i_mmap_lock_write(%struct.address_space* %51)
  %53 = load %struct.address_space*, %struct.address_space** %12, align 8
  %54 = getelementptr inbounds %struct.address_space, %struct.address_space* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @RB_EMPTY_ROOT(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %50
  %59 = load %struct.address_space*, %struct.address_space** %12, align 8
  %60 = getelementptr inbounds %struct.address_space, %struct.address_space* %59, i32 0, i32 0
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @PAGE_SHIFT, align 4
  %63 = ashr i32 %61, %62
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @PAGE_SHIFT, align 4
  %66 = ashr i32 %64, %65
  %67 = call i32 @hugetlb_vmdelete_list(%struct.TYPE_2__* %60, i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %58, %50
  %69 = load %struct.address_space*, %struct.address_space** %12, align 8
  %70 = call i32 @i_mmap_unlock_write(%struct.address_space* %69)
  %71 = load %struct.inode*, %struct.inode** %5, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @remove_inode_hugepages(%struct.inode* %71, i32 %72, i32 %73)
  %75 = load %struct.inode*, %struct.inode** %5, align 8
  %76 = call i32 @inode_unlock(%struct.inode* %75)
  br label %77

77:                                               ; preds = %68, %3
  store i64 0, i64* %4, align 8
  br label %78

78:                                               ; preds = %77, %45
  %79 = load i64, i64* %4, align 8
  ret i64 %79
}

declare dso_local %struct.hstate* @hstate_inode(%struct.inode*) #1

declare dso_local i32 @huge_page_size(%struct.hstate*) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local %struct.hugetlbfs_inode_info* @HUGETLBFS_I(%struct.inode*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @i_mmap_lock_write(%struct.address_space*) #1

declare dso_local i32 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i32 @hugetlb_vmdelete_list(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @i_mmap_unlock_write(%struct.address_space*) #1

declare dso_local i32 @remove_inode_hugepages(%struct.inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
