; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_virmidi.c_snd_virmidi_unsubscribe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_virmidi.c_snd_virmidi_unsubscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_port_subscribe = type { i32 }
%struct.snd_virmidi_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@SNDRV_VIRMIDI_SUBSCRIBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.snd_seq_port_subscribe*)* @snd_virmidi_unsubscribe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_virmidi_unsubscribe(i8* %0, %struct.snd_seq_port_subscribe* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.snd_seq_port_subscribe*, align 8
  %5 = alloca %struct.snd_virmidi_dev*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.snd_seq_port_subscribe* %1, %struct.snd_seq_port_subscribe** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.snd_virmidi_dev*
  store %struct.snd_virmidi_dev* %7, %struct.snd_virmidi_dev** %5, align 8
  %8 = load i32, i32* @SNDRV_VIRMIDI_SUBSCRIBE, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %5, align 8
  %11 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %5, align 8
  %15 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @module_put(i32 %18)
  ret i32 0
}

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
