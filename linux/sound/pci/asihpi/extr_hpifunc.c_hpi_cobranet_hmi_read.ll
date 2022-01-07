; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_cobranet_hmi_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpifunc.c_hpi_cobranet_hmi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpi_msg_cobranet_hmiread = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.hpi_res_cobranet_hmiread = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }

@HPI_OBJ_CONTROL = common dso_local global i32 0, align 4
@HPI_CONTROL_GET_STATE = common dso_local global i32 0, align 4
@HPI_ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@HPI_ERROR_RESPONSE_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@HPI_COBRANET_GET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpi_cobranet_hmi_read(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.hpi_msg_cobranet_hmiread, align 4
  %13 = alloca %struct.hpi_res_cobranet_hmiread, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = getelementptr inbounds %struct.hpi_msg_cobranet_hmiread, %struct.hpi_msg_cobranet_hmiread* %12, i32 0, i32 0
  %15 = getelementptr inbounds %struct.hpi_res_cobranet_hmiread, %struct.hpi_res_cobranet_hmiread* %13, i32 0, i32 1
  %16 = load i32, i32* @HPI_OBJ_CONTROL, align 4
  %17 = load i32, i32* @HPI_CONTROL_GET_STATE, align 4
  %18 = call i32 @hpi_init_message_responseV1(%struct.TYPE_7__* %14, i32 20, %struct.TYPE_8__* %15, i32 12, i32 %16, i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds %struct.hpi_msg_cobranet_hmiread, %struct.hpi_msg_cobranet_hmiread* %12, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.hpi_msg_cobranet_hmiread, %struct.hpi_msg_cobranet_hmiread* %12, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = call i64 @hpi_handle_indexes(i32 %19, i32* %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* @HPI_ERROR_INVALID_HANDLE, align 4
  store i32 %27, i32* %6, align 4
  br label %82

28:                                               ; preds = %5
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ugt i64 %30, 4
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @HPI_ERROR_RESPONSE_BUFFER_TOO_SMALL, align 4
  store i32 %33, i32* %6, align 4
  br label %82

34:                                               ; preds = %28
  %35 = load i32, i32* @HPI_COBRANET_GET, align 4
  %36 = getelementptr inbounds %struct.hpi_msg_cobranet_hmiread, %struct.hpi_msg_cobranet_hmiread* %12, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  %39 = getelementptr inbounds %struct.hpi_msg_cobranet_hmiread, %struct.hpi_msg_cobranet_hmiread* %12, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %8, align 4
  %42 = getelementptr inbounds %struct.hpi_msg_cobranet_hmiread, %struct.hpi_msg_cobranet_hmiread* %12, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.hpi_msg_cobranet_hmiread, %struct.hpi_msg_cobranet_hmiread* %12, i32 0, i32 0
  %45 = getelementptr inbounds %struct.hpi_res_cobranet_hmiread, %struct.hpi_res_cobranet_hmiread* %13, i32 0, i32 1
  %46 = call i32 @hpi_send_recvV1(%struct.TYPE_7__* %44, %struct.TYPE_8__* %45)
  %47 = getelementptr inbounds %struct.hpi_res_cobranet_hmiread, %struct.hpi_res_cobranet_hmiread* %13, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %78, label %51

51:                                               ; preds = %34
  %52 = load i32*, i32** %11, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %78

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.hpi_res_cobranet_hmiread, %struct.hpi_res_cobranet_hmiread* %13, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ugt i64 %57, 4
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @HPI_ERROR_RESPONSE_BUFFER_TOO_SMALL, align 4
  store i32 %60, i32* %6, align 4
  br label %82

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.hpi_res_cobranet_hmiread, %struct.hpi_res_cobranet_hmiread* %13, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %10, align 8
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.hpi_res_cobranet_hmiread, %struct.hpi_res_cobranet_hmiread* %13, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %69, %61
  %73 = load i32*, i32** %11, align 8
  %74 = getelementptr inbounds %struct.hpi_res_cobranet_hmiread, %struct.hpi_res_cobranet_hmiread* %13, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @memcpy(i32* %73, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %72, %51, %34
  %79 = getelementptr inbounds %struct.hpi_res_cobranet_hmiread, %struct.hpi_res_cobranet_hmiread* %13, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %78, %59, %32, %26
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @hpi_init_message_responseV1(%struct.TYPE_7__*, i32, %struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i64 @hpi_handle_indexes(i32, i32*, i32*) #1

declare dso_local i32 @hpi_send_recvV1(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
