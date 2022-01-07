; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_thermal_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_thermal_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arizona = type { i32, i32 }

@ARIZONA_INTERRUPT_RAW_STATUS_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to read thermal status: %d\0A\00", align 1
@ARIZONA_SPK_OVERHEAT_STS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Thermal shutdown\0A\00", align 1
@ARIZONA_OUTPUT_ENABLES_1 = common dso_local global i32 0, align 4
@ARIZONA_OUT4L_ENA = common dso_local global i32 0, align 4
@ARIZONA_OUT4R_ENA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to disable speaker outputs: %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @arizona_thermal_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arizona_thermal_shutdown(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.arizona*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.arizona*
  store %struct.arizona* %9, %struct.arizona** %5, align 8
  %10 = load %struct.arizona*, %struct.arizona** %5, align 8
  %11 = getelementptr inbounds %struct.arizona, %struct.arizona* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ARIZONA_INTERRUPT_RAW_STATUS_3, align 4
  %14 = call i32 @regmap_read(i32 %12, i32 %13, i32* %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.arizona*, %struct.arizona** %5, align 8
  %19 = getelementptr inbounds %struct.arizona, %struct.arizona* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %51

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @ARIZONA_SPK_OVERHEAT_STS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %23
  %29 = load %struct.arizona*, %struct.arizona** %5, align 8
  %30 = getelementptr inbounds %struct.arizona, %struct.arizona* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, ...) @dev_crit(i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.arizona*, %struct.arizona** %5, align 8
  %34 = getelementptr inbounds %struct.arizona, %struct.arizona* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ARIZONA_OUTPUT_ENABLES_1, align 4
  %37 = load i32, i32* @ARIZONA_OUT4L_ENA, align 4
  %38 = load i32, i32* @ARIZONA_OUT4R_ENA, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @regmap_update_bits(i32 %35, i32 %36, i32 %39, i32 0)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %28
  %44 = load %struct.arizona*, %struct.arizona** %5, align 8
  %45 = getelementptr inbounds %struct.arizona, %struct.arizona* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 (i32, i8*, ...) @dev_crit(i32 %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %43, %28
  br label %50

50:                                               ; preds = %49, %23
  br label %51

51:                                               ; preds = %50, %17
  %52 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %52
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_crit(i32, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
