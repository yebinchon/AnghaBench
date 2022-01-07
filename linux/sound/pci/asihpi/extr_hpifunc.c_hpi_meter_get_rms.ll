; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_meter_get_rms.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_meter_get_rms.c"
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
@HPI_METER_RMS = common dso_local global i32 0, align 4
@HPI_METER_MINIMUM = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpi_meter_get_rms(i32 %0, i16* %1) #0 {
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
  br label %60

21:                                               ; preds = %2
  %22 = load i32, i32* @HPI_METER_RMS, align 4
  %23 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %7, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = call i32 @hpi_send_recv(%struct.hpi_message* %7, %struct.hpi_response* %8)
  %27 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %8, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %21
  %31 = load i16*, i16** %5, align 8
  %32 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %8, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @HPI_MAX_CHANNELS, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 2, %37
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memcpy(i16* %31, i32 %35, i32 %39)
  br label %57

41:                                               ; preds = %21
  store i16 0, i16* %6, align 2
  br label %42

42:                                               ; preds = %53, %41
  %43 = load i16, i16* %6, align 2
  %44 = sext i16 %43 to i32
  %45 = load i32, i32* @HPI_MAX_CHANNELS, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load i16, i16* @HPI_METER_MINIMUM, align 2
  %49 = load i16*, i16** %5, align 8
  %50 = load i16, i16* %6, align 2
  %51 = sext i16 %50 to i64
  %52 = getelementptr inbounds i16, i16* %49, i64 %51
  store i16 %48, i16* %52, align 2
  br label %53

53:                                               ; preds = %47
  %54 = load i16, i16* %6, align 2
  %55 = add i16 %54, 1
  store i16 %55, i16* %6, align 2
  br label %42

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56, %30
  %58 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %8, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %19
  %61 = load i32, i32* %3, align 4
  ret i32 %61
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
