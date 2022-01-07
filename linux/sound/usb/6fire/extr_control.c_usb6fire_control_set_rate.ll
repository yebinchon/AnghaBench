; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/6fire/extr_control.c_usb6fire_control_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/6fire/extr_control.c_usb6fire_control_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.control_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comm_runtime*, %struct.usb_device* }
%struct.comm_runtime = type { i32 (%struct.comm_runtime*, i32, i32, i32, i32)* }
%struct.usb_device = type { i32 }

@CONTROL_N_RATES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@rates_altsetting = common dso_local global i32* null, align 8
@rates_6fire_vl = common dso_local global i32* null, align 8
@rates_6fire_vh = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.control_runtime*, i32)* @usb6fire_control_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb6fire_control_set_rate(%struct.control_runtime* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.control_runtime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.comm_runtime*, align 8
  store %struct.control_runtime* %0, %struct.control_runtime** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.control_runtime*, %struct.control_runtime** %4, align 8
  %10 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  store %struct.usb_device* %13, %struct.usb_device** %7, align 8
  %14 = load %struct.control_runtime*, %struct.control_runtime** %4, align 8
  %15 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.comm_runtime*, %struct.comm_runtime** %17, align 8
  store %struct.comm_runtime* %18, %struct.comm_runtime** %8, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @CONTROL_N_RATES, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %61

28:                                               ; preds = %21
  %29 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %30 = load i32*, i32** @rates_altsetting, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @usb_set_interface(%struct.usb_device* %29, i32 1, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %61

40:                                               ; preds = %28
  %41 = load %struct.comm_runtime*, %struct.comm_runtime** %8, align 8
  %42 = getelementptr inbounds %struct.comm_runtime, %struct.comm_runtime* %41, i32 0, i32 0
  %43 = load i32 (%struct.comm_runtime*, i32, i32, i32, i32)*, i32 (%struct.comm_runtime*, i32, i32, i32, i32)** %42, align 8
  %44 = load %struct.comm_runtime*, %struct.comm_runtime** %8, align 8
  %45 = load i32*, i32** @rates_6fire_vl, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** @rates_6fire_vh, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 %43(%struct.comm_runtime* %44, i32 2, i32 1, i32 %49, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %40
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %58, %38, %25
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @usb_set_interface(%struct.usb_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
