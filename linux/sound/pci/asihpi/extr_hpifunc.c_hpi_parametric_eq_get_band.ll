; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_parametric_eq_get_band.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_parametric_eq_get_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_message = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.hpi_response = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i16*, i32 }

@HPI_OBJ_CONTROL = common dso_local global i32 0, align 4
@HPI_CONTROL_GET_STATE = common dso_local global i32 0, align 4
@HPI_ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@HPI_EQUALIZER_FILTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hpi_parametric_eq_get_band(i32 %0, i64 %1, i64* %2, i32* %3, i16* %4, i16* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i16*, align 8
  %13 = alloca i16*, align 8
  %14 = alloca %struct.hpi_message, align 8
  %15 = alloca %struct.hpi_response, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64* %2, i64** %10, align 8
  store i32* %3, i32** %11, align 8
  store i16* %4, i16** %12, align 8
  store i16* %5, i16** %13, align 8
  %16 = load i32, i32* @HPI_OBJ_CONTROL, align 4
  %17 = load i32, i32* @HPI_CONTROL_GET_STATE, align 4
  %18 = call i32 @hpi_init_message_response(%struct.hpi_message* %14, %struct.hpi_response* %15, i32 %16, i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %14, i32 0, i32 2
  %21 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %14, i32 0, i32 1
  %22 = call i64 @hpi_handle_indexes(i32 %19, i32* %20, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i64, i64* @HPI_ERROR_INVALID_HANDLE, align 8
  store i64 %25, i64* %7, align 8
  br label %80

26:                                               ; preds = %6
  %27 = load i32, i32* @HPI_EQUALIZER_FILTER, align 4
  %28 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %14, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %14, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = call i32 @hpi_send_recv(%struct.hpi_message* %14, %struct.hpi_response* %15)
  %36 = load i32*, i32** %11, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %15, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32*, i32** %11, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %38, %26
  %45 = load i64*, i64** %10, align 8
  %46 = icmp ne i64* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %15, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = ashr i32 %51, 16
  %53 = sext i32 %52 to i64
  %54 = load i64*, i64** %10, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %47, %44
  %56 = load i16*, i16** %12, align 8
  %57 = icmp ne i16* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %15, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i16*, i16** %61, align 8
  %63 = getelementptr inbounds i16, i16* %62, i64 1
  %64 = load i16, i16* %63, align 2
  %65 = load i16*, i16** %12, align 8
  store i16 %64, i16* %65, align 2
  br label %66

66:                                               ; preds = %58, %55
  %67 = load i16*, i16** %13, align 8
  %68 = icmp ne i16* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %15, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i16*, i16** %72, align 8
  %74 = getelementptr inbounds i16, i16* %73, i64 0
  %75 = load i16, i16* %74, align 2
  %76 = load i16*, i16** %13, align 8
  store i16 %75, i16* %76, align 2
  br label %77

77:                                               ; preds = %69, %66
  %78 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %15, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %7, align 8
  br label %80

80:                                               ; preds = %77, %24
  %81 = load i64, i64* %7, align 8
  ret i64 %81
}

declare dso_local i32 @hpi_init_message_response(%struct.hpi_message*, %struct.hpi_response*, i32, i32) #1

declare dso_local i64 @hpi_handle_indexes(i32, i32*, i32*) #1

declare dso_local i32 @hpi_send_recv(%struct.hpi_message*, %struct.hpi_response*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
