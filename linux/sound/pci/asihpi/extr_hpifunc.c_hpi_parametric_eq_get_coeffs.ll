; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_parametric_eq_get_coeffs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_parametric_eq_get_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_message = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.hpi_response = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, i64* }

@HPI_OBJ_CONTROL = common dso_local global i32 0, align 4
@HPI_CONTROL_GET_STATE = common dso_local global i32 0, align 4
@HPI_ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@HPI_EQUALIZER_COEFFICIENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpi_parametric_eq_get_coeffs(i32 %0, i32 %1, i16* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16*, align 8
  %8 = alloca %struct.hpi_message, align 4
  %9 = alloca %struct.hpi_response, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i16* %2, i16** %7, align 8
  %10 = load i32, i32* @HPI_OBJ_CONTROL, align 4
  %11 = load i32, i32* @HPI_CONTROL_GET_STATE, align 4
  %12 = call i32 @hpi_init_message_response(%struct.hpi_message* %8, %struct.hpi_response* %9, i32 %10, i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %8, i32 0, i32 2
  %15 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %8, i32 0, i32 1
  %16 = call i64 @hpi_handle_indexes(i32 %13, i32* %14, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @HPI_ERROR_INVALID_HANDLE, align 4
  store i32 %19, i32* %4, align 4
  br label %72

20:                                               ; preds = %3
  %21 = load i32, i32* @HPI_EQUALIZER_COEFFICIENTS, align 4
  %22 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %8, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %8, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = call i32 @hpi_send_recv(%struct.hpi_message* %8, %struct.hpi_response* %9)
  %30 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %9, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i16
  %37 = load i16*, i16** %7, align 8
  %38 = getelementptr inbounds i16, i16* %37, i64 0
  store i16 %36, i16* %38, align 2
  %39 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %9, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i16
  %46 = load i16*, i16** %7, align 8
  %47 = getelementptr inbounds i16, i16* %46, i64 1
  store i16 %45, i16* %47, align 2
  %48 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %9, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = trunc i32 %51 to i16
  %53 = load i16*, i16** %7, align 8
  %54 = getelementptr inbounds i16, i16* %53, i64 2
  store i16 %52, i16* %54, align 2
  %55 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %9, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = ashr i32 %58, 16
  %60 = trunc i32 %59 to i16
  %61 = load i16*, i16** %7, align 8
  %62 = getelementptr inbounds i16, i16* %61, i64 3
  store i16 %60, i16* %62, align 2
  %63 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %9, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i16
  %68 = load i16*, i16** %7, align 8
  %69 = getelementptr inbounds i16, i16* %68, i64 4
  store i16 %67, i16* %69, align 2
  %70 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %9, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %20, %18
  %73 = load i32, i32* %4, align 4
  ret i32 %73
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
