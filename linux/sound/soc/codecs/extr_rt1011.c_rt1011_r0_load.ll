; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1011.c_rt1011_r0_load.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt1011.c_rt1011_r0_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt1011_priv = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RT1011_INIT_RECIPROCAL_REG_24_16 = common dso_local global i32 0, align 4
@RT1011_INIT_RECIPROCAL_REG_15_0 = common dso_local global i32 0, align 4
@RT1011_SPK_TEMP_PROTECT_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt1011_priv*)* @rt1011_r0_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1011_r0_load(%struct.rt1011_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt1011_priv*, align 8
  store %struct.rt1011_priv* %0, %struct.rt1011_priv** %3, align 8
  %4 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %5 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %36

11:                                               ; preds = %1
  %12 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %13 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @RT1011_INIT_RECIPROCAL_REG_24_16, align 4
  %16 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %17 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 16
  %20 = and i32 %19, 511
  %21 = call i32 @regmap_write(i32 %14, i32 %15, i32 %20)
  %22 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %23 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @RT1011_INIT_RECIPROCAL_REG_15_0, align 4
  %26 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %27 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 65535
  %30 = call i32 @regmap_write(i32 %24, i32 %25, i32 %29)
  %31 = load %struct.rt1011_priv*, %struct.rt1011_priv** %3, align 8
  %32 = getelementptr inbounds %struct.rt1011_priv, %struct.rt1011_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @RT1011_SPK_TEMP_PROTECT_4, align 4
  %35 = call i32 @regmap_write(i32 %33, i32 %34, i32 16512)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %11, %8
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
