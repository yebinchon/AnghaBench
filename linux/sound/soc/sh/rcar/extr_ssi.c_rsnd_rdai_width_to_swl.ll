; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_rdai_width_to_swl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_ssi.c_rsnd_rdai_width_to_swl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_dai = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.device = type { i32 }

@SWL_32 = common dso_local global i32 0, align 4
@SWL_24 = common dso_local global i32 0, align 4
@SWL_16 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unsupported slot width value: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsnd_dai*)* @rsnd_rdai_width_to_swl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsnd_rdai_width_to_swl(%struct.rsnd_dai* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsnd_dai*, align 8
  %4 = alloca %struct.rsnd_priv*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.rsnd_dai* %0, %struct.rsnd_dai** %3, align 8
  %7 = load %struct.rsnd_dai*, %struct.rsnd_dai** %3, align 8
  %8 = call %struct.rsnd_priv* @rsnd_rdai_to_priv(%struct.rsnd_dai* %7)
  store %struct.rsnd_priv* %8, %struct.rsnd_priv** %4, align 8
  %9 = load %struct.rsnd_priv*, %struct.rsnd_priv** %4, align 8
  %10 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %9)
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.rsnd_dai*, %struct.rsnd_dai** %3, align 8
  %12 = call i32 @rsnd_rdai_width_get(%struct.rsnd_dai* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %20 [
    i32 32, label %14
    i32 24, label %16
    i32 16, label %18
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* @SWL_32, align 4
  store i32 %15, i32* %2, align 4
  br label %24

16:                                               ; preds = %1
  %17 = load i32, i32* @SWL_24, align 4
  store i32 %17, i32* %2, align 4
  br label %24

18:                                               ; preds = %1
  %19 = load i32, i32* @SWL_16, align 4
  store i32 %19, i32* %2, align 4
  br label %24

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %20, %18, %16, %14
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.rsnd_priv* @rsnd_rdai_to_priv(%struct.rsnd_dai*) #1

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local i32 @rsnd_rdai_width_get(%struct.rsnd_dai*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
