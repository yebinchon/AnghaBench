; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hda.c_hdac_hda_dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hda.c_hdac_hda_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i32, i32 }
%struct.hdac_ext_link = type { i32 }
%struct.hdac_hda_priv = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"hdac link not found\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hdac_hda_codec = common dso_local global i32 0, align 4
@hdac_hda_dais = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to register HDA codec %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_device*)* @hdac_hda_dev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdac_hda_dev_probe(%struct.hdac_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdac_device*, align 8
  %4 = alloca %struct.hdac_ext_link*, align 8
  %5 = alloca %struct.hdac_hda_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.hdac_device* %0, %struct.hdac_device** %3, align 8
  %7 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %8 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %11 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %10, i32 0, i32 1
  %12 = call i32 @dev_name(i32* %11)
  %13 = call %struct.hdac_ext_link* @snd_hdac_ext_bus_get_link(i32 %9, i32 %12)
  store %struct.hdac_ext_link* %13, %struct.hdac_ext_link** %4, align 8
  %14 = load %struct.hdac_ext_link*, %struct.hdac_ext_link** %4, align 8
  %15 = icmp ne %struct.hdac_ext_link* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %18 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %17, i32 0, i32 1
  %19 = call i32 (i32*, i8*, ...) @dev_err(i32* %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %61

22:                                               ; preds = %1
  %23 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %24 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hdac_ext_link*, %struct.hdac_ext_link** %4, align 8
  %27 = call i32 @snd_hdac_ext_bus_link_get(i32 %25, %struct.hdac_ext_link* %26)
  %28 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %29 = call %struct.hdac_hda_priv* @hdac_to_hda_priv(%struct.hdac_device* %28)
  store %struct.hdac_hda_priv* %29, %struct.hdac_hda_priv** %5, align 8
  %30 = load %struct.hdac_hda_priv*, %struct.hdac_hda_priv** %5, align 8
  %31 = icmp ne %struct.hdac_hda_priv* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %61

35:                                               ; preds = %22
  %36 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %37 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %36, i32 0, i32 1
  %38 = load i32, i32* @hdac_hda_dais, align 4
  %39 = load i32, i32* @hdac_hda_dais, align 4
  %40 = call i32 @ARRAY_SIZE(i32 %39)
  %41 = call i32 @devm_snd_soc_register_component(i32* %37, i32* @hdac_hda_codec, i32 %38, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %46 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %45, i32 0, i32 1
  %47 = load i32, i32* %6, align 4
  %48 = call i32 (i32*, i8*, ...) @dev_err(i32* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %61

50:                                               ; preds = %35
  %51 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %52 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %51, i32 0, i32 1
  %53 = load %struct.hdac_hda_priv*, %struct.hdac_hda_priv** %5, align 8
  %54 = call i32 @dev_set_drvdata(i32* %52, %struct.hdac_hda_priv* %53)
  %55 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %56 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.hdac_ext_link*, %struct.hdac_ext_link** %4, align 8
  %59 = call i32 @snd_hdac_ext_bus_link_put(i32 %57, %struct.hdac_ext_link* %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %50, %44, %32, %16
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.hdac_ext_link* @snd_hdac_ext_bus_get_link(i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @snd_hdac_ext_bus_link_get(i32, %struct.hdac_ext_link*) #1

declare dso_local %struct.hdac_hda_priv* @hdac_to_hda_priv(%struct.hdac_device*) #1

declare dso_local i32 @devm_snd_soc_register_component(i32*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.hdac_hda_priv*) #1

declare dso_local i32 @snd_hdac_ext_bus_link_put(i32, %struct.hdac_ext_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
