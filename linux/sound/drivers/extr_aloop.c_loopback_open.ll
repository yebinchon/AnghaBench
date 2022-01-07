; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_loopback_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_loopback_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, i64, %struct.loopback*, %struct.snd_pcm_runtime* }
%struct.loopback = type { i32, %struct.loopback_cable*** }
%struct.loopback_cable = type { i32, %struct.loopback_pcm**, i8* }
%struct.loopback_pcm = type { %struct.loopback_cable*, i32, %struct.snd_pcm_substream*, %struct.loopback* }
%struct.snd_pcm_runtime = type { i8*, i32, %struct.loopback_pcm* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@loopback_timer_function = common dso_local global i32 0, align 4
@loopback_pcm_hardware = common dso_local global i8* null, align 8
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@rule_format = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@rule_rate = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@rule_channels = common dso_local global i32 0, align 4
@loopback_runtime_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @loopback_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loopback_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.loopback*, align 8
  %5 = alloca %struct.loopback_pcm*, align 8
  %6 = alloca %struct.loopback_cable*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 3
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %3, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 2
  %14 = load %struct.loopback*, %struct.loopback** %13, align 8
  store %struct.loopback* %14, %struct.loopback** %4, align 8
  store %struct.loopback_cable* null, %struct.loopback_cable** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %16 = call i32 @get_cable_index(%struct.snd_pcm_substream* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.loopback*, %struct.loopback** %4, align 8
  %18 = getelementptr inbounds %struct.loopback, %struct.loopback* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kzalloc(i32 32, i32 %20)
  %22 = bitcast i8* %21 to %struct.loopback_pcm*
  store %struct.loopback_pcm* %22, %struct.loopback_pcm** %5, align 8
  %23 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %24 = icmp ne %struct.loopback_pcm* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %152

28:                                               ; preds = %1
  %29 = load %struct.loopback*, %struct.loopback** %4, align 8
  %30 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %31 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %30, i32 0, i32 3
  store %struct.loopback* %29, %struct.loopback** %31, align 8
  %32 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %33 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %34 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %33, i32 0, i32 2
  store %struct.snd_pcm_substream* %32, %struct.snd_pcm_substream** %34, align 8
  %35 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %36 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %35, i32 0, i32 1
  %37 = load i32, i32* @loopback_timer_function, align 4
  %38 = call i32 @timer_setup(i32* %36, i32 %37, i32 0)
  %39 = load %struct.loopback*, %struct.loopback** %4, align 8
  %40 = getelementptr inbounds %struct.loopback, %struct.loopback* %39, i32 0, i32 1
  %41 = load %struct.loopback_cable***, %struct.loopback_cable**** %40, align 8
  %42 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.loopback_cable**, %struct.loopback_cable*** %41, i64 %44
  %46 = load %struct.loopback_cable**, %struct.loopback_cable*** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.loopback_cable*, %struct.loopback_cable** %46, i64 %48
  %50 = load %struct.loopback_cable*, %struct.loopback_cable** %49, align 8
  store %struct.loopback_cable* %50, %struct.loopback_cable** %6, align 8
  %51 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %52 = icmp ne %struct.loopback_cable* %51, null
  br i1 %52, label %81, label %53

53:                                               ; preds = %28
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i8* @kzalloc(i32 24, i32 %54)
  %56 = bitcast i8* %55 to %struct.loopback_cable*
  store %struct.loopback_cable* %56, %struct.loopback_cable** %6, align 8
  %57 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %58 = icmp ne %struct.loopback_cable* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  br label %152

62:                                               ; preds = %53
  %63 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %64 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %63, i32 0, i32 0
  %65 = call i32 @spin_lock_init(i32* %64)
  %66 = load i8*, i8** @loopback_pcm_hardware, align 8
  %67 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %68 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %70 = load %struct.loopback*, %struct.loopback** %4, align 8
  %71 = getelementptr inbounds %struct.loopback, %struct.loopback* %70, i32 0, i32 1
  %72 = load %struct.loopback_cable***, %struct.loopback_cable**** %71, align 8
  %73 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %74 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.loopback_cable**, %struct.loopback_cable*** %72, i64 %75
  %77 = load %struct.loopback_cable**, %struct.loopback_cable*** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.loopback_cable*, %struct.loopback_cable** %77, i64 %79
  store %struct.loopback_cable* %69, %struct.loopback_cable** %80, align 8
  br label %81

81:                                               ; preds = %62, %28
  %82 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %83 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %84 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %83, i32 0, i32 0
  store %struct.loopback_cable* %82, %struct.loopback_cable** %84, align 8
  %85 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %86 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %87 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %85, i32 %86)
  %88 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %89 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %90 = load i32, i32* @rule_format, align 4
  %91 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %92 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %93 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %88, i32 0, i32 %89, i32 %90, %struct.loopback_pcm* %91, i32 %92, i32 -1)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %81
  br label %152

