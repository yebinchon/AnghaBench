; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_decoder_new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/intel-pt-decoder/extr_intel-pt-decoder.c_intel_pt_decoder_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_decoder = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.intel_pt_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"timestamp: mtc_shift %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"timestamp: tsc_ctc_ratio_n %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"timestamp: tsc_ctc_ratio_d %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"timestamp: tsc_ctc_mult %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"timestamp: tsc_slip %#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.intel_pt_decoder* @intel_pt_decoder_new(%struct.intel_pt_params* %0) #0 {
  %2 = alloca %struct.intel_pt_decoder*, align 8
  %3 = alloca %struct.intel_pt_params*, align 8
  %4 = alloca %struct.intel_pt_decoder*, align 8
  store %struct.intel_pt_params* %0, %struct.intel_pt_params** %3, align 8
  %5 = load %struct.intel_pt_params*, %struct.intel_pt_params** %3, align 8
  %6 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %5, i32 0, i32 13
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.intel_pt_params*, %struct.intel_pt_params** %3, align 8
  %11 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %10, i32 0, i32 12
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %1
  store %struct.intel_pt_decoder* null, %struct.intel_pt_decoder** %2, align 8
  br label %161

15:                                               ; preds = %9
  %16 = call %struct.intel_pt_decoder* @zalloc(i32 80)
  store %struct.intel_pt_decoder* %16, %struct.intel_pt_decoder** %4, align 8
  %17 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %18 = icmp ne %struct.intel_pt_decoder* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store %struct.intel_pt_decoder* null, %struct.intel_pt_decoder** %2, align 8
  br label %161

20:                                               ; preds = %15
  %21 = load %struct.intel_pt_params*, %struct.intel_pt_params** %3, align 8
  %22 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %21, i32 0, i32 13
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %25 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %24, i32 0, i32 17
  store i64 %23, i64* %25, align 8
  %26 = load %struct.intel_pt_params*, %struct.intel_pt_params** %3, align 8
  %27 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %26, i32 0, i32 12
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %30 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %29, i32 0, i32 16
  store i64 %28, i64* %30, align 8
  %31 = load %struct.intel_pt_params*, %struct.intel_pt_params** %3, align 8
  %32 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %31, i32 0, i32 11
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %35 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %34, i32 0, i32 15
  store i32 %33, i32* %35, align 4
  %36 = load %struct.intel_pt_params*, %struct.intel_pt_params** %3, align 8
  %37 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %40 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %39, i32 0, i32 14
  store i32 %38, i32* %40, align 8
  %41 = load %struct.intel_pt_params*, %struct.intel_pt_params** %3, align 8
  %42 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %45 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %44, i32 0, i32 13
  store i32 %43, i32* %45, align 4
  %46 = load %struct.intel_pt_params*, %struct.intel_pt_params** %3, align 8
  %47 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %50 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %49, i32 0, i32 12
  store i32 %48, i32* %50, align 8
  %51 = load %struct.intel_pt_params*, %struct.intel_pt_params** %3, align 8
  %52 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %55 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %54, i32 0, i32 11
  store i32 %53, i32* %55, align 4
  %56 = load %struct.intel_pt_params*, %struct.intel_pt_params** %3, align 8
  %57 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %60 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %59, i32 0, i32 10
  store i32 %58, i32* %60, align 8
  %61 = load %struct.intel_pt_params*, %struct.intel_pt_params** %3, align 8
  %62 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %65 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %64, i32 0, i32 9
  store i32 %63, i32* %65, align 4
  %66 = load %struct.intel_pt_params*, %struct.intel_pt_params** %3, align 8
  %67 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %70 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %69, i32 0, i32 8
  store i32 %68, i32* %70, align 8
  %71 = load %struct.intel_pt_params*, %struct.intel_pt_params** %3, align 8
  %72 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %75 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 4
  %76 = load %struct.intel_pt_params*, %struct.intel_pt_params** %3, align 8
  %77 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %80 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 8
  %81 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %82 = call i32 @intel_pt_setup_period(%struct.intel_pt_decoder* %81)
  %83 = load %struct.intel_pt_params*, %struct.intel_pt_params** %3, align 8
  %84 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %87 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %89 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = shl i32 1, %90
  %92 = sub nsw i32 %91, 1
  %93 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %94 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.intel_pt_params*, %struct.intel_pt_params** %3, align 8
  %96 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %99 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.intel_pt_params*, %struct.intel_pt_params** %3, align 8
  %101 = getelementptr inbounds %struct.intel_pt_params, %struct.intel_pt_params* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %104 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %106 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %20
  %110 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %111 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %110, i32 0, i32 3
  store i32 0, i32* %111, align 4
  br label %112

112:                                              ; preds = %109, %20
  %113 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %114 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %137

117:                                              ; preds = %112
  %118 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %119 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %122 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = srem i32 %120, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %136, label %126

126:                                              ; preds = %117
  %127 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %128 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %131 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = sdiv i32 %129, %132
  %134 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %135 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 8
  br label %136

136:                                              ; preds = %126, %117
  br label %137

137:                                              ; preds = %136, %112
  %138 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %139 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %138, i32 0, i32 5
  store i32 65536, i32* %139, align 4
  %140 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %141 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @intel_pt_log(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %142)
  %144 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %145 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @intel_pt_log(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %146)
  %148 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %149 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @intel_pt_log(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %150)
  %152 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %153 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @intel_pt_log(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %154)
  %156 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  %157 = getelementptr inbounds %struct.intel_pt_decoder, %struct.intel_pt_decoder* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @intel_pt_log(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %158)
  %160 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %4, align 8
  store %struct.intel_pt_decoder* %160, %struct.intel_pt_decoder** %2, align 8
  br label %161

161:                                              ; preds = %137, %19, %14
  %162 = load %struct.intel_pt_decoder*, %struct.intel_pt_decoder** %2, align 8
  ret %struct.intel_pt_decoder* %162
}

declare dso_local %struct.intel_pt_decoder* @zalloc(i32) #1

declare dso_local i32 @intel_pt_setup_period(%struct.intel_pt_decoder*) #1

declare dso_local i32 @intel_pt_log(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
