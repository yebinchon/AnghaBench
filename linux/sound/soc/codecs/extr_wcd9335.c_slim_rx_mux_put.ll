; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_slim_rx_mux_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_slim_rx_mux_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.snd_soc_dapm_widget = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.wcd9335_codec = type { i32, i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.soc_enum = type { i32 }
%struct.snd_soc_dapm_update = type { i32 }

@AIF1_PB = common dso_local global i64 0, align 8
@AIF2_PB = common dso_local global i64 0, align 8
@AIF3_PB = common dso_local global i64 0, align 8
@AIF4_PB = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Unknown AIF %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @slim_rx_mux_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slim_rx_mux_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_soc_dapm_widget*, align 8
  %7 = alloca %struct.wcd9335_codec*, align 8
  %8 = alloca %struct.soc_enum*, align 8
  %9 = alloca %struct.snd_soc_dapm_update*, align 8
  %10 = alloca i64, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %12 = call %struct.snd_soc_dapm_widget* @snd_soc_dapm_kcontrol_widget(%struct.snd_kcontrol* %11)
  store %struct.snd_soc_dapm_widget* %12, %struct.snd_soc_dapm_widget** %6, align 8
  %13 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %6, align 8
  %14 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %13, i32 0, i32 1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.wcd9335_codec* @dev_get_drvdata(i32 %17)
  store %struct.wcd9335_codec* %18, %struct.wcd9335_codec** %7, align 8
  %19 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %20 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.soc_enum*
  store %struct.soc_enum* %22, %struct.soc_enum** %8, align 8
  store %struct.snd_soc_dapm_update* null, %struct.snd_soc_dapm_update** %9, align 8
  %23 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %6, align 8
  %24 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  %26 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %27 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %7, align 8
  %34 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %7, align 8
  %36 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %102 [
    i32 0, label %38
    i32 1, label %46
    i32 2, label %60
    i32 3, label %74
    i32 4, label %88
  ]

38:                                               ; preds = %2
  %39 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %7, align 8
  %40 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %39, i32 0, i32 3
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = call i32 @list_del_init(i32* %44)
  br label %110

46:                                               ; preds = %2
  %47 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %7, align 8
  %48 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %47, i32 0, i32 3
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %7, align 8
  %54 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %53, i32 0, i32 2
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = load i64, i64* @AIF1_PB, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = call i32 @list_add_tail(i32* %52, i32* %58)
  br label %110

60:                                               ; preds = %2
  %61 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %7, align 8
  %62 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %61, i32 0, i32 3
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %7, align 8
  %68 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %67, i32 0, i32 2
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = load i64, i64* @AIF2_PB, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = call i32 @list_add_tail(i32* %66, i32* %72)
  br label %110

74:                                               ; preds = %2
  %75 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %7, align 8
  %76 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %75, i32 0, i32 3
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %7, align 8
  %82 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %81, i32 0, i32 2
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = load i64, i64* @AIF3_PB, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = call i32 @list_add_tail(i32* %80, i32* %86)
  br label %110

88:                                               ; preds = %2
  %89 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %7, align 8
  %90 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %89, i32 0, i32 3
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = load i64, i64* %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %7, align 8
  %96 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %95, i32 0, i32 2
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = load i64, i64* @AIF4_PB, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = call i32 @list_add_tail(i32* %94, i32* %100)
  br label %110

102:                                              ; preds = %2
  %103 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %7, align 8
  %104 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %7, align 8
  %107 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @dev_err(i32 %105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %108)
  br label %121

110:                                              ; preds = %88, %74, %60, %46, %38
  %111 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %6, align 8
  %112 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %111, i32 0, i32 1
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %115 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %7, align 8
  %116 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.soc_enum*, %struct.soc_enum** %8, align 8
  %119 = load %struct.snd_soc_dapm_update*, %struct.snd_soc_dapm_update** %9, align 8
  %120 = call i32 @snd_soc_dapm_mux_update_power(%struct.TYPE_10__* %113, %struct.snd_kcontrol* %114, i32 %117, %struct.soc_enum* %118, %struct.snd_soc_dapm_update* %119)
  store i32 0, i32* %3, align 4
  br label %124

121:                                              ; preds = %102
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %121, %110
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.snd_soc_dapm_widget* @snd_soc_dapm_kcontrol_widget(%struct.snd_kcontrol*) #1

declare dso_local %struct.wcd9335_codec* @dev_get_drvdata(i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_dapm_mux_update_power(%struct.TYPE_10__*, %struct.snd_kcontrol*, i32, %struct.soc_enum*, %struct.snd_soc_dapm_update*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
