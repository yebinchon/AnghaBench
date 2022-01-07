; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_init_overheat.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_init_overheat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera_priv = type { %struct.madera* }
%struct.madera = type { %struct.device* }
%struct.device = type { i32 }

@MADERA_IRQ_SPK_OVERHEAT_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Thermal warning\00", align 1
@madera_thermal_warn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to get thermal warning IRQ: %d\0A\00", align 1
@MADERA_IRQ_SPK_OVERHEAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Thermal shutdown\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to get thermal shutdown IRQ: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @madera_init_overheat(%struct.madera_priv* %0) #0 {
  %2 = alloca %struct.madera_priv*, align 8
  %3 = alloca %struct.madera*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.madera_priv* %0, %struct.madera_priv** %2, align 8
  %6 = load %struct.madera_priv*, %struct.madera_priv** %2, align 8
  %7 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %6, i32 0, i32 0
  %8 = load %struct.madera*, %struct.madera** %7, align 8
  store %struct.madera* %8, %struct.madera** %3, align 8
  %9 = load %struct.madera*, %struct.madera** %3, align 8
  %10 = getelementptr inbounds %struct.madera, %struct.madera* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.madera*, %struct.madera** %3, align 8
  %13 = load i32, i32* @MADERA_IRQ_SPK_OVERHEAT_WARN, align 4
  %14 = load i32, i32* @madera_thermal_warn, align 4
  %15 = load %struct.madera*, %struct.madera** %3, align 8
  %16 = call i32 @madera_request_irq(%struct.madera* %12, i32 %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %14, %struct.madera* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.madera*, %struct.madera** %3, align 8
  %25 = load i32, i32* @MADERA_IRQ_SPK_OVERHEAT, align 4
  %26 = load i32, i32* @madera_thermal_warn, align 4
  %27 = load %struct.madera*, %struct.madera** %3, align 8
  %28 = call i32 @madera_request_irq(%struct.madera* %24, i32 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %26, %struct.madera* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %23
  ret i32 0
}

declare dso_local i32 @madera_request_irq(%struct.madera*, i32, i8*, i32, %struct.madera*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
