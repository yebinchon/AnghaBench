; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_scan_for_psb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_scan_for_psb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i32, i8*, i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Scanning for PSB\0A\00", align 1
@INTEL_PT_PSB_STR = common dso_local global i32 0, align 4
@INTEL_PT_PSB_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_decoder*)* @intel_pt_scan_for_psb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_scan_for_psb(%struct.intel_pt_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_pt_decoder*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_pt_decoder* %0, %struct.intel_pt_decoder** %3, align 8
  %7 = call i32 @intel_pt_log(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %1, %59
  %9 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %10 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %8
  %14 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %15 = call i32 @intel_pt_get_next_data(%struct.intel_pt_decoder* %14, i32 0)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %72

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %8
  %22 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %23 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %26 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @INTEL_PT_PSB_STR, align 4
  %29 = load i32, i32* @INTEL_PT_PSB_LEN, align 4
  %30 = call i8* @memmem(i32 %24, i64 %27, i32 %28, i32 %29)
  store i8* %30, i8** %4, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %60, label %33

33:                                               ; preds = %21
  %34 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %35 = call i32 @intel_pt_part_psb(%struct.intel_pt_decoder* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @intel_pt_get_split_psb(%struct.intel_pt_decoder* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %72

46:                                               ; preds = %38
  br label %59

47:                                               ; preds = %33
  %48 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %49 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %52 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %50
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 8
  %57 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %58 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %47, %46
  br label %8

60:                                               ; preds = %21
  %61 = load i8*, i8** %4, align 8
  %62 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %63 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = sub i64 0, %65
  %67 = getelementptr inbounds i8, i8* %61, i64 %66
  %68 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %69 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %71 = call i32 @intel_pt_get_next_packet(%struct.intel_pt_decoder* %70)
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %60, %44, %18
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @intel_pt_log(i8*) #1

declare dso_local i32 @intel_pt_get_next_data(%struct.intel_pt_decoder*, i32) #1

declare dso_local i8* @memmem(i32, i64, i32, i32) #1

declare dso_local i32 @intel_pt_part_psb(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_get_split_psb(%struct.intel_pt_decoder*, i32) #1

declare dso_local i32 @intel_pt_get_next_packet(%struct.intel_pt_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
