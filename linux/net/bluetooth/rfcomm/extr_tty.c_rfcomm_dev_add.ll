; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_tty.c_rfcomm_dev_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/rfcomm/extr_tty.c_rfcomm_dev_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfcomm_dev_req = type { i32, i32 }
%struct.rfcomm_dlc = type { i32 }
%struct.rfcomm_dev = type { i32, %struct.rfcomm_dev*, i32 }
%struct.device = type { i32, %struct.device*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"id %d channel %d\00", align 1
@rfcomm_tty_driver = common dso_local global i32 0, align 4
@dev_attr_address = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to create address attribute\00", align 1
@dev_attr_channel = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to create channel attribute\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rfcomm_dev_req*, %struct.rfcomm_dlc*)* @rfcomm_dev_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_dev_add(%struct.rfcomm_dev_req* %0, %struct.rfcomm_dlc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rfcomm_dev_req*, align 8
  %5 = alloca %struct.rfcomm_dlc*, align 8
  %6 = alloca %struct.rfcomm_dev*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.rfcomm_dev_req* %0, %struct.rfcomm_dev_req** %4, align 8
  store %struct.rfcomm_dlc* %1, %struct.rfcomm_dlc** %5, align 8
  %8 = load %struct.rfcomm_dev_req*, %struct.rfcomm_dev_req** %4, align 8
  %9 = getelementptr inbounds %struct.rfcomm_dev_req, %struct.rfcomm_dev_req* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.rfcomm_dev_req*, %struct.rfcomm_dev_req** %4, align 8
  %12 = getelementptr inbounds %struct.rfcomm_dev_req, %struct.rfcomm_dev_req* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load %struct.rfcomm_dev_req*, %struct.rfcomm_dev_req** %4, align 8
  %16 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %5, align 8
  %17 = call %struct.rfcomm_dev* @__rfcomm_dev_add(%struct.rfcomm_dev_req* %15, %struct.rfcomm_dlc* %16)
  store %struct.rfcomm_dev* %17, %struct.rfcomm_dev** %6, align 8
  %18 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %19 = call i64 @IS_ERR(%struct.rfcomm_dev* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.rfcomm_dlc*, %struct.rfcomm_dlc** %5, align 8
  %23 = call i32 @rfcomm_dlc_put(%struct.rfcomm_dlc* %22)
  %24 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %25 = call i32 @PTR_ERR(%struct.rfcomm_dev* %24)
  store i32 %25, i32* %3, align 4
  br label %77

26:                                               ; preds = %2
  %27 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %28 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %27, i32 0, i32 2
  %29 = load i32, i32* @rfcomm_tty_driver, align 4
  %30 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %31 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.rfcomm_dev* @tty_port_register_device(i32* %28, i32 %29, i32 %32, i32* null)
  %34 = bitcast %struct.rfcomm_dev* %33 to %struct.device*
  store %struct.device* %34, %struct.device** %7, align 8
  %35 = load %struct.device*, %struct.device** %7, align 8
  %36 = bitcast %struct.device* %35 to %struct.rfcomm_dev*
  %37 = call i64 @IS_ERR(%struct.rfcomm_dev* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %26
  %40 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %41 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %40, i32 0, i32 2
  %42 = call i32 @tty_port_put(i32* %41)
  %43 = load %struct.device*, %struct.device** %7, align 8
  %44 = bitcast %struct.device* %43 to %struct.rfcomm_dev*
  %45 = call i32 @PTR_ERR(%struct.rfcomm_dev* %44)
  store i32 %45, i32* %3, align 4
  br label %77

46:                                               ; preds = %26
  %47 = load %struct.device*, %struct.device** %7, align 8
  %48 = bitcast %struct.device* %47 to %struct.rfcomm_dev*
  %49 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %50 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %49, i32 0, i32 1
  store %struct.rfcomm_dev* %48, %struct.rfcomm_dev** %50, align 8
  %51 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %52 = call i32 @rfcomm_reparent_device(%struct.rfcomm_dev* %51)
  %53 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %54 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %53, i32 0, i32 1
  %55 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %54, align 8
  %56 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %57 = call i32 @dev_set_drvdata(%struct.rfcomm_dev* %55, %struct.rfcomm_dev* %56)
  %58 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %59 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %58, i32 0, i32 1
  %60 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %59, align 8
  %61 = call i64 @device_create_file(%struct.rfcomm_dev* %60, i32* @dev_attr_address)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %46
  %64 = call i32 @BT_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %46
  %66 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %67 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %66, i32 0, i32 1
  %68 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %67, align 8
  %69 = call i64 @device_create_file(%struct.rfcomm_dev* %68, i32* @dev_attr_channel)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = call i32 @BT_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %65
  %74 = load %struct.rfcomm_dev*, %struct.rfcomm_dev** %6, align 8
  %75 = getelementptr inbounds %struct.rfcomm_dev, %struct.rfcomm_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %39, %21
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local %struct.rfcomm_dev* @__rfcomm_dev_add(%struct.rfcomm_dev_req*, %struct.rfcomm_dlc*) #1

declare dso_local i64 @IS_ERR(%struct.rfcomm_dev*) #1

declare dso_local i32 @rfcomm_dlc_put(%struct.rfcomm_dlc*) #1

declare dso_local i32 @PTR_ERR(%struct.rfcomm_dev*) #1

declare dso_local %struct.rfcomm_dev* @tty_port_register_device(i32*, i32, i32, i32*) #1

declare dso_local i32 @tty_port_put(i32*) #1

declare dso_local i32 @rfcomm_reparent_device(%struct.rfcomm_dev*) #1

declare dso_local i32 @dev_set_drvdata(%struct.rfcomm_dev*, %struct.rfcomm_dev*) #1

declare dso_local i64 @device_create_file(%struct.rfcomm_dev*, i32*) #1

declare dso_local i32 @BT_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
