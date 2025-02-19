; ModuleID = '/home/carl/AnghaBench/linux/samples/qmi/extr_qmi_sample_client.c_qmi_sample_new_server.c'
source_filename = "/home/carl/AnghaBench/linux/samples/qmi/extr_qmi_sample_client.c_qmi_sample_new_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmi_handle = type { i32 }
%struct.qmi_service = type { %struct.platform_device*, i32, i32 }
%struct.platform_device = type { i32 }
%struct.sockaddr_qrtr = type { i32, i32, i32 }

@AF_QIPCRTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"qmi_sample_client\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qmi_handle*, %struct.qmi_service*)* @qmi_sample_new_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qmi_sample_new_server(%struct.qmi_handle* %0, %struct.qmi_service* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qmi_handle*, align 8
  %5 = alloca %struct.qmi_service*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.sockaddr_qrtr, align 4
  %8 = alloca i32, align 4
  store %struct.qmi_handle* %0, %struct.qmi_handle** %4, align 8
  store %struct.qmi_service* %1, %struct.qmi_service** %5, align 8
  %9 = getelementptr inbounds %struct.sockaddr_qrtr, %struct.sockaddr_qrtr* %7, i32 0, i32 0
  %10 = load i32, i32* @AF_QIPCRTR, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds %struct.sockaddr_qrtr, %struct.sockaddr_qrtr* %7, i32 0, i32 1
  %12 = load %struct.qmi_service*, %struct.qmi_service** %5, align 8
  %13 = getelementptr inbounds %struct.qmi_service, %struct.qmi_service* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = getelementptr inbounds %struct.sockaddr_qrtr, %struct.sockaddr_qrtr* %7, i32 0, i32 2
  %16 = load %struct.qmi_service*, %struct.qmi_service** %5, align 8
  %17 = getelementptr inbounds %struct.qmi_service, %struct.qmi_service* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %20 = call %struct.platform_device* @platform_device_alloc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %19)
  store %struct.platform_device* %20, %struct.platform_device** %6, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %22 = icmp ne %struct.platform_device* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %46

26:                                               ; preds = %2
  %27 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %28 = call i32 @platform_device_add_data(%struct.platform_device* %27, %struct.sockaddr_qrtr* %7, i32 12)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %42

32:                                               ; preds = %26
  %33 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %34 = call i32 @platform_device_add(%struct.platform_device* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %42

38:                                               ; preds = %32
  %39 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %40 = load %struct.qmi_service*, %struct.qmi_service** %5, align 8
  %41 = getelementptr inbounds %struct.qmi_service, %struct.qmi_service* %40, i32 0, i32 0
  store %struct.platform_device* %39, %struct.platform_device** %41, align 8
  store i32 0, i32* %3, align 4
  br label %46

42:                                               ; preds = %37, %31
  %43 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %44 = call i32 @platform_device_put(%struct.platform_device* %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %38, %23
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @platform_device_add_data(%struct.platform_device*, %struct.sockaddr_qrtr*, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
