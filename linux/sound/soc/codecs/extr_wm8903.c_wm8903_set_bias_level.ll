; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8903.c_wm8903_set_bias_level.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8903.c_wm8903_set_bias_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@WM8903_VMID_CONTROL_0 = common dso_local global i32 0, align 4
@WM8903_VMID_RES_MASK = common dso_local global i32 0, align 4
@WM8903_VMID_RES_50K = common dso_local global i32 0, align 4
@WM8903_BIAS_CONTROL_0 = common dso_local global i32 0, align 4
@WM8903_POBCTRL = common dso_local global i32 0, align 4
@WM8903_ISEL_MASK = common dso_local global i32 0, align 4
@WM8903_STARTUP_BIAS_ENA = common dso_local global i32 0, align 4
@WM8903_BIAS_ENA = common dso_local global i32 0, align 4
@WM8903_ISEL_SHIFT = common dso_local global i32 0, align 4
@WM8903_ANALOGUE_SPK_OUTPUT_CONTROL_0 = common dso_local global i32 0, align 4
@WM8903_SPK_DISCHARGE = common dso_local global i32 0, align 4
@WM8903_POWER_MANAGEMENT_5 = common dso_local global i32 0, align 4
@WM8903_SPKL_ENA = common dso_local global i32 0, align 4
@WM8903_SPKR_ENA = common dso_local global i32 0, align 4
@WM8903_VMID_TIE_ENA = common dso_local global i32 0, align 4
@WM8903_BUFIO_ENA = common dso_local global i32 0, align 4
@WM8903_VMID_IO_ENA = common dso_local global i32 0, align 4
@WM8903_VMID_SOFT_MASK = common dso_local global i32 0, align 4
@WM8903_VMID_BUF_ENA = common dso_local global i32 0, align 4
@WM8903_VMID_SOFT_SHIFT = common dso_local global i32 0, align 4
@WM8903_VMID_RES_250K = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Enabling Class W\0A\00", align 1
@WM8903_CLASS_W_0 = common dso_local global i32 0, align 4
@WM8903_CP_DYN_FREQ = common dso_local global i32 0, align 4
@WM8903_CP_DYN_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm8903_set_bias_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8903_set_bias_level(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %155 [
    i32 130, label %6
    i32 129, label %7
    i32 128, label %13
    i32 131, label %121
  ]

6:                                                ; preds = %2
  br label %155

7:                                                ; preds = %2
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = load i32, i32* @WM8903_VMID_CONTROL_0, align 4
  %10 = load i32, i32* @WM8903_VMID_RES_MASK, align 4
  %11 = load i32, i32* @WM8903_VMID_RES_50K, align 4
  %12 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %8, i32 %9, i32 %10, i32 %11)
  br label %155

13:                                               ; preds = %2
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %15 = call i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component* %14)
  %16 = icmp eq i32 %15, 131
  br i1 %16, label %17, label %115

