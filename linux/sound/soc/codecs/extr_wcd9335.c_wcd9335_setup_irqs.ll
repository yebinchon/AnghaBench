; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_setup_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_setup_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.wcd9335_codec = type { i32, i32, i32 }

@wcd9335_irqs = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"Failed to get %s\0A\00", align 1
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to request %s\0A\00", align 1
@WCD9335_SLIM_NUM_PORT_REG = common dso_local global i32 0, align 4
@WCD9335_SLIM_PGD_PORT_INT_EN0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wcd9335_codec*)* @wcd9335_setup_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcd9335_setup_irqs(%struct.wcd9335_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wcd9335_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wcd9335_codec* %0, %struct.wcd9335_codec** %3, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %74, %1
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wcd9335_irqs, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %77

12:                                               ; preds = %7
  %13 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %14 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wcd9335_irqs, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @regmap_irq_get_virq(i32 %15, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %12
  %26 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %27 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wcd9335_irqs, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %96

37:                                               ; preds = %12
  %38 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %39 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wcd9335_irqs, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %49 = load i32, i32* @IRQF_ONESHOT, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wcd9335_irqs, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %58 = call i32 @devm_request_threaded_irq(i32 %40, i32 %41, i32* null, i32 %47, i32 %50, i32 %56, %struct.wcd9335_codec* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %37
  %62 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %63 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** @wcd9335_irqs, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %96

73:                                               ; preds = %37
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %7

77:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %91, %77
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @WCD9335_SLIM_NUM_PORT_REG, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %78
  %83 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %84 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* @WCD9335_SLIM_PGD_PORT_INT_EN0, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = call i32 @regmap_write(i32 %85, i64 %89, i32 255)
  br label %91

91:                                               ; preds = %82
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %78

94:                                               ; preds = %78
  %95 = load i32, i32* %5, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %94, %61, %25
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @regmap_irq_get_virq(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32, i32, i32*, i32, i32, i32, %struct.wcd9335_codec*) #1

declare dso_local i32 @regmap_write(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
