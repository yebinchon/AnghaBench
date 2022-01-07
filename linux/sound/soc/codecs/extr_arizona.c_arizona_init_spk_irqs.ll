; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_init_spk_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_init_spk_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona = type { i32 }

@ARIZONA_IRQ_SPK_OVERHEAT_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Thermal warning\00", align 1
@arizona_thermal_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to get thermal warning IRQ: %d\0A\00", align 1
@ARIZONA_IRQ_SPK_OVERHEAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Thermal shutdown\00", align 1
@arizona_thermal_shutdown = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to get thermal shutdown IRQ: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arizona_init_spk_irqs(%struct.arizona* %0) #0 {
  %2 = alloca %struct.arizona*, align 8
  %3 = alloca i32, align 4
  store %struct.arizona* %0, %struct.arizona** %2, align 8
  %4 = load %struct.arizona*, %struct.arizona** %2, align 8
  %5 = load i32, i32* @ARIZONA_IRQ_SPK_OVERHEAT_WARN, align 4
  %6 = load i32, i32* @arizona_thermal_warn, align 4
  %7 = load %struct.arizona*, %struct.arizona** %2, align 8
  %8 = call i32 @arizona_request_irq(%struct.arizona* %4, i32 %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %6, %struct.arizona* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.arizona*, %struct.arizona** %2, align 8
  %13 = getelementptr inbounds %struct.arizona, %struct.arizona* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.arizona*, %struct.arizona** %2, align 8
  %19 = load i32, i32* @ARIZONA_IRQ_SPK_OVERHEAT, align 4
  %20 = load i32, i32* @arizona_thermal_shutdown, align 4
  %21 = load %struct.arizona*, %struct.arizona** %2, align 8
  %22 = call i32 @arizona_request_irq(%struct.arizona* %18, i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %20, %struct.arizona* %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load %struct.arizona*, %struct.arizona** %2, align 8
  %27 = getelementptr inbounds %struct.arizona, %struct.arizona* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %25, %17
  ret i32 0
}

declare dso_local i32 @arizona_request_irq(%struct.arizona*, i32, i8*, i32, %struct.arizona*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
