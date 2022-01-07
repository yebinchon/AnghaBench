; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmscan.c_try_to_free_pages.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmscan.c_try_to_free_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zonelist = type { i32 }
%struct.scan_control = type { i32, i64, i32, i32, i32, i32, i32, i32*, i32, i32 }

@DEF_PRIORITY = common dso_local global i64 0, align 8
@laptop_mode = common dso_local global i32 0, align 4
@SWAP_CLUSTER_MAX = common dso_local global i32 0, align 4
@MAX_ORDER = common dso_local global i64 0, align 8
@S8_MAX = common dso_local global i64 0, align 8
@MAX_NR_ZONES = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @try_to_free_pages(%struct.zonelist* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.zonelist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.scan_control, align 8
  store %struct.zonelist* %0, %struct.zonelist** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 0
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 1
  %15 = load i64, i64* @DEF_PRIORITY, align 8
  store i64 %15, i64* %14, align 8
  %16 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 2
  %17 = load i32, i32* @laptop_mode, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %16, align 8
  %21 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 3
  store i32 1, i32* %21, align 4
  %22 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 4
  store i32 1, i32* %22, align 8
  %23 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 5
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @current_gfp_context(i32 %24)
  store i32 %25, i32* %23, align 4
  %26 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 6
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 7
  %28 = load i32*, i32** %9, align 8
  store i32* %28, i32** %27, align 8
  %29 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @gfp_zone(i32 %30)
  store i32 %31, i32* %29, align 8
  %32 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 9
  %33 = load i32, i32* @SWAP_CLUSTER_MAX, align 4
  store i32 %33, i32* %32, align 4
  %34 = load i64, i64* @MAX_ORDER, align 8
  %35 = load i64, i64* @S8_MAX, align 8
  %36 = icmp sgt i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUILD_BUG_ON(i32 %37)
  %39 = load i64, i64* @DEF_PRIORITY, align 8
  %40 = load i64, i64* @S8_MAX, align 8
  %41 = icmp sgt i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUILD_BUG_ON(i32 %42)
  %44 = load i64, i64* @MAX_NR_ZONES, align 8
  %45 = load i64, i64* @S8_MAX, align 8
  %46 = icmp sgt i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUILD_BUG_ON(i32 %47)
  %49 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.zonelist*, %struct.zonelist** %6, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i64 @throttle_direct_reclaim(i32 %50, %struct.zonelist* %51, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %4
  store i64 1, i64* %5, align 8
  br label %71

56:                                               ; preds = %4
  %57 = load i32, i32* @current, align 4
  %58 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 6
  %59 = call i32 @set_task_reclaim_state(i32 %57, i32* %58)
  %60 = load i32, i32* %7, align 4
  %61 = getelementptr inbounds %struct.scan_control, %struct.scan_control* %11, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @trace_mm_vmscan_direct_reclaim_begin(i32 %60, i32 %62)
  %64 = load %struct.zonelist*, %struct.zonelist** %6, align 8
  %65 = call i64 @do_try_to_free_pages(%struct.zonelist* %64, %struct.scan_control* %11)
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @trace_mm_vmscan_direct_reclaim_end(i64 %66)
  %68 = load i32, i32* @current, align 4
  %69 = call i32 @set_task_reclaim_state(i32 %68, i32* null)
  %70 = load i64, i64* %10, align 8
  store i64 %70, i64* %5, align 8
  br label %71

71:                                               ; preds = %56, %55
  %72 = load i64, i64* %5, align 8
  ret i64 %72
}

declare dso_local i32 @current_gfp_context(i32) #1

declare dso_local i32 @gfp_zone(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @throttle_direct_reclaim(i32, %struct.zonelist*, i32*) #1

declare dso_local i32 @set_task_reclaim_state(i32, i32*) #1

declare dso_local i32 @trace_mm_vmscan_direct_reclaim_begin(i32, i32) #1

declare dso_local i64 @do_try_to_free_pages(%struct.zonelist*, %struct.scan_control*) #1

declare dso_local i32 @trace_mm_vmscan_direct_reclaim_end(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
