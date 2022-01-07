; ModuleID = '/home/carl/AnghaBench/linux/sound/atmel/extr_ac97c.c_atmel_ac97c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/atmel/extr_ac97c.c_atmel_ac97c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.snd_card = type { i32 }
%struct.atmel_ac97c = type { i32, i32, i32 }

@CAMR = common dso_local global i32 0, align 4
@COMR = common dso_local global i32 0, align 4
@MR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atmel_ac97c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_ac97c_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.snd_card*, align 8
  %4 = alloca %struct.atmel_ac97c*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.snd_card* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.snd_card* %6, %struct.snd_card** %3, align 8
  %7 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %8 = call %struct.atmel_ac97c* @get_chip(%struct.snd_card* %7)
  store %struct.atmel_ac97c* %8, %struct.atmel_ac97c** %4, align 8
  %9 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %10 = load i32, i32* @CAMR, align 4
  %11 = call i32 @ac97c_writel(%struct.atmel_ac97c* %9, i32 %10, i32 0)
  %12 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %13 = load i32, i32* @COMR, align 4
  %14 = call i32 @ac97c_writel(%struct.atmel_ac97c* %12, i32 %13, i32 0)
  %15 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %16 = load i32, i32* @MR, align 4
  %17 = call i32 @ac97c_writel(%struct.atmel_ac97c* %15, i32 %16, i32 0)
  %18 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %19 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clk_disable_unprepare(i32 %20)
  %22 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %23 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clk_put(i32 %24)
  %26 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %27 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @iounmap(i32 %28)
  %30 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %31 = getelementptr inbounds %struct.atmel_ac97c, %struct.atmel_ac97c* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.atmel_ac97c*, %struct.atmel_ac97c** %4, align 8
  %34 = call i32 @free_irq(i32 %32, %struct.atmel_ac97c* %33)
  %35 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %36 = call i32 @snd_card_free(%struct.snd_card* %35)
  ret i32 0
}

declare dso_local %struct.snd_card* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.atmel_ac97c* @get_chip(%struct.snd_card*) #1

declare dso_local i32 @ac97c_writel(%struct.atmel_ac97c*, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @free_irq(i32, %struct.atmel_ac97c*) #1

declare dso_local i32 @snd_card_free(%struct.snd_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
