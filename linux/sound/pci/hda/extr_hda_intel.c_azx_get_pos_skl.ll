; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_azx_get_pos_skl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_azx_get_pos_skl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i32 }
%struct.azx_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.azx*, %struct.azx_dev*)* @azx_get_pos_skl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_get_pos_skl(%struct.azx* %0, %struct.azx_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.azx*, align 8
  %5 = alloca %struct.azx_dev*, align 8
  store %struct.azx* %0, %struct.azx** %4, align 8
  store %struct.azx_dev* %1, %struct.azx_dev** %5, align 8
  %6 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %7 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.azx*, %struct.azx** %4, align 8
  %16 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %17 = call i32 @azx_skl_get_dpib_pos(%struct.azx* %15, %struct.azx_dev* %16)
  store i32 %17, i32* %3, align 4
  br label %26

18:                                               ; preds = %2
  %19 = call i32 @udelay(i32 20)
  %20 = load %struct.azx*, %struct.azx** %4, align 8
  %21 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %22 = call i32 @azx_skl_get_dpib_pos(%struct.azx* %20, %struct.azx_dev* %21)
  %23 = load %struct.azx*, %struct.azx** %4, align 8
  %24 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %25 = call i32 @azx_get_pos_posbuf(%struct.azx* %23, %struct.azx_dev* %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %18, %14
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @azx_skl_get_dpib_pos(%struct.azx*, %struct.azx_dev*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @azx_get_pos_posbuf(%struct.azx*, %struct.azx_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
