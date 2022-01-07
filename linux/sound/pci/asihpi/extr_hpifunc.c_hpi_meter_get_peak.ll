; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_meter_get_peak.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_meter_get_peak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_message = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.hpi_response = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@HPI_MAX_CHANNELS = common dso_local global i32 0, align 4
@HPI_OBJ_CONTROL = common dso_local global i32 0, align 4
@HPI_CONTROL_GET_STATE = common dso_local global i32 0, align 4
@HPI_ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@HPI_METER_PEAK = common dso_local global i32 0, align 4
@HPI_METER_MINIMUM = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpi_meter_get_peak(i32 %0, i16* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.hpi_message, align 4
  %8 = alloca %struct.hpi_response, align 4
  store i32 %0, i32* %4, align 4
  store i16* %1, i16** %5, align 8
  %9 = load i32, i32* @HPI_MAX_CHANNELS, align 4
  %10 = zext i32 %9 to i64
  store i16 0, i16* %6, align 2
  %11 = load i32, i32* @HPI_OBJ_CONTROL, align 4
  %12 = load i32, i32* @HPI_CONTROL_GET_STATE, align 4
  %13 = call i32 @hpi_init_message_response(%struct.hpi_message* %7, %struct.hpi_response* %8, i32 %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %7, i32 0, i32 2
  %16 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %7, i32 0, i32 1
  %17 = call i64 @hpi_handle_indexes(i32 %14, i32* %15, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @HPI_ERROR_INVALID_HANDLE, align 4
  store i32 %20, i32* %3, align 4
  br label %63

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %7, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %7, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @HPI_METER_PEAK, align 4
  %26 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %7, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = call i32 @hpi_send_recv(%struct.hpi_message* %7, %struct.hpi_response* %8)
  %30 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %8, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %21
  %34 = load i16*, i16** %5, align 8
  %35 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %8, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @HPI_MAX_CHANNELS, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 2, %40
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memcpy(i16* %34, i32 %38, i32 %42)
  br label %60

44:                                               ; preds = %21
  store i16 0, i16* %6, align 2
  br label %45

45:                                               ; preds = %56, %44
  %46 = load i16, i16* %6, align 2
  %47 = sext i16 %46 to i32
  %48 = load i32, i32* @HPI_MAX_CHANNELS, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load i16, i16* @HPI_METER_MINIMUM, align 2
  %52 = load i16*, i16** %5, align 8
  %53 = load i16, i16* %6, align 2
  %54 = sext i16 %53 to i64
  %55 = getelementptr inbounds i16, i16* %52, i64 %54
  store i16 %51, i16* %55, align 2
  br label %56

56:                                               ; preds = %50
  %57 = load i16, i16* %6, align 2
  %58 = add i16 %57, 1
  store i16 %58, i16* %6, align 2
  br label %45

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59, %33
  %61 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %8, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %19
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @hpi_init_message_response(%struct.hpi_message*, %struct.hpi_response*, i32, i32) #1

declare dso_local i64 @hpi_handle_indexes(i32, i32*, i32*) #1

declare dso_local i32 @hpi_send_recv(%struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i32 @memcpy(i16*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
