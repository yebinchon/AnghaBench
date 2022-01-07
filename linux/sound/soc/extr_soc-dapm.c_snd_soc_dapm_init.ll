; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_context = type { i32, i32, i32, i32, i32, %struct.snd_soc_component*, %struct.snd_soc_card* }
%struct.snd_soc_card = type { i32, i32 }
%struct.snd_soc_component = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@SND_SOC_BIAS_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_soc_dapm_init(%struct.snd_soc_dapm_context* %0, %struct.snd_soc_card* %1, %struct.snd_soc_component* %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca %struct.snd_soc_card*, align 8
  %6 = alloca %struct.snd_soc_component*, align 8
  store %struct.snd_soc_dapm_context* %0, %struct.snd_soc_dapm_context** %4, align 8
  store %struct.snd_soc_card* %1, %struct.snd_soc_card** %5, align 8
  store %struct.snd_soc_component* %2, %struct.snd_soc_component** %6, align 8
  %7 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %8 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %8, i32 0, i32 6
  store %struct.snd_soc_card* %7, %struct.snd_soc_card** %9, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %11 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %11, i32 0, i32 5
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %12, align 8
  %13 = load i32, i32* @SND_SOC_BIAS_OFF, align 4
  %14 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 8
  %16 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %17 = icmp ne %struct.snd_soc_component* %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %3
  %19 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %20 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %23 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %25 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %33 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %35 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %40 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  br label %47

41:                                               ; preds = %3
  %42 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %43 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %46 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %41, %18
  %48 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %49 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %48, i32 0, i32 1
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %52 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %51, i32 0, i32 1
  %53 = load %struct.snd_soc_card*, %struct.snd_soc_card** %5, align 8
  %54 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %53, i32 0, i32 0
  %55 = call i32 @list_add(i32* %52, i32* %54)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
