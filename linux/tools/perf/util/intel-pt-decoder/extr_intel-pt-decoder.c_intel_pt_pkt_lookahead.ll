; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_pkt_lookahead.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_pkt_lookahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i8*, i32, i64, i64, i64, i64 }
%struct.intel_pt_pkt_info = type { i64, i64, i64, %struct.TYPE_2__, i8*, %struct.intel_pt_decoder* }
%struct.TYPE_2__ = type { i64 }

@INTEL_PT_NEED_MORE_BYTES = common dso_local global i32 0, align 4
@INTEL_PT_PAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_decoder*, i32 (%struct.intel_pt_pkt_info*)*, i8*)* @intel_pt_pkt_lookahead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_pkt_lookahead(%struct.intel_pt_decoder* %0, i32 (%struct.intel_pt_pkt_info*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_pt_decoder*, align 8
  %6 = alloca i32 (%struct.intel_pt_pkt_info*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.intel_pt_pkt_info, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.intel_pt_decoder* %0, %struct.intel_pt_decoder** %5, align 8
  store i32 (%struct.intel_pt_pkt_info*)* %1, i32 (%struct.intel_pt_pkt_info*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %14 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %9, align 8
  %16 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %17 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %20 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %11, align 8
  %22 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %23 = getelementptr inbounds %struct.intel_pt_pkt_info, %struct.intel_pt_pkt_info* %8, i32 0, i32 5
  store %struct.intel_pt_decoder* %22, %struct.intel_pt_decoder** %23, align 8
  %24 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %25 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.intel_pt_pkt_info, %struct.intel_pt_pkt_info* %8, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %29 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.intel_pt_pkt_info, %struct.intel_pt_pkt_info* %8, i32 0, i32 1
  store i64 %30, i64* %31, align 8
  %32 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %5, align 8
  %33 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.intel_pt_pkt_info, %struct.intel_pt_pkt_info* %8, i32 0, i32 2
  store i64 %34, i64* %35, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds %struct.intel_pt_pkt_info, %struct.intel_pt_pkt_info* %8, i32 0, i32 4
  store i8* %36, i8** %37, align 8
  br label %38

38:                                               ; preds = %3, %87
  br label %39

39:                                               ; preds = %75, %38
  %40 = getelementptr inbounds %struct.intel_pt_pkt_info, %struct.intel_pt_pkt_info* %8, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.intel_pt_pkt_info, %struct.intel_pt_pkt_info* %8, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, %41
  store i64 %44, i64* %42, align 8
  %45 = getelementptr inbounds %struct.intel_pt_pkt_info, %struct.intel_pt_pkt_info* %8, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 %46
  store i8* %48, i8** %9, align 8
  %49 = getelementptr inbounds %struct.intel_pt_pkt_info, %struct.intel_pt_pkt_info* %8, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %11, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %11, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %39
  %56 = load i32, i32* @INTEL_PT_NEED_MORE_BYTES, align 4
  store i32 %56, i32* %4, align 4
  br label %92

57:                                               ; preds = %39
  %58 = load i8*, i8** %9, align 8
  %59 = load i64, i64* %11, align 8
  %60 = getelementptr inbounds %struct.intel_pt_pkt_info, %struct.intel_pt_pkt_info* %8, i32 0, i32 3
  %61 = call i32 @intel_pt_get_packet(i8* %58, i64 %59, %struct.TYPE_2__* %60, i32* %10)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* @INTEL_PT_NEED_MORE_BYTES, align 4
  store i32 %65, i32* %4, align 4
  br label %92

66:                                               ; preds = %57
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %4, align 4
  br label %92

71:                                               ; preds = %66
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.intel_pt_pkt_info, %struct.intel_pt_pkt_info* %8, i32 0, i32 1
  store i64 %73, i64* %74, align 8
  br label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.intel_pt_pkt_info, %struct.intel_pt_pkt_info* %8, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @INTEL_PT_PAD, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %39, label %81

81:                                               ; preds = %75
  %82 = load i32 (%struct.intel_pt_pkt_info*)*, i32 (%struct.intel_pt_pkt_info*)** %6, align 8
  %83 = call i32 %82(%struct.intel_pt_pkt_info* %8)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %92

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.intel_pt_pkt_info, %struct.intel_pt_pkt_info* %8, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.intel_pt_pkt_info, %struct.intel_pt_pkt_info* %8, i32 0, i32 2
  store i64 %90, i64* %91, align 8
  br label %38

92:                                               ; preds = %86, %69, %64, %55
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @intel_pt_get_packet(i8*, i64, %struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
