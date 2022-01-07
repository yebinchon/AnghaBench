; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_bd28623.c_bd28623_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_bd28623.c_bd28623_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bd28623_priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to enable supplies: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bd28623_priv*)* @bd28623_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd28623_power_on(%struct.bd28623_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bd28623_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.bd28623_priv* %0, %struct.bd28623_priv** %3, align 8
  %5 = load %struct.bd28623_priv*, %struct.bd28623_priv** %3, align 8
  %6 = getelementptr inbounds %struct.bd28623_priv, %struct.bd28623_priv* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @ARRAY_SIZE(i32 %7)
  %9 = load %struct.bd28623_priv*, %struct.bd28623_priv** %3, align 8
  %10 = getelementptr inbounds %struct.bd28623_priv, %struct.bd28623_priv* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @regulator_bulk_enable(i32 %8, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.bd28623_priv*, %struct.bd28623_priv** %3, align 8
  %17 = getelementptr inbounds %struct.bd28623_priv, %struct.bd28623_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %28

22:                                               ; preds = %1
  %23 = load %struct.bd28623_priv*, %struct.bd28623_priv** %3, align 8
  %24 = getelementptr inbounds %struct.bd28623_priv, %struct.bd28623_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @gpiod_set_value_cansleep(i32 %25, i32 0)
  %27 = call i32 @usleep_range(i32 300000, i32 400000)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %22, %15
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
