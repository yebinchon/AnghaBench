; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_cobranet_hmi_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_cobranet_hmi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_msg_cobranet_hmiwrite = type { %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.hpi_response_header = type { i64 }

@HPI_OBJ_CONTROL = common dso_local global i32 0, align 4
@HPI_CONTROL_SET_STATE = common dso_local global i32 0, align 4
@HPI_ERROR_INVALID_HANDLE = common dso_local global i64 0, align 8
@HPI_ERROR_MESSAGE_BUFFER_TOO_SMALL = common dso_local global i64 0, align 8
@HPI_COBRANET_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hpi_cobranet_hmi_write(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.hpi_msg_cobranet_hmiwrite, align 8
  %11 = alloca %struct.hpi_response_header, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = getelementptr inbounds %struct.hpi_msg_cobranet_hmiwrite, %struct.hpi_msg_cobranet_hmiwrite* %10, i32 0, i32 0
  %13 = load i32, i32* @HPI_OBJ_CONTROL, align 4
  %14 = load i32, i32* @HPI_CONTROL_SET_STATE, align 4
  %15 = call i32 @hpi_init_message_responseV1(%struct.TYPE_5__* %12, i32 32, %struct.hpi_response_header* %11, i32 8, i32 %13, i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = getelementptr inbounds %struct.hpi_msg_cobranet_hmiwrite, %struct.hpi_msg_cobranet_hmiwrite* %10, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.hpi_msg_cobranet_hmiwrite, %struct.hpi_msg_cobranet_hmiwrite* %10, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = call i64 @hpi_handle_indexes(i32 %16, i32* %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* @HPI_ERROR_INVALID_HANDLE, align 8
  store i64 %24, i64* %5, align 8
  br label %55

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ugt i64 %27, 4
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i64, i64* @HPI_ERROR_MESSAGE_BUFFER_TOO_SMALL, align 8
  store i64 %30, i64* %5, align 8
  br label %55

31:                                               ; preds = %25
  %32 = load i32, i32* @HPI_COBRANET_SET, align 4
  %33 = getelementptr inbounds %struct.hpi_msg_cobranet_hmiwrite, %struct.hpi_msg_cobranet_hmiwrite* %10, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %8, align 4
  %36 = getelementptr inbounds %struct.hpi_msg_cobranet_hmiwrite, %struct.hpi_msg_cobranet_hmiwrite* %10, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = getelementptr inbounds %struct.hpi_msg_cobranet_hmiwrite, %struct.hpi_msg_cobranet_hmiwrite* %10, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = getelementptr inbounds %struct.hpi_msg_cobranet_hmiwrite, %struct.hpi_msg_cobranet_hmiwrite* %10, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @memcpy(i32 %42, i32* %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 28, %47
  %49 = getelementptr inbounds %struct.hpi_msg_cobranet_hmiwrite, %struct.hpi_msg_cobranet_hmiwrite* %10, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = getelementptr inbounds %struct.hpi_msg_cobranet_hmiwrite, %struct.hpi_msg_cobranet_hmiwrite* %10, i32 0, i32 0
  %52 = call i32 @hpi_send_recvV1(%struct.TYPE_5__* %51, %struct.hpi_response_header* %11)
  %53 = getelementptr inbounds %struct.hpi_response_header, %struct.hpi_response_header* %11, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %31, %29, %23
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local i32 @hpi_init_message_responseV1(%struct.TYPE_5__*, i32, %struct.hpi_response_header*, i32, i32, i32) #1

declare dso_local i64 @hpi_handle_indexes(i32, i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @hpi_send_recvV1(%struct.TYPE_5__*, %struct.hpi_response_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
