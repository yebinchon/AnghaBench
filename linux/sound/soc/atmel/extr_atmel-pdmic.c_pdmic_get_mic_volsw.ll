; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-pdmic.c_pdmic_get_mic_volsw.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel-pdmic.c_pdmic_get_mic_volsw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.snd_soc_component = type { i32 }

@PDMIC_DSPR1 = common dso_local global i32 0, align 4
@PDMIC_DSPR1_DGAIN_MASK = common dso_local global i32 0, align 4
@PDMIC_DSPR1_DGAIN_SHIFT = common dso_local global i32 0, align 4
@PDMIC_DSPR0 = common dso_local global i32 0, align 4
@PDMIC_DSPR0_SCALE_MASK = common dso_local global i32 0, align 4
@PDMIC_DSPR0_SCALE_SHIFT = common dso_local global i32 0, align 4
@mic_gain_table = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @pdmic_get_mic_volsw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdmic_get_mic_volsw(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol* %9)
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %5, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %12 = load i32, i32* @PDMIC_DSPR1, align 4
  %13 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %11, i32 %12)
  %14 = load i32, i32* @PDMIC_DSPR1_DGAIN_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @PDMIC_DSPR1_DGAIN_SHIFT, align 4
  %17 = lshr i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %19 = load i32, i32* @PDMIC_DSPR0, align 4
  %20 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %18, i32 %19)
  %21 = load i32, i32* @PDMIC_DSPR0_SCALE_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @PDMIC_DSPR0_SCALE_SHIFT, align 4
  %24 = lshr i32 %22, %23
  store i32 %24, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %57, %2
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mic_gain_table, align 8
  %28 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %25
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mic_gain_table, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %30
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mic_gain_table, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %39
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %51 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %49, i32* %55, align 4
  br label %56

56:                                               ; preds = %48, %39, %30
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %25

60:                                               ; preds = %25
  ret i32 0
}

declare dso_local %struct.snd_soc_component* @snd_soc_kcontrol_component(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