97:                                               ; preds = %81
  %98 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %99 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %100 = load i32, i32* @rule_rate, align 4
  %101 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %102 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %103 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %98, i32 0, i32 %99, i32 %100, %struct.loopback_pcm* %101, i32 %102, i32 -1)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %97
  br label %152

107:                                              ; preds = %97
  %108 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %109 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %110 = load i32, i32* @rule_channels, align 4
  %111 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %112 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %113 = call i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime* %108, i32 0, i32 %109, i32 %110, %struct.loopback_pcm* %111, i32 %112, i32 -1)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  br label %152

117:                                              ; preds = %107
  %118 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %119 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %120 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %119, i32 0, i32 2
  store %struct.loopback_pcm* %118, %struct.loopback_pcm** %120, align 8
  %121 = load i32, i32* @loopback_runtime_free, align 4
  %122 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %123 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 8
  %124 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %125 = call i64 @get_notify(%struct.loopback_pcm* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %117
  %128 = load i8*, i8** @loopback_pcm_hardware, align 8
  %129 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %130 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  br label %137

131:                                              ; preds = %117
  %132 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %133 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %132, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %136 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %135, i32 0, i32 0
  store i8* %134, i8** %136, align 8
  br label %137

137:                                              ; preds = %131, %127
  %138 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %139 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %138, i32 0, i32 0
  %140 = call i32 @spin_lock_irq(i32* %139)
  %141 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %142 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %143 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %142, i32 0, i32 1
  %144 = load %struct.loopback_pcm**, %struct.loopback_pcm*** %143, align 8
  %145 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %146 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.loopback_pcm*, %struct.loopback_pcm** %144, i64 %147
  store %struct.loopback_pcm* %141, %struct.loopback_pcm** %148, align 8
  %149 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %150 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %149, i32 0, i32 0
  %151 = call i32 @spin_unlock_irq(i32* %150)
  br label %152

152:                                              ; preds = %137, %116, %106, %96, %59, %25
  %153 = load i32, i32* %7, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %157 = call i32 @free_cable(%struct.snd_pcm_substream* %156)
  %158 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %159 = call i32 @kfree(%struct.loopback_pcm* %158)
  br label %160

160:                                              ; preds = %155, %152
  %161 = load %struct.loopback*, %struct.loopback** %4, align 8
  %162 = getelementptr inbounds %struct.loopback, %struct.loopback* %161, i32 0, i32 0
  %163 = call i32 @mutex_unlock(i32* %162)
  %164 = load i32, i32* %7, align 4
  ret i32 %164
}

declare dso_local i32 @get_cable_index(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @snd_pcm_hw_rule_add(%struct.snd_pcm_runtime*, i32, i32, i32, %struct.loopback_pcm*, i32, i32) #1

declare dso_local i64 @get_notify(%struct.loopback_pcm*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @free_cable(%struct.snd_pcm_substream*) #1

declare dso_local i32 @kfree(%struct.loopback_pcm*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
