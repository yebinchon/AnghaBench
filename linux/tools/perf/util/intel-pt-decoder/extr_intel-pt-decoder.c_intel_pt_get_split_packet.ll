; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_get_split_packet.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_get_split_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i8*, i64, i8*, i64, i8*, i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@INTEL_PT_PKT_MAX_SZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt_decoder*)* @intel_pt_get_split_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_get_split_packet(%struct.intel_pt_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_pt_decoder*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.intel_pt_decoder* %0, %struct.intel_pt_decoder** %3, align 8
  %9 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %10 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %4, align 8
  %12 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %13 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %16 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %20 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @memcpy(i8* %18, i8* %21, i64 %22)
  %24 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %25 = call i32 @intel_pt_get_data(%struct.intel_pt_decoder* %24, i32 0)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %1
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %31 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = add i64 %32, %29
  store i64 %33, i64* %31, align 8
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  br label %41

38:                                               ; preds = %28
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  br label %41

41:                                               ; preds = %38, %36
  %42 = phi i32 [ %37, %36 ], [ %40, %38 ]
  store i32 %42, i32* %2, align 4
  br label %132

43:                                               ; preds = %1
  %44 = load i64, i64* @INTEL_PT_PKT_MAX_SZ, align 8
  %45 = load i64, i64* %6, align 8
  %46 = sub i64 %44, %45
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %49 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ugt i64 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %54 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %7, align 8
  br label %56

56:                                               ; preds = %52, %43
  %57 = load i8*, i8** %4, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %61 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @memcpy(i8* %59, i8* %62, i64 %63)
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %6, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %6, align 8
  %68 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %69 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %72 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %71, i32 0, i32 8
  store i32 %70, i32* %72, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = load i64, i64* %6, align 8
  %75 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %76 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %75, i32 0, i32 7
  %77 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %78 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %77, i32 0, i32 6
  %79 = call i32 @intel_pt_get_packet(i8* %73, i64 %74, i32* %76, i32* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i64, i64* %5, align 8
  %82 = trunc i64 %81 to i32
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %56
  %85 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %86 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %89 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  %90 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %91 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %94 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %93, i32 0, i32 5
  store i64 %92, i64* %94, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %97 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  %98 = load i64, i64* %5, align 8
  %99 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %100 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  %101 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %102 = call i32 @intel_pt_bad_packet(%struct.intel_pt_decoder* %101)
  store i32 %102, i32* %2, align 4
  br label %132

103:                                              ; preds = %56
  %104 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %105 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* %5, align 8
  %110 = sub i64 %108, %109
  %111 = getelementptr inbounds i8, i8* %106, i64 %110
  %112 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %113 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %112, i32 0, i32 4
  store i8* %111, i8** %113, align 8
  %114 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %115 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %5, align 8
  %120 = sub i64 %118, %119
  %121 = sub i64 %116, %120
  %122 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %123 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %122, i32 0, i32 5
  store i64 %121, i64* %123, align 8
  %124 = load i8*, i8** %4, align 8
  %125 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %126 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %125, i32 0, i32 2
  store i8* %124, i8** %126, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %3, align 8
  %130 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %129, i32 0, i32 1
  store i64 %128, i64* %130, align 8
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %103, %84, %41
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @intel_pt_get_data(%struct.intel_pt_decoder*, i32) #1

declare dso_local i32 @intel_pt_get_packet(i8*, i64, i32*, i32*) #1

declare dso_local i32 @intel_pt_bad_packet(%struct.intel_pt_decoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
