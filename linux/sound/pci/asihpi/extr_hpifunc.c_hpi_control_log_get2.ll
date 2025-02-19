; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_control_log_get2.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_control_log_get2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_message = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.hpi_response = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i16* }

@HPI_OBJ_CONTROL = common dso_local global i32 0, align 4
@HPI_CONTROL_GET_STATE = common dso_local global i32 0, align 4
@HPI_ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i16*, i16*)* @hpi_control_log_get2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpi_control_log_get2(i32 %0, i32 %1, i16* %2, i16* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca %struct.hpi_message, align 4
  %11 = alloca %struct.hpi_response, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i16* %2, i16** %8, align 8
  store i16* %3, i16** %9, align 8
  %12 = load i32, i32* @HPI_OBJ_CONTROL, align 4
  %13 = load i32, i32* @HPI_CONTROL_GET_STATE, align 4
  %14 = call i32 @hpi_init_message_response(%struct.hpi_message* %10, %struct.hpi_response* %11, i32 %12, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %10, i32 0, i32 2
  %17 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %10, i32 0, i32 1
  %18 = call i64 @hpi_handle_indexes(i32 %15, i32* %16, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @HPI_ERROR_INVALID_HANDLE, align 4
  store i32 %21, i32* %5, align 4
  br label %48

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds %struct.hpi_message, %struct.hpi_message* %10, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = call i32 @hpi_send_recv(%struct.hpi_message* %10, %struct.hpi_response* %11)
  %28 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %11, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i16*, i16** %30, align 8
  %32 = getelementptr inbounds i16, i16* %31, i64 0
  %33 = load i16, i16* %32, align 2
  %34 = load i16*, i16** %8, align 8
  store i16 %33, i16* %34, align 2
  %35 = load i16*, i16** %9, align 8
  %36 = icmp ne i16* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %22
  %38 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %11, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i16*, i16** %40, align 8
  %42 = getelementptr inbounds i16, i16* %41, i64 1
  %43 = load i16, i16* %42, align 2
  %44 = load i16*, i16** %9, align 8
  store i16 %43, i16* %44, align 2
  br label %45

45:                                               ; preds = %37, %22
  %46 = getelementptr inbounds %struct.hpi_response, %struct.hpi_response* %11, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %45, %20
  %49 = load i32, i32* %5, align 4
  ret i32 %49
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
