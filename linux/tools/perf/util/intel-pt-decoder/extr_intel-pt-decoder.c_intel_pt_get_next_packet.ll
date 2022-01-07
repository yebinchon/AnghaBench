; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_get_next_packet.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_get_next_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i64, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@INTEL_PT_NEED_MORE_BYTES = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@INTEL_PT_PKT_MAX_SZ = common dso_local global i64 0, align 8
@INTEL_PT_PAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_decoder*)* @intel_pt_get_next_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_get_next_packet(%struct.intel_pt_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_pt_decoder*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_pt_decoder* %0, %struct.intel_pt_decoder** %3, align 8
  %5 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %6 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %5, i32 0, i32 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %10 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  br label %11

11:                                               ; preds = %103, %1
  %12 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %13 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %16 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %20 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %23 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %27 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %31 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %32, %29
  store i64 %33, i64* %31, align 8
  %34 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %35 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %11
  %39 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %40 = call i32 @intel_pt_get_next_data(%struct.intel_pt_decoder* %39, i32 0)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %111

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %11
  %47 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %48 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %51 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %50, i32 0, i32 9
  store i32 %49, i32* %51, align 8
  %52 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %53 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %56 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %59 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %58, i32 0, i32 8
  %60 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %61 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %60, i32 0, i32 7
  %62 = call i32 @intel_pt_get_packet(i32 %54, i64 %57, %struct.TYPE_2__* %59, i32* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @INTEL_PT_NEED_MORE_BYTES, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %88

66:                                               ; preds = %46
  %67 = load i32, i32* @BITS_PER_LONG, align 4
  %68 = icmp eq i32 %67, 32
  br i1 %68, label %69, label %88

69:                                               ; preds = %66
  %70 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %71 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @INTEL_PT_PKT_MAX_SZ, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %69
  %76 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %77 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %75
  %81 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %82 = call i32 @intel_pt_get_split_packet(%struct.intel_pt_decoder* %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %111

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %75, %69, %66, %46
  %89 = load i32, i32* %4, align 4
  %90 = icmp sle i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %93 = call i32 @intel_pt_bad_packet(%struct.intel_pt_decoder* %92)
  store i32 %93, i32* %2, align 4
  br label %111

94:                                               ; preds = %88
  %95 = load i32, i32* %4, align 4
  %96 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %97 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* %4, align 4
  %99 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %100 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %102 = call i32 @intel_pt_decoder_log_packet(%struct.intel_pt_decoder* %101)
  br label %103

103:                                              ; preds = %94
  %104 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %105 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %104, i32 0, i32 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @INTEL_PT_PAD, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %11, label %110

110:                                              ; preds = %103
  store i32 0, i32* %2, align 4
  br label %111

111:                                              ; preds = %110, %91, %85, %43
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @intel_pt_get_next_data(%struct.intel_pt_decoder*, i32) #1

declare dso_local i32 @intel_pt_get_packet(i32, i64, %struct.TYPE_2__*, i32*) #1

declare dso_local i32 @intel_pt_get_split_packet(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_bad_packet(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_decoder_log_packet(%struct.intel_pt_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
