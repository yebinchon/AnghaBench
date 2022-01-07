; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_rule_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_aloop.c_rule_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_pcm_hw_rule = type { i32, %struct.loopback_pcm* }
%struct.loopback_pcm = type { %struct.TYPE_4__*, %struct.loopback_cable* }
%struct.TYPE_4__ = type { i32 }
%struct.loopback_cable = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.snd_mask = type { i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_rule*)* @rule_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rule_format(%struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_rule* %1) #0 {
  %3 = alloca %struct.snd_pcm_hw_params*, align 8
  %4 = alloca %struct.snd_pcm_hw_rule*, align 8
  %5 = alloca %struct.loopback_pcm*, align 8
  %6 = alloca %struct.loopback_cable*, align 8
  %7 = alloca %struct.snd_mask, align 8
  store %struct.snd_pcm_hw_params* %0, %struct.snd_pcm_hw_params** %3, align 8
  store %struct.snd_pcm_hw_rule* %1, %struct.snd_pcm_hw_rule** %4, align 8
  %8 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %8, i32 0, i32 1
  %10 = load %struct.loopback_pcm*, %struct.loopback_pcm** %9, align 8
  store %struct.loopback_pcm* %10, %struct.loopback_pcm** %5, align 8
  %11 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %12 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %11, i32 0, i32 1
  %13 = load %struct.loopback_cable*, %struct.loopback_cable** %12, align 8
  store %struct.loopback_cable* %13, %struct.loopback_cable** %6, align 8
  %14 = call i32 @snd_mask_none(%struct.snd_mask* %7)
  %15 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %16 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %21 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %7, i32 0, i32 0
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  store i8* %25, i8** %28, align 8
  %29 = load %struct.loopback_cable*, %struct.loopback_cable** %6, align 8
  %30 = getelementptr inbounds %struct.loopback_cable, %struct.loopback_cable* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 32
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = getelementptr inbounds %struct.snd_mask, %struct.snd_mask* %7, i32 0, i32 0
  %37 = load i8**, i8*** %36, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  store i8* %35, i8** %38, align 8
  %39 = load %struct.loopback_pcm*, %struct.loopback_pcm** %5, align 8
  %40 = getelementptr inbounds %struct.loopback_pcm, %struct.loopback_pcm* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %3, align 8
  %45 = load %struct.snd_pcm_hw_rule*, %struct.snd_pcm_hw_rule** %4, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_hw_rule, %struct.snd_pcm_hw_rule* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @hw_param_mask(%struct.snd_pcm_hw_params* %44, i32 %47)
  %49 = call i32 @snd_mask_refine(i32 %48, %struct.snd_mask* %7)
  ret i32 %49
}

declare dso_local i32 @snd_mask_none(%struct.snd_mask*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_mask_refine(i32, %struct.snd_mask*) #1

declare dso_local i32 @hw_param_mask(%struct.snd_pcm_hw_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
