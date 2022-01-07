; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_bd28623.c_bd28623_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_bd28623.c_bd28623_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bd28623_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bd28623_priv*)* @bd28623_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bd28623_power_off(%struct.bd28623_priv* %0) #0 {
  %2 = alloca %struct.bd28623_priv*, align 8
  store %struct.bd28623_priv* %0, %struct.bd28623_priv** %2, align 8
  %3 = load %struct.bd28623_priv*, %struct.bd28623_priv** %2, align 8
  %4 = getelementptr inbounds %struct.bd28623_priv, %struct.bd28623_priv* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @gpiod_set_value_cansleep(i32 %5, i32 1)
  %7 = load %struct.bd28623_priv*, %struct.bd28623_priv** %2, align 8
  %8 = getelementptr inbounds %struct.bd28623_priv, %struct.bd28623_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ARRAY_SIZE(i32 %9)
  %11 = load %struct.bd28623_priv*, %struct.bd28623_priv** %2, align 8
  %12 = getelementptr inbounds %struct.bd28623_priv, %struct.bd28623_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @regulator_bulk_disable(i32 %10, i32 %13)
  ret void
}

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
