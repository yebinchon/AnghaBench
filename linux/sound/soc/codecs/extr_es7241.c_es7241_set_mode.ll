; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es7241.c_es7241_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es7241.c_es7241_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es7241_data = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es7241_data*, i32, i32)* @es7241_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @es7241_set_mode(%struct.es7241_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.es7241_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.es7241_data* %0, %struct.es7241_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.es7241_data*, %struct.es7241_data** %4, align 8
  %8 = getelementptr inbounds %struct.es7241_data, %struct.es7241_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @gpiod_set_value_cansleep(i32 %9, i32 0)
  %11 = load %struct.es7241_data*, %struct.es7241_data** %4, align 8
  %12 = getelementptr inbounds %struct.es7241_data, %struct.es7241_data* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @gpiod_set_value_cansleep(i32 %13, i32 %14)
  %16 = load %struct.es7241_data*, %struct.es7241_data** %4, align 8
  %17 = getelementptr inbounds %struct.es7241_data, %struct.es7241_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @gpiod_set_value_cansleep(i32 %18, i32 %19)
  %21 = load %struct.es7241_data*, %struct.es7241_data** %4, align 8
  %22 = getelementptr inbounds %struct.es7241_data, %struct.es7241_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @gpiod_set_value_cansleep(i32 %23, i32 1)
  ret void
}

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
