; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/cs-etm-decoder/extr_cs-etm-decoder.c_cs_etm_decoder__process_data_block.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/cs-etm-decoder/extr_cs-etm-decoder.c_cs_etm_decoder__process_data_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_decoder = type { i32, i32 }

@OCSD_RESP_CONT = common dso_local global i32 0, align 4
@OCSD_OP_FLUSH = common dso_local global i32 0, align 4
@OCSD_OP_DATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cs_etm_decoder__process_data_block(%struct.cs_etm_decoder* %0, i64 %1, i32* %2, i64 %3, i64* %4) #0 {
  %6 = alloca %struct.cs_etm_decoder*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.cs_etm_decoder* %0, %struct.cs_etm_decoder** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* @OCSD_RESP_CONT, align 4
  store i32 %16, i32* %12, align 4
  %17 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %6, align 8
  %18 = getelementptr inbounds %struct.cs_etm_decoder, %struct.cs_etm_decoder* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %13, align 4
  store i64 0, i64* %14, align 8
  br label %20

20:                                               ; preds = %65, %5
  %21 = load i64, i64* %14, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %67

24:                                               ; preds = %20
  %25 = load i32, i32* %13, align 4
  %26 = call i64 @OCSD_DATA_RESP_IS_WAIT(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %6, align 8
  %30 = getelementptr inbounds %struct.cs_etm_decoder, %struct.cs_etm_decoder* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @OCSD_OP_FLUSH, align 4
  %33 = call i32 @ocsd_dt_process_data(i32 %31, i32 %32, i64 0, i64 0, i32* null, i64* null)
  store i32 %33, i32* %12, align 4
  br label %60

34:                                               ; preds = %24
  %35 = load i32, i32* %13, align 4
  %36 = call i64 @OCSD_DATA_RESP_IS_CONT(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %6, align 8
  %40 = getelementptr inbounds %struct.cs_etm_decoder, %struct.cs_etm_decoder* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @OCSD_OP_DATA, align 4
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %14, align 8
  %45 = add i64 %43, %44
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %14, align 8
  %48 = sub i64 %46, %47
  %49 = load i32*, i32** %8, align 8
  %50 = load i64, i64* %14, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = call i32 @ocsd_dt_process_data(i32 %41, i32 %42, i64 %45, i64 %48, i32* %51, i64* %15)
  store i32 %52, i32* %12, align 4
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* %14, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %14, align 8
  br label %59

56:                                               ; preds = %34
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %11, align 4
  br label %67

59:                                               ; preds = %38
  br label %60

60:                                               ; preds = %59, %28
  %61 = load i32, i32* %12, align 4
  %62 = call i64 @OCSD_DATA_RESP_IS_WAIT(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %13, align 4
  br label %20

67:                                               ; preds = %64, %56, %20
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %6, align 8
  %70 = getelementptr inbounds %struct.cs_etm_decoder, %struct.cs_etm_decoder* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load i64, i64* %14, align 8
  %72 = load i64*, i64** %10, align 8
  store i64 %71, i64* %72, align 8
  %73 = load i32, i32* %11, align 4
  ret i32 %73
}

declare dso_local i64 @OCSD_DATA_RESP_IS_WAIT(i32) #1

declare dso_local i32 @ocsd_dt_process_data(i32, i32, i64, i64, i32*, i64*) #1

declare dso_local i64 @OCSD_DATA_RESP_IS_CONT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
