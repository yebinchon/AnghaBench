; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_get_split_psb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_get_split_psb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i32, i64, i64, i64, i64, i64 }

@INTEL_PT_PSB_STR = common dso_local global i32 0, align 4
@INTEL_PT_PSB_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_decoder*, i32)* @intel_pt_get_split_psb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_get_split_psb(%struct.intel_pt_decoder* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_pt_decoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_pt_decoder* %0, %struct.intel_pt_decoder** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %9 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %12 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %14, %10
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %12, align 8
  %17 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %18 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %20 = call i32 @intel_pt_get_next_data(%struct.intel_pt_decoder* %19, i32 0)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %68

25:                                               ; preds = %2
  %26 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @intel_pt_rest_psb(%struct.intel_pt_decoder* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %68

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %35 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %39 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %45 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %44, i32 0, i32 5
  store i64 %43, i64* %45, align 8
  %46 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %47 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %48, %50
  %52 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %53 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %52, i32 0, i32 4
  store i64 %51, i64* %53, align 8
  %54 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %55 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @INTEL_PT_PSB_STR, align 4
  %58 = load i64, i64* @INTEL_PT_PSB_LEN, align 8
  %59 = call i32 @memcpy(i64 %56, i32 %57, i64 %58)
  %60 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %61 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %64 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %63, i32 0, i32 3
  store i64 %62, i64* %64, align 8
  %65 = load i64, i64* @INTEL_PT_PSB_LEN, align 8
  %66 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %67 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %32, %31, %23
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @intel_pt_get_next_data(%struct.intel_pt_decoder*, i32) #1

declare dso_local i32 @intel_pt_rest_psb(%struct.intel_pt_decoder*, i32) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