17:                                               ; preds = %13
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %19 = load i32, i32* @WM8903_BIAS_CONTROL_0, align 4
  %20 = load i32, i32* @WM8903_POBCTRL, align 4
  %21 = load i32, i32* @WM8903_ISEL_MASK, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @WM8903_STARTUP_BIAS_ENA, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @WM8903_BIAS_ENA, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @WM8903_POBCTRL, align 4
  %28 = load i32, i32* @WM8903_ISEL_SHIFT, align 4
  %29 = shl i32 2, %28
  %30 = or i32 %27, %29
  %31 = load i32, i32* @WM8903_STARTUP_BIAS_ENA, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %18, i32 %19, i32 %26, i32 %32)
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %35 = load i32, i32* @WM8903_ANALOGUE_SPK_OUTPUT_CONTROL_0, align 4
  %36 = load i32, i32* @WM8903_SPK_DISCHARGE, align 4
  %37 = load i32, i32* @WM8903_SPK_DISCHARGE, align 4
  %38 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %34, i32 %35, i32 %36, i32 %37)
  %39 = call i32 @msleep(i32 33)
  %40 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %41 = load i32, i32* @WM8903_POWER_MANAGEMENT_5, align 4
  %42 = load i32, i32* @WM8903_SPKL_ENA, align 4
  %43 = load i32, i32* @WM8903_SPKR_ENA, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @WM8903_SPKL_ENA, align 4
  %46 = load i32, i32* @WM8903_SPKR_ENA, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %40, i32 %41, i32 %44, i32 %47)
  %49 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %50 = load i32, i32* @WM8903_ANALOGUE_SPK_OUTPUT_CONTROL_0, align 4
  %51 = load i32, i32* @WM8903_SPK_DISCHARGE, align 4
  %52 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %49, i32 %50, i32 %51, i32 0)
  %53 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %54 = load i32, i32* @WM8903_VMID_CONTROL_0, align 4
  %55 = load i32, i32* @WM8903_VMID_TIE_ENA, align 4
  %56 = load i32, i32* @WM8903_BUFIO_ENA, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @WM8903_VMID_IO_ENA, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @WM8903_VMID_SOFT_MASK, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @WM8903_VMID_RES_MASK, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @WM8903_VMID_BUF_ENA, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @WM8903_VMID_TIE_ENA, align 4
  %67 = load i32, i32* @WM8903_BUFIO_ENA, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @WM8903_VMID_IO_ENA, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @WM8903_VMID_SOFT_SHIFT, align 4
  %72 = shl i32 2, %71
  %73 = or i32 %70, %72
  %74 = load i32, i32* @WM8903_VMID_RES_250K, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @WM8903_VMID_BUF_ENA, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %53, i32 %54, i32 %65, i32 %77)
  %79 = call i32 @msleep(i32 129)
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %81 = load i32, i32* @WM8903_POWER_MANAGEMENT_5, align 4
  %82 = load i32, i32* @WM8903_SPKL_ENA, align 4
  %83 = load i32, i32* @WM8903_SPKR_ENA, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %80, i32 %81, i32 %84, i32 0)
  %86 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %87 = load i32, i32* @WM8903_VMID_CONTROL_0, align 4
  %88 = load i32, i32* @WM8903_VMID_SOFT_MASK, align 4
  %89 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %86, i32 %87, i32 %88, i32 0)
  %90 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %91 = load i32, i32* @WM8903_VMID_CONTROL_0, align 4
  %92 = load i32, i32* @WM8903_VMID_RES_MASK, align 4
  %93 = load i32, i32* @WM8903_VMID_RES_50K, align 4
  %94 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %90, i32 %91, i32 %92, i32 %93)
  %95 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %96 = load i32, i32* @WM8903_BIAS_CONTROL_0, align 4
  %97 = load i32, i32* @WM8903_BIAS_ENA, align 4
  %98 = load i32, i32* @WM8903_POBCTRL, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @WM8903_BIAS_ENA, align 4
  %101 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %95, i32 %96, i32 %99, i32 %100)
  %102 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %103 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @dev_dbg(i32 %104, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %106 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %107 = load i32, i32* @WM8903_CLASS_W_0, align 4
  %108 = load i32, i32* @WM8903_CP_DYN_FREQ, align 4
  %109 = load i32, i32* @WM8903_CP_DYN_V, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @WM8903_CP_DYN_FREQ, align 4
  %112 = load i32, i32* @WM8903_CP_DYN_V, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %106, i32 %107, i32 %110, i32 %113)
  br label %115

115:                                              ; preds = %17, %13
  %116 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %117 = load i32, i32* @WM8903_VMID_CONTROL_0, align 4
  %118 = load i32, i32* @WM8903_VMID_RES_MASK, align 4
  %119 = load i32, i32* @WM8903_VMID_RES_250K, align 4
  %120 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %116, i32 %117, i32 %118, i32 %119)
  br label %155

121:                                              ; preds = %2
  %122 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %123 = load i32, i32* @WM8903_BIAS_CONTROL_0, align 4
  %124 = load i32, i32* @WM8903_BIAS_ENA, align 4
  %125 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %122, i32 %123, i32 %124, i32 0)
  %126 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %127 = load i32, i32* @WM8903_VMID_CONTROL_0, align 4
  %128 = load i32, i32* @WM8903_VMID_SOFT_MASK, align 4
  %129 = load i32, i32* @WM8903_VMID_SOFT_SHIFT, align 4
  %130 = shl i32 2, %129
  %131 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %126, i32 %127, i32 %128, i32 %130)
  %132 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %133 = load i32, i32* @WM8903_VMID_CONTROL_0, align 4
  %134 = load i32, i32* @WM8903_VMID_BUF_ENA, align 4
  %135 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %132, i32 %133, i32 %134, i32 0)
  %136 = call i32 @msleep(i32 290)
  %137 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %138 = load i32, i32* @WM8903_VMID_CONTROL_0, align 4
  %139 = load i32, i32* @WM8903_VMID_TIE_ENA, align 4
  %140 = load i32, i32* @WM8903_BUFIO_ENA, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @WM8903_VMID_IO_ENA, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @WM8903_VMID_RES_MASK, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @WM8903_VMID_SOFT_MASK, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @WM8903_VMID_BUF_ENA, align 4
  %149 = or i32 %147, %148
  %150 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %137, i32 %138, i32 %149, i32 0)
  %151 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %152 = load i32, i32* @WM8903_BIAS_CONTROL_0, align 4
  %153 = load i32, i32* @WM8903_STARTUP_BIAS_ENA, align 4
  %154 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %151, i32 %152, i32 %153, i32 0)
  br label %155

155:                                              ; preds = %2, %121, %115, %7, %6
  ret i32 0
}

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

declare dso_local i32 @snd_soc_component_get_bias_level(%struct.snd_soc_component*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
