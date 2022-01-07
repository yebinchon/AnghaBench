; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_add_pin.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_add_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i32 }
%struct.hdac_hdmi_priv = type { i32, i32, i32 }
%struct.hdac_hdmi_pin = type { i32, i64, i32, %struct.hdac_device*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_device*, i32)* @hdac_hdmi_add_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdac_hdmi_add_pin(%struct.hdac_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdac_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdac_hdmi_priv*, align 8
  %7 = alloca %struct.hdac_hdmi_pin*, align 8
  %8 = alloca i32, align 4
  store %struct.hdac_device* %0, %struct.hdac_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %10 = call %struct.hdac_hdmi_priv* @hdev_to_hdmi_priv(%struct.hdac_device* %9)
  store %struct.hdac_hdmi_priv* %10, %struct.hdac_hdmi_priv** %6, align 8
  %11 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %12 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.hdac_hdmi_pin* @devm_kzalloc(i32* %12, i32 40, i32 %13)
  store %struct.hdac_hdmi_pin* %14, %struct.hdac_hdmi_pin** %7, align 8
  %15 = load %struct.hdac_hdmi_pin*, %struct.hdac_hdmi_pin** %7, align 8
  %16 = icmp ne %struct.hdac_hdmi_pin* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %55

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.hdac_hdmi_pin*, %struct.hdac_hdmi_pin** %7, align 8
  %23 = getelementptr inbounds %struct.hdac_hdmi_pin, %struct.hdac_hdmi_pin* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load %struct.hdac_hdmi_pin*, %struct.hdac_hdmi_pin** %7, align 8
  %25 = getelementptr inbounds %struct.hdac_hdmi_pin, %struct.hdac_hdmi_pin* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %27 = load %struct.hdac_hdmi_pin*, %struct.hdac_hdmi_pin** %7, align 8
  %28 = getelementptr inbounds %struct.hdac_hdmi_pin, %struct.hdac_hdmi_pin* %27, i32 0, i32 3
  store %struct.hdac_device* %26, %struct.hdac_device** %28, align 8
  %29 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %30 = load %struct.hdac_hdmi_pin*, %struct.hdac_hdmi_pin** %7, align 8
  %31 = call i32 @hdac_hdmi_add_ports(%struct.hdac_device* %29, %struct.hdac_hdmi_pin* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %55

36:                                               ; preds = %20
  %37 = load %struct.hdac_hdmi_pin*, %struct.hdac_hdmi_pin** %7, align 8
  %38 = getelementptr inbounds %struct.hdac_hdmi_pin, %struct.hdac_hdmi_pin* %37, i32 0, i32 2
  %39 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %6, align 8
  %40 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %39, i32 0, i32 2
  %41 = call i32 @list_add_tail(i32* %38, i32* %40)
  %42 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %6, align 8
  %43 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.hdac_hdmi_pin*, %struct.hdac_hdmi_pin** %7, align 8
  %47 = getelementptr inbounds %struct.hdac_hdmi_pin, %struct.hdac_hdmi_pin* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %6, align 8
  %50 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 4
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %36, %34, %17
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.hdac_hdmi_priv* @hdev_to_hdmi_priv(%struct.hdac_device*) #1

declare dso_local %struct.hdac_hdmi_pin* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @hdac_hdmi_add_ports(%struct.hdac_device*, %struct.hdac_hdmi_pin*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
