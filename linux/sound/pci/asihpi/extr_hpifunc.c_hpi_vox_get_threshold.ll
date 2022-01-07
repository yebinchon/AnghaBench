; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_vox_get_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_vox_get_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_message = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.hpi_response = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i16* }

@HPI_OBJ_CONTROL = common dso_local global i32 0, align 4
@HPI_CONTROL_GET_STATE = common dso_local global i32 0, align 4
@HPI_ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@HPI_VOX_THRESHOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpi_vox_get_threshold(i32 %0, i16* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca %struct.hpi_message, align 4
  %7 = alloca %struct.hpi_response, align 8
  store i32 %0, i32* %4, align 4
  store i16* %1, i16** %5, align 8
  %8 = load i32, i32* @HPI_OBJ_CONTROL, align 4
  %9 = load i32, i32* @HPI_CONTROL_GET_STATE, align 4
  %10 = call i32 @hpi_init_message_response(%struct.hpi_message* %6, %struct.hpi_response* %7, i32 %8, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %6, i32 0, i32 2
  %13 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %6, i32 0, i32 1
  %14 = call i64 @hpi_handle_indexes(i32 %11, i32* %12, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @HPI_ERROR_INVALID_HANDLE, align 4
  store i32 %17, i32* %3, align 4
  br label %33

18:                                               ; preds = %2
  %19 = load i32, i32* @HPI_VOX_THRESHOLD, align 4
  %20 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %6, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  %23 = call i32 @hpi_send_recv(%struct.hpi_message* %6, %struct.hpi_response* %7)
  %24 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %7, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i16*, i16** %26, align 8
  %28 = getelementptr inbounds i16, i16* %27, i64 0
  %29 = load i16, i16* %28, align 2
  %30 = load i16*, i16** %5, align 8
  store i16 %29, i16* %30, align 2
  %31 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %18, %16
  %34 = load i32, i32* %3, align 4
  ret i32 %34
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
