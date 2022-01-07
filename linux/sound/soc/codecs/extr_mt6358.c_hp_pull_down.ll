; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mt6358.c_hp_pull_down.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mt6358.c_hp_pull_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt6358_priv = type { i32 }

@MT6358_AUDDEC_ANA_CON4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt6358_priv*, i32)* @hp_pull_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hp_pull_down(%struct.mt6358_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.mt6358_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mt6358_priv* %0, %struct.mt6358_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %20, %8
  %10 = load i32, i32* %5, align 4
  %11 = icmp sle i32 %10, 6
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = load %struct.mt6358_priv*, %struct.mt6358_priv** %3, align 8
  %14 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MT6358_AUDDEC_ANA_CON4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @regmap_update_bits(i32 %15, i32 %16, i32 7, i32 %17)
  %19 = call i32 @usleep_range(i32 600, i32 700)
  br label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %9

23:                                               ; preds = %9
  br label %40

24:                                               ; preds = %2
  store i32 6, i32* %5, align 4
  br label %25

25:                                               ; preds = %36, %24
  %26 = load i32, i32* %5, align 4
  %27 = icmp sge i32 %26, 1
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load %struct.mt6358_priv*, %struct.mt6358_priv** %3, align 8
  %30 = getelementptr inbounds %struct.mt6358_priv, %struct.mt6358_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MT6358_AUDDEC_ANA_CON4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @regmap_update_bits(i32 %31, i32 %32, i32 7, i32 %33)
  %35 = call i32 @usleep_range(i32 600, i32 700)
  br label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %5, align 4
  br label %25

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39, %23
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
