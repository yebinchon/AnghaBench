; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_mode_tsx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_mode_tsx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@INTEL_PT_IN_TX = common dso_local global i32 0, align 4
@INTEL_PT_ABORT_TX = common dso_local global i32 0, align 4
@INTEL_PT_FUP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"ERROR: Missing FUP after MODE.TSX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_decoder*, i32*)* @intel_pt_mode_tsx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_mode_tsx(%struct.intel_pt_decoder* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_pt_decoder*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_pt_decoder* %0, %struct.intel_pt_decoder** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %9 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @INTEL_PT_IN_TX, align 4
  %13 = load i32, i32* @INTEL_PT_ABORT_TX, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %17 = call i32 @intel_pt_get_next_packet(%struct.intel_pt_decoder* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %52

22:                                               ; preds = %2
  %23 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %24 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @INTEL_PT_FUP, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %22
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %32 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %34 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %36 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @INTEL_PT_ABORT_TX, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %29
  %42 = load i32*, i32** %5, align 8
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %41, %29
  br label %51

44:                                               ; preds = %22
  %45 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %46 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @intel_pt_log_at(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %50 = call i32 @intel_pt_update_in_tx(%struct.intel_pt_decoder* %49)
  br label %51

51:                                               ; preds = %44, %43
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %20
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @intel_pt_get_next_packet(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_log_at(i8*, i32) #1

declare dso_local i32 @intel_pt_update_in_tx(%struct.intel_pt_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
