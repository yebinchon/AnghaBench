; ModuleID = '/home/carl/AnghaBench/linux/net/qrtr/extr_smd.c_qcom_smd_qrtr_probe.c'
source_filename = "/home/carl/AnghaBench/linux/net/qrtr/extr_smd.c_qcom_smd_qrtr_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_device = type { i32, i32 }
%struct.qrtr_smd_dev = type { %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qcom_smd_qrtr_send = common dso_local global i32 0, align 4
@QRTR_EP_NID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Qualcomm SMD QRTR driver probed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmsg_device*)* @qcom_smd_qrtr_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_smd_qrtr_probe(%struct.rpmsg_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpmsg_device*, align 8
  %4 = alloca %struct.qrtr_smd_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.rpmsg_device* %0, %struct.rpmsg_device** %3, align 8
  %6 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %7 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.qrtr_smd_dev* @devm_kzalloc(i32* %7, i32 24, i32 %8)
  store %struct.qrtr_smd_dev* %9, %struct.qrtr_smd_dev** %4, align 8
  %10 = load %struct.qrtr_smd_dev*, %struct.qrtr_smd_dev** %4, align 8
  %11 = icmp ne %struct.qrtr_smd_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %45

15:                                               ; preds = %1
  %16 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %17 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.qrtr_smd_dev*, %struct.qrtr_smd_dev** %4, align 8
  %20 = getelementptr inbounds %struct.qrtr_smd_dev, %struct.qrtr_smd_dev* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %22 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %21, i32 0, i32 0
  %23 = load %struct.qrtr_smd_dev*, %struct.qrtr_smd_dev** %4, align 8
  %24 = getelementptr inbounds %struct.qrtr_smd_dev, %struct.qrtr_smd_dev* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  %25 = load i32, i32* @qcom_smd_qrtr_send, align 4
  %26 = load %struct.qrtr_smd_dev*, %struct.qrtr_smd_dev** %4, align 8
  %27 = getelementptr inbounds %struct.qrtr_smd_dev, %struct.qrtr_smd_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.qrtr_smd_dev*, %struct.qrtr_smd_dev** %4, align 8
  %30 = getelementptr inbounds %struct.qrtr_smd_dev, %struct.qrtr_smd_dev* %29, i32 0, i32 0
  %31 = load i32, i32* @QRTR_EP_NID_AUTO, align 4
  %32 = call i32 @qrtr_endpoint_register(%struct.TYPE_2__* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %15
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %45

37:                                               ; preds = %15
  %38 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %39 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %38, i32 0, i32 0
  %40 = load %struct.qrtr_smd_dev*, %struct.qrtr_smd_dev** %4, align 8
  %41 = call i32 @dev_set_drvdata(i32* %39, %struct.qrtr_smd_dev* %40)
  %42 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %43 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %42, i32 0, i32 0
  %44 = call i32 @dev_dbg(i32* %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %37, %35, %12
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.qrtr_smd_dev* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @qrtr_endpoint_register(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.qrtr_smd_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
