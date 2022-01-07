; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_snd_pcm_hw_rule_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_lib.c_snd_pcm_hw_rule_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { i32, %struct.snd_pcm_hw_constraint_ranges* }
%struct.snd_pcm_hw_constraint_ranges = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @snd_pcm_hw_rule_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_hw_rule_ranges(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca %struct.snd_pcm_hw_params*, align 8
  %4 = alloca %struct.snd_pcm_hw_rule*, align 8
  %5 = alloca %struct.snd_pcm_hw_constraint_ranges*, align 8
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %3, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %4, align 8
  %6 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %6, i32 0, i32 1
  %8 = load %struct.snd_pcm_hw_constraint_ranges*, %struct.snd_pcm_hw_constraint_ranges** %7, align 8
  store %struct.snd_pcm_hw_constraint_ranges* %8, %struct.snd_pcm_hw_constraint_ranges** %5, align 8
  %9 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %10 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @hw_param_interval(%struct.snd_pcm_hw_params* %9, i32 %12)
  %14 = load %struct.snd_pcm_hw_constraint_ranges*, %struct.snd_pcm_hw_constraint_ranges** %5, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_hw_constraint_ranges, %struct.snd_pcm_hw_constraint_ranges* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.snd_pcm_hw_constraint_ranges*, %struct.snd_pcm_hw_constraint_ranges** %5, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_hw_constraint_ranges, %struct.snd_pcm_hw_constraint_ranges* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.snd_pcm_hw_constraint_ranges*, %struct.snd_pcm_hw_constraint_ranges** %5, align 8
  %21 = getelementptr inbounds %struct.snd_pcm_hw_constraint_ranges, %struct.snd_pcm_hw_constraint_ranges* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @snd_interval_ranges(i32 %13, i32 %16, i32 %19, i32 %22)
  ret i32 %23
}

declare dso_local i32 @snd_interval_ranges(i32, i32, i32, i32) #1

declare dso_local i32 @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
