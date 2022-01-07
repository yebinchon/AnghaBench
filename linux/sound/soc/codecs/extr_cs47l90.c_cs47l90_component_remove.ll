; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l90.c_cs47l90_component_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs47l90.c_cs47l90_component_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.cs47l90 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, %struct.madera* }
%struct.madera = type { i32, i32* }

@CS47L90_NUM_ADSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @cs47l90_component_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs47l90_component_remove(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.cs47l90*, align 8
  %4 = alloca %struct.madera*, align 8
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = call %struct.cs47l90* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.cs47l90* %7, %struct.cs47l90** %3, align 8
  %8 = load %struct.cs47l90*, %struct.cs47l90** %3, align 8
  %9 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.madera*, %struct.madera** %10, align 8
  store %struct.madera* %11, %struct.madera** %4, align 8
  %12 = load %struct.madera*, %struct.madera** %4, align 8
  %13 = getelementptr inbounds %struct.madera, %struct.madera* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.madera*, %struct.madera** %4, align 8
  %16 = getelementptr inbounds %struct.madera, %struct.madera* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = load %struct.madera*, %struct.madera** %4, align 8
  %18 = getelementptr inbounds %struct.madera, %struct.madera* %17, i32 0, i32 0
  %19 = call i32 @mutex_unlock(i32* %18)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %34, %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @CS47L90_NUM_ADSP, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load %struct.cs47l90*, %struct.cs47l90** %3, align 8
  %26 = getelementptr inbounds %struct.cs47l90, %struct.cs47l90* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %33 = call i32 @wm_adsp2_component_remove(i32* %31, %struct.snd_soc_component* %32)
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %20

37:                                               ; preds = %20
  ret void
}

declare dso_local %struct.cs47l90* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wm_adsp2_component_remove(i32*, %struct.snd_soc_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
