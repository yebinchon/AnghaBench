; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_readahead.c_page_cache_async_readahead.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_readahead.c_page_cache_async_readahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.file_ra_state = type { i32 }
%struct.file = type { i32 }
%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @page_cache_async_readahead(%struct.address_space* %0, %struct.file_ra_state* %1, %struct.file* %2, %struct.page* %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.file_ra_state*, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.address_space* %0, %struct.address_space** %7, align 8
  store %struct.file_ra_state* %1, %struct.file_ra_state** %8, align 8
  store %struct.file* %2, %struct.file** %9, align 8
  store %struct.page* %3, %struct.page** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %13 = load %struct.file_ra_state*, %struct.file_ra_state** %8, align 8
  %14 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %6
  br label %43

18:                                               ; preds = %6
  %19 = load %struct.page*, %struct.page** %10, align 8
  %20 = call i64 @PageWriteback(%struct.page* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %43

23:                                               ; preds = %18
  %24 = load %struct.page*, %struct.page** %10, align 8
  %25 = call i32 @ClearPageReadahead(%struct.page* %24)
  %26 = load %struct.address_space*, %struct.address_space** %7, align 8
  %27 = getelementptr inbounds %struct.address_space, %struct.address_space* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @inode_read_congested(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %43

32:                                               ; preds = %23
  %33 = call i64 (...) @blk_cgroup_congested()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %43

36:                                               ; preds = %32
  %37 = load %struct.address_space*, %struct.address_space** %7, align 8
  %38 = load %struct.file_ra_state*, %struct.file_ra_state** %8, align 8
  %39 = load %struct.file*, %struct.file** %9, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @ondemand_readahead(%struct.address_space* %37, %struct.file_ra_state* %38, %struct.file* %39, i32 1, i32 %40, i64 %41)
  br label %43

43:                                               ; preds = %36, %35, %31, %22, %17
  ret void
}

declare dso_local i64 @PageWriteback(%struct.page*) #1

declare dso_local i32 @ClearPageReadahead(%struct.page*) #1

declare dso_local i64 @inode_read_congested(i32) #1

declare dso_local i64 @blk_cgroup_congested(...) #1

declare dso_local i32 @ondemand_readahead(%struct.address_space*, %struct.file_ra_state*, %struct.file*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
