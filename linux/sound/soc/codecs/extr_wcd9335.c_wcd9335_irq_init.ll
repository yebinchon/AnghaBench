; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcd9335_codec = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"intr1\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Unable to configure IRQ\0A\00", align 1
@IRQF_TRIGGER_HIGH = common dso_local global i32 0, align 4
@wcd9335_regmap_irq1_chip = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to register IRQ chip: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wcd9335_codec*)* @wcd9335_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcd9335_irq_init(%struct.wcd9335_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wcd9335_codec*, align 8
  %4 = alloca i32, align 4
  store %struct.wcd9335_codec* %0, %struct.wcd9335_codec** %3, align 8
  %5 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %6 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @of_irq_get_byname(i32 %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %12 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %14 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %1
  %18 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %19 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @EPROBE_DEFER, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %26 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %24, %17
  %30 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %31 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %2, align 4
  br label %57

33:                                               ; preds = %1
  %34 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %35 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %38 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %41 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IRQF_TRIGGER_HIGH, align 4
  %44 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %45 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %44, i32 0, i32 2
  %46 = call i32 @devm_regmap_add_irq_chip(%struct.TYPE_3__* %36, i32 %39, i32 %42, i32 %43, i32 0, i32* @wcd9335_regmap_irq1_chip, i32* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %33
  %50 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %51 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %49, %33
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %29
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @of_irq_get_byname(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, ...) #1

declare dso_local i32 @devm_regmap_add_irq_chip(%struct.TYPE_3__*, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
