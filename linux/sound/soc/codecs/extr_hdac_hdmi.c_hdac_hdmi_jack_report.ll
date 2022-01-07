; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_jack_report.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_jack_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_hdmi_pcm = type { i32, i32, i32 }
%struct.hdac_hdmi_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hdac_device* }
%struct.hdac_device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"jack report for pcm=%d\0A\00", align 1
@SND_JACK_AVOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_port*, i32)* @hdac_hdmi_jack_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdac_hdmi_jack_report(%struct.hdac_hdmi_pcm* %0, %struct.hdac_hdmi_port* %1, i32 %2) #0 {
  %4 = alloca %struct.hdac_hdmi_pcm*, align 8
  %5 = alloca %struct.hdac_hdmi_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hdac_device*, align 8
  store %struct.hdac_hdmi_pcm* %0, %struct.hdac_hdmi_pcm** %4, align 8
  store %struct.hdac_hdmi_port* %1, %struct.hdac_hdmi_port** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %5, align 8
  %9 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.hdac_device*, %struct.hdac_device** %11, align 8
  store %struct.hdac_device* %12, %struct.hdac_device** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %5, align 8
  %15 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %3
  %19 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %4, align 8
  %20 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load %struct.hdac_device*, %struct.hdac_device** %7, align 8
  %25 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %24, i32 0, i32 0
  %26 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %4, align 8
  %27 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_dbg(i32* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %4, align 8
  %31 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SND_JACK_AVOUT, align 4
  %34 = load i32, i32* @SND_JACK_AVOUT, align 4
  %35 = call i32 @snd_soc_jack_report(i32 %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %23, %18
  %37 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %4, align 8
  %38 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %63

41:                                               ; preds = %3
  %42 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %4, align 8
  %43 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %4, align 8
  %48 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SND_JACK_AVOUT, align 4
  %51 = call i32 @snd_soc_jack_report(i32 %49, i32 0, i32 %50)
  br label %52

52:                                               ; preds = %46, %41
  %53 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %4, align 8
  %54 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.hdac_hdmi_pcm*, %struct.hdac_hdmi_pcm** %4, align 8
  %59 = getelementptr inbounds %struct.hdac_hdmi_pcm, %struct.hdac_hdmi_pcm* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %57, %52
  br label %63

63:                                               ; preds = %62, %36
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @snd_soc_jack_report(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
