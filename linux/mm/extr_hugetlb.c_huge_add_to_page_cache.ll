; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_huge_add_to_page_cache.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_huge_add_to_page_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.hstate = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @huge_add_to_page_cache(%struct.page* %0, %struct.address_space* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.hstate*, align 8
  %10 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.address_space* %1, %struct.address_space** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.address_space*, %struct.address_space** %6, align 8
  %12 = getelementptr inbounds %struct.address_space, %struct.address_space* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %8, align 8
  %14 = load %struct.inode*, %struct.inode** %8, align 8
  %15 = call %struct.hstate* @hstate_inode(%struct.inode* %14)
  store %struct.hstate* %15, %struct.hstate** %9, align 8
  %16 = load %struct.page*, %struct.page** %5, align 8
  %17 = load %struct.address_space*, %struct.address_space** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32 @add_to_page_cache(%struct.page* %16, %struct.address_space* %17, i32 %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  br label %44

25:                                               ; preds = %3
  %26 = load %struct.page*, %struct.page** %5, align 8
  %27 = call i32 @ClearPagePrivate(%struct.page* %26)
  %28 = load %struct.page*, %struct.page** %5, align 8
  %29 = call i32 @set_page_dirty(%struct.page* %28)
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load %struct.hstate*, %struct.hstate** %9, align 8
  %34 = call i64 @blocks_per_huge_page(%struct.hstate* %33)
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %34
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 4
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock(i32* %42)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %25, %23
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.hstate* @hstate_inode(%struct.inode*) #1

declare dso_local i32 @add_to_page_cache(%struct.page*, %struct.address_space*, i32, i32) #1

declare dso_local i32 @ClearPagePrivate(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @blocks_per_huge_page(%struct.hstate*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
