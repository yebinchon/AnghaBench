; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_virmidi.c_snd_virmidi_use.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_virmidi.c_snd_virmidi_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_port_subscribe = type { i32 }
%struct.snd_virmidi_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@SNDRV_VIRMIDI_USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.snd_seq_port_subscribe*)* @snd_virmidi_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_virmidi_use(i8* %0, %struct.snd_seq_port_subscribe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_seq_port_subscribe*, align 8
  %6 = alloca %struct.snd_virmidi_dev*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.snd_seq_port_subscribe* %1, %struct.snd_seq_port_subscribe** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.snd_virmidi_dev*
  store %struct.snd_virmidi_dev* %8, %struct.snd_virmidi_dev** %6, align 8
  %9 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %6, align 8
  %10 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @try_module_get(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EFAULT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @SNDRV_VIRMIDI_USE, align 4
  %21 = load %struct.snd_virmidi_dev*, %struct.snd_virmidi_dev** %6, align 8
  %22 = getelementptr inbounds %struct.snd_virmidi_dev, %struct.snd_virmidi_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %19, %16
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @try_module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
