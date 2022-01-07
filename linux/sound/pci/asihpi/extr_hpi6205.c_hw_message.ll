; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_hw_message.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6205.c_hw_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_adapter_obj = type { i64 }
%struct.hpi_message = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.hpi_response = type { i64, i32, i64 }

@HPI_ERROR_BACKEND_BASE = common dso_local global i64 0, align 8
@HPI_ERROR_DSP_COMMUNICATION = common dso_local global i64 0, align 8
@H620_HIF_SEND_DATA = common dso_local global i32 0, align 4
@H620_HIF_GET_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*)* @hw_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hw_message(%struct.hpi_adapter_obj* %0, %struct.hpi_message* %1, %struct.hpi_response* %2) #0 {
  %4 = alloca %struct.hpi_adapter_obj*, align 8
  %5 = alloca %struct.hpi_message*, align 8
  %6 = alloca %struct.hpi_response*, align 8
  %7 = alloca i64, align 8
  store %struct.hpi_adapter_obj* %0, %struct.hpi_adapter_obj** %4, align 8
  store %struct.hpi_message* %1, %struct.hpi_message** %5, align 8
  store %struct.hpi_response* %2, %struct.hpi_response** %6, align 8
  store i64 0, i64* %7, align 8
  %8 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %9 = call i32 @hpios_dsplock_lock(%struct.hpi_adapter_obj* %8)
  %10 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %11 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %12 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %13 = call i64 @message_response_sequence(%struct.hpi_adapter_obj* %10, %struct.hpi_message* %11, %struct.hpi_response* %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @HPI_ERROR_BACKEND_BASE, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i64, i64* @HPI_ERROR_DSP_COMMUNICATION, align 8
  %22 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %23 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %26 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  br label %31

27:                                               ; preds = %16
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %30 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %27, %20
  %32 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %33 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %37 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %36, i32 0, i32 1
  store i32 4, i32* %37, align 8
  br label %91

38:                                               ; preds = %3
  %39 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %40 = getelementptr inbounds %struct.hpi_adapter_obj, %struct.hpi_adapter_obj* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %38
  %42 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %43 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %91

47:                                               ; preds = %41
  %48 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %49 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %87 [
    i32 128, label %51
    i32 131, label %51
    i32 130, label %69
    i32 129, label %69
  ]

51:                                               ; preds = %47, %47
  %52 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %53 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %54 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %61 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @H620_HIF_SEND_DATA, align 4
  %68 = call i64 @hpi6205_transfer_data(%struct.hpi_adapter_obj* %52, i32 %59, i32 %66, i32 %67)
  store i64 %68, i64* %7, align 8
  br label %87

69:                                               ; preds = %47, %47
  %70 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %71 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %72 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.hpi_message*, %struct.hpi_message** %5, align 8
  %79 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @H620_HIF_GET_DATA, align 4
  %86 = call i64 @hpi6205_transfer_data(%struct.hpi_adapter_obj* %70, i32 %77, i32 %84, i32 %85)
  store i64 %86, i64* %7, align 8
  br label %87

87:                                               ; preds = %47, %69, %51
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.hpi_response*, %struct.hpi_response** %6, align 8
  %90 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %87, %46, %31
  %92 = load %struct.hpi_adapter_obj*, %struct.hpi_adapter_obj** %4, align 8
  %93 = call i32 @hpios_dsplock_unlock(%struct.hpi_adapter_obj* %92)
  ret void
}

declare dso_local i32 @hpios_dsplock_lock(%struct.hpi_adapter_obj*) #1

declare dso_local i64 @message_response_sequence(%struct.hpi_adapter_obj*, %struct.hpi_message*, %struct.hpi_response*) #1

declare dso_local i64 @hpi6205_transfer_data(%struct.hpi_adapter_obj*, i32, i32, i32) #1

declare dso_local i32 @hpios_dsplock_unlock(%struct.hpi_adapter_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
