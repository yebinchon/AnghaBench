; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_port_select_set.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_port_select_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i32 }
%struct.hdac_hdmi_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@AC_VERB_SET_DEVICE_SEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Selected the port=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_device*, %struct.hdac_hdmi_port*)* @hdac_hdmi_port_select_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdac_hdmi_port_select_set(%struct.hdac_device* %0, %struct.hdac_hdmi_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdac_device*, align 8
  %5 = alloca %struct.hdac_hdmi_port*, align 8
  %6 = alloca i32, align 4
  store %struct.hdac_device* %0, %struct.hdac_device** %4, align 8
  store %struct.hdac_hdmi_port* %1, %struct.hdac_hdmi_port** %5, align 8
  %7 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %5, align 8
  %8 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

14:                                               ; preds = %2
  %15 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %16 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %5, align 8
  %17 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @hdac_hdmi_get_port_len(%struct.hdac_device* %15, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %64

27:                                               ; preds = %14
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  %30 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %5, align 8
  %31 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %64

35:                                               ; preds = %27
  %36 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %37 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %5, align 8
  %38 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @AC_VERB_SET_DEVICE_SEL, align 4
  %43 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %5, align 8
  %44 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @snd_hdac_codec_write(%struct.hdac_device* %36, i32 %41, i32 0, i32 %42, i32 %45)
  %47 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %5, align 8
  %48 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %51 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %5, align 8
  %52 = call i32 @hdac_hdmi_port_select_get(%struct.hdac_device* %50, %struct.hdac_hdmi_port* %51)
  %53 = icmp ne i32 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %35
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %64

57:                                               ; preds = %35
  %58 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %59 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %58, i32 0, i32 0
  %60 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %5, align 8
  %61 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dev_dbg(i32* %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %57, %54, %34, %24, %13
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @hdac_hdmi_get_port_len(%struct.hdac_device*, i32) #1

declare dso_local i32 @snd_hdac_codec_write(%struct.hdac_device*, i32, i32, i32, i32) #1

declare dso_local i32 @hdac_hdmi_port_select_get(%struct.hdac_device*, %struct.hdac_hdmi_port*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
