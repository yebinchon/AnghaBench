; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_thermal_warn.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_thermal_warn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Thermal shutdown\0A\00", align 1
@MADERA_OUTPUT_ENABLES_1 = common dso_local global i32 0, align 4
@MADERA_OUT4L_ENA = common dso_local global i32 0, align 4
@MADERA_OUT4R_ENA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to disable speaker outputs: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Thermal warning\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Spurious thermal warning\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @madera_thermal_warn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_thermal_warn(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.madera*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.madera*
  store %struct.madera* %11, %struct.madera** %6, align 8
  %12 = load %struct.madera*, %struct.madera** %6, align 8
  %13 = call i32 @madera_check_speaker_overheat(%struct.madera* %12, i32* %7, i32* %8)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %16, %2
  %20 = load %struct.madera*, %struct.madera** %6, align 8
  %21 = getelementptr inbounds %struct.madera, %struct.madera* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, i8*, ...) @dev_crit(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.madera*, %struct.madera** %6, align 8
  %25 = getelementptr inbounds %struct.madera, %struct.madera* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MADERA_OUTPUT_ENABLES_1, align 4
  %28 = load i32, i32* @MADERA_OUT4L_ENA, align 4
  %29 = load i32, i32* @MADERA_OUT4R_ENA, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @regmap_update_bits(i32 %26, i32 %27, i32 %30, i32 0)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %19
  %35 = load %struct.madera*, %struct.madera** %6, align 8
  %36 = getelementptr inbounds %struct.madera, %struct.madera* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 (i32, i8*, ...) @dev_crit(i32 %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %34, %19
  br label %56

41:                                               ; preds = %16
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.madera*, %struct.madera** %6, align 8
  %46 = getelementptr inbounds %struct.madera, %struct.madera* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_alert(i32 %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %55

49:                                               ; preds = %41
  %50 = load %struct.madera*, %struct.madera** %6, align 8
  %51 = getelementptr inbounds %struct.madera, %struct.madera* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_info(i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* @IRQ_NONE, align 4
  store i32 %54, i32* %3, align 4
  br label %58

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %40
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %49
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @madera_check_speaker_overheat(%struct.madera*, i32*, i32*) #1

declare dso_local i32 @dev_crit(i32, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_alert(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
