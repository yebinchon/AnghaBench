; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ux500/extr_mop500_ab8500.c_mop500_ab8500_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ux500/extr_mop500_ab8500.c_mop500_ab8500_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32 }
%struct.mop500_ab8500_drvdata = type { i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mop500_ab8500_remove(%struct.snd_soc_card* %0) #0 {
  %2 = alloca %struct.snd_soc_card*, align 8
  %3 = alloca %struct.mop500_ab8500_drvdata*, align 8
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %2, align 8
  %4 = load %struct.snd_soc_card*, %struct.snd_soc_card** %2, align 8
  %5 = call %struct.mop500_ab8500_drvdata* @snd_soc_card_get_drvdata(%struct.snd_soc_card* %4)
  store %struct.mop500_ab8500_drvdata* %5, %struct.mop500_ab8500_drvdata** %3, align 8
  %6 = load %struct.mop500_ab8500_drvdata*, %struct.mop500_ab8500_drvdata** %3, align 8
  %7 = getelementptr inbounds %struct.mop500_ab8500_drvdata, %struct.mop500_ab8500_drvdata* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.mop500_ab8500_drvdata*, %struct.mop500_ab8500_drvdata** %3, align 8
  %12 = getelementptr inbounds %struct.mop500_ab8500_drvdata, %struct.mop500_ab8500_drvdata* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @clk_put(i32* %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.mop500_ab8500_drvdata*, %struct.mop500_ab8500_drvdata** %3, align 8
  %17 = getelementptr inbounds %struct.mop500_ab8500_drvdata, %struct.mop500_ab8500_drvdata* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.mop500_ab8500_drvdata*, %struct.mop500_ab8500_drvdata** %3, align 8
  %22 = getelementptr inbounds %struct.mop500_ab8500_drvdata, %struct.mop500_ab8500_drvdata* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @clk_put(i32* %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.mop500_ab8500_drvdata*, %struct.mop500_ab8500_drvdata** %3, align 8
  %27 = getelementptr inbounds %struct.mop500_ab8500_drvdata, %struct.mop500_ab8500_drvdata* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.mop500_ab8500_drvdata*, %struct.mop500_ab8500_drvdata** %3, align 8
  %32 = getelementptr inbounds %struct.mop500_ab8500_drvdata, %struct.mop500_ab8500_drvdata* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @clk_put(i32* %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.snd_soc_card*, %struct.snd_soc_card** %2, align 8
  %37 = load %struct.mop500_ab8500_drvdata*, %struct.mop500_ab8500_drvdata** %3, align 8
  %38 = call i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card* %36, %struct.mop500_ab8500_drvdata* %37)
  ret void
}

declare dso_local %struct.mop500_ab8500_drvdata* @snd_soc_card_get_drvdata(%struct.snd_soc_card*) #1

declare dso_local i32 @clk_put(i32*) #1

declare dso_local i32 @snd_soc_card_set_drvdata(%struct.snd_soc_card*, %struct.mop500_ab8500_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
