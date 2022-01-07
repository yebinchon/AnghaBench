; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_readahead.c_page_cache_sync_readahead.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_readahead.c_page_cache_sync_readahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.file_ra_state = type { i32 }
%struct.file = type { i32 }

@FMODE_RANDOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @page_cache_sync_readahead(%struct.address_space* %0, %struct.file_ra_state* %1, %struct.file* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.file_ra_state*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.address_space* %0, %struct.address_space** %6, align 8
  store %struct.file_ra_state* %1, %struct.file_ra_state** %7, align 8
  store %struct.file* %2, %struct.file** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %11 = load %struct.file_ra_state*, %struct.file_ra_state** %7, align 8
  %12 = getelementptr inbounds %struct.file_ra_state, %struct.file_ra_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  br label %43

16:                                               ; preds = %5
  %17 = call i64 (...) @blk_cgroup_congested()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %43

20:                                               ; preds = %16
  %21 = load %struct.file*, %struct.file** %8, align 8
  %22 = icmp ne %struct.file* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load %struct.file*, %struct.file** %8, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @FMODE_RANDOM, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.address_space*, %struct.address_space** %6, align 8
  %32 = load %struct.file*, %struct.file** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @force_page_cache_readahead(%struct.address_space* %31, %struct.file* %32, i32 %33, i64 %34)
  br label %43

36:                                               ; preds = %23, %20
  %37 = load %struct.address_space*, %struct.address_space** %6, align 8
  %38 = load %struct.file_ra_state*, %struct.file_ra_state** %7, align 8
  %39 = load %struct.file*, %struct.file** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @ondemand_readahead(%struct.address_space* %37, %struct.file_ra_state* %38, %struct.file* %39, i32 0, i32 %40, i64 %41)
  br label %43

43:                                               ; preds = %36, %30, %19, %15
  ret void
}

declare dso_local i64 @blk_cgroup_congested(...) #1

declare dso_local i32 @force_page_cache_readahead(%struct.address_space*, %struct.file*, i32, i64) #1

declare dso_local i32 @ondemand_readahead(%struct.address_space*, %struct.file_ra_state*, %struct.file*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
