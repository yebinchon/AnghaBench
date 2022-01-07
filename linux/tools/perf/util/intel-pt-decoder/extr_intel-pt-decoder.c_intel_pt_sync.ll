; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_sync.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i32, i32, i32, i32, %struct.TYPE_2__, i64, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@INTEL_PT_STATE_NO_IP = common dso_local global i32 0, align 4
@INTEL_PT_STATE_IN_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_decoder*)* @intel_pt_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_sync(%struct.intel_pt_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_pt_decoder*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_pt_decoder* %0, %struct.intel_pt_decoder** %3, align 8
  %5 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %6 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %5, i32 0, i32 0
  store i32 0, i32* %6, align 8
  %7 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %8 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %7, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %10 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %9, i32 0, i32 2
  store i32 0, i32* %10, align 8
  %11 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %12 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %11, i32 0, i32 7
  store i64 0, i64* %12, align 8
  %13 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %14 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %16 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %15, i32 0, i32 6
  %17 = call i32 @intel_pt_clear_stack(i32* %16)
  %18 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %19 = call i32 @intel_pt_scan_for_psb(%struct.intel_pt_decoder* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %52

24:                                               ; preds = %1
  %25 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %26 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %25, i32 0, i32 2
  store i32 1, i32* %26, align 8
  %27 = load i32, i32* @INTEL_PT_STATE_NO_IP, align 4
  %28 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %29 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %31 = call i32 @intel_pt_walk_psb(%struct.intel_pt_decoder* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %52

36:                                               ; preds = %24
  %37 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %38 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %43 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @INTEL_PT_STATE_IN_SYNC, align 4
  %46 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %47 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  br label %51

48:                                               ; preds = %36
  %49 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %50 = call i32 @intel_pt_sync_ip(%struct.intel_pt_decoder* %49)
  store i32 %50, i32* %2, align 4
  br label %52

51:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %48, %34, %22
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @intel_pt_clear_stack(i32*) #1

declare dso_local i32 @intel_pt_scan_for_psb(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_walk_psb(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_sync_ip(%struct.intel_pt_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
