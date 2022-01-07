; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_sync_ip.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_sync_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i8*, i32 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@INTEL_PT_STATE_IN_SYNC = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"Scanning for full IP\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Setting IP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_decoder*)* @intel_pt_sync_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_sync_ip(%struct.intel_pt_decoder* %0) #0 {
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
  %12 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %11, i32 0, i32 3
  store i32 0, i32* %12, align 4
  %13 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %14 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %13, i32 0, i32 4
  store i32 0, i32* %14, align 8
  %15 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %16 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %15, i32 0, i32 5
  store i32 0, i32* %16, align 4
  %17 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %18 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %1
  %22 = load i8*, i8** @INTEL_PT_STATE_IN_SYNC, align 8
  %23 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %24 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %23, i32 0, i32 9
  store i8* %22, i8** %24, align 8
  %25 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %26 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %25, i32 0, i32 6
  store i32 0, i32* %26, align 8
  %27 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %28 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %27, i32 0, i32 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  store i32 0, i32* %2, align 4
  br label %57

30:                                               ; preds = %1
  %31 = call i32 @intel_pt_log(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %33 = call i32 @intel_pt_walk_to_ip(%struct.intel_pt_decoder* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %57

38:                                               ; preds = %30
  %39 = load i8*, i8** @INTEL_PT_STATE_IN_SYNC, align 8
  %40 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %41 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %40, i32 0, i32 9
  store i8* %39, i8** %41, align 8
  %42 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %43 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %42, i32 0, i32 6
  store i32 0, i32* %43, align 8
  %44 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %45 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %44, i32 0, i32 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %48 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %51 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %50, i32 0, i32 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %54 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @intel_pt_log_to(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %38, %36, %21
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @intel_pt_log(i8*) #1

declare dso_local i32 @intel_pt_walk_to_ip(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_log_to(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
