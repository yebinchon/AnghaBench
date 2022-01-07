; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_pcm179x.c_xense_output_switch_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_pcm179x.c_xense_output_switch_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { %struct.oxygen* }
%struct.oxygen = type { i32, %struct.xonar_pcm179x* }
%struct.xonar_pcm179x = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@OXYGEN_GPIO_DATA = common dso_local global i32 0, align 4
@GPIO_XENSE_SPEAKERS = common dso_local global i32 0, align 4
@GPIO_ST_HP_REAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @xense_output_switch_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xense_output_switch_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.oxygen*, align 8
  %6 = alloca %struct.xonar_pcm179x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %9, i32 0, i32 0
  %11 = load %struct.oxygen*, %struct.oxygen** %10, align 8
  store %struct.oxygen* %11, %struct.oxygen** %5, align 8
  %12 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %13 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %12, i32 0, i32 1
  %14 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %13, align 8
  store %struct.xonar_pcm179x* %14, %struct.xonar_pcm179x** %6, align 8
  %15 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %16 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %19 = load i32, i32* @OXYGEN_GPIO_DATA, align 4
  %20 = call i32 @oxygen_read16(%struct.oxygen* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %23 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %49 [
    i32 0, label %29
    i32 1, label %35
    i32 2, label %42
  ]

29:                                               ; preds = %2
  %30 = load i32, i32* @GPIO_XENSE_SPEAKERS, align 4
  %31 = load i32, i32* @GPIO_ST_HP_REAR, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  br label %49

35:                                               ; preds = %2
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @GPIO_ST_HP_REAR, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @GPIO_XENSE_SPEAKERS, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  store i32 %41, i32* %8, align 4
  br label %49

42:                                               ; preds = %2
  %43 = load i32, i32* @GPIO_XENSE_SPEAKERS, align 4
  %44 = load i32, i32* @GPIO_ST_HP_REAR, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %2, %42, %35, %29
  %50 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %51 = load i32, i32* @OXYGEN_GPIO_DATA, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @oxygen_write16(%struct.oxygen* %50, i32 %51, i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @GPIO_XENSE_SPEAKERS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = load %struct.xonar_pcm179x*, %struct.xonar_pcm179x** %6, align 8
  %61 = getelementptr inbounds %struct.xonar_pcm179x, %struct.xonar_pcm179x* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %63 = call i32 @update_pcm1796_volume(%struct.oxygen* %62)
  %64 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  %65 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %67, %68
  %70 = zext i1 %69 to i32
  ret i32 %70
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @oxygen_read16(%struct.oxygen*, i32) #1

declare dso_local i32 @oxygen_write16(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @update_pcm1796_volume(%struct.oxygen*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
