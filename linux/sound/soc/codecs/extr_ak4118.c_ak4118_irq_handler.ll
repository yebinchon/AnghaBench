; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4118.c_ak4118_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4118.c_ak4118_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol_new = type { i32 }
%struct.ak4118_priv = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_kcontrol = type { %struct.snd_ctl_elem_id }
%struct.snd_ctl_elem_id = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@ak4118_iec958_controls = common dso_local global %struct.snd_kcontrol_new* null, align 8
@SNDRV_CTL_EVENT_MASK_VALUE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ak4118_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4118_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ak4118_priv*, align 8
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca %struct.snd_kcontrol_new*, align 8
  %9 = alloca %struct.snd_kcontrol*, align 8
  %10 = alloca %struct.snd_ctl_elem_id*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.ak4118_priv*
  store %struct.ak4118_priv* %13, %struct.ak4118_priv** %6, align 8
  %14 = load %struct.ak4118_priv*, %struct.ak4118_priv** %6, align 8
  %15 = getelementptr inbounds %struct.ak4118_priv, %struct.ak4118_priv* %14, i32 0, i32 0
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %15, align 8
  store %struct.snd_soc_component* %16, %struct.snd_soc_component** %7, align 8
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %18 = icmp ne %struct.snd_soc_component* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %58

21:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %53, %21
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @ak4118_iec958_controls, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.snd_kcontrol_new* %24)
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %22
  %28 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** @ak4118_iec958_controls, align 8
  %29 = load i32, i32* %11, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %28, i64 %30
  store %struct.snd_kcontrol_new* %31, %struct.snd_kcontrol_new** %8, align 8
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %33 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %8, align 8
  %36 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.snd_kcontrol* @snd_soc_card_get_kcontrol(%struct.TYPE_2__* %34, i32 %37)
  store %struct.snd_kcontrol* %38, %struct.snd_kcontrol** %9, align 8
  %39 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %40 = icmp ne %struct.snd_kcontrol* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %27
  br label %53

42:                                               ; preds = %27
  %43 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %9, align 8
  %44 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %43, i32 0, i32 0
  store %struct.snd_ctl_elem_id* %44, %struct.snd_ctl_elem_id** %10, align 8
  %45 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %46 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SNDRV_CTL_EVENT_MASK_VALUE, align 4
  %51 = load %struct.snd_ctl_elem_id*, %struct.snd_ctl_elem_id** %10, align 8
  %52 = call i32 @snd_ctl_notify(i32 %49, i32 %50, %struct.snd_ctl_elem_id* %51)
  br label %53

53:                                               ; preds = %42, %41
  %54 = load i32, i32* %11, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %22

56:                                               ; preds = %22
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %19
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @ARRAY_SIZE(%struct.snd_kcontrol_new*) #1

declare dso_local %struct.snd_kcontrol* @snd_soc_card_get_kcontrol(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @snd_ctl_notify(i32, i32, %struct.snd_ctl_elem_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
