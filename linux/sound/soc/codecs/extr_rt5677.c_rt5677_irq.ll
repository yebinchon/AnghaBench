; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677.c_rt5677_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.rt5677_priv = type { i32, i32, i32, i32 }

@RT5677_IRQ_CTRL1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed reading IRQ status: %d\0A\00", align 1
@RT5677_IRQ_NUM = common dso_local global i32 0, align 4
@rt5677_irq_descs = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"failed updating IRQ status: %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rt5677_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt5677_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rt5677_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.rt5677_priv*
  store %struct.rt5677_priv* %14, %struct.rt5677_priv** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %16 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %94, %2
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 20
  br i1 %20, label %21, label %97

21:                                               ; preds = %18
  %22 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %23 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @RT5677_IRQ_CTRL1, align 4
  %26 = call i32 @regmap_read(i32 %24, i32 %25, i32* %10)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %31 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %98

35:                                               ; preds = %21
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %71, %35
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @RT5677_IRQ_NUM, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %74

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rt5677_irq_descs, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %41, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %40
  store i32 1, i32* %12, align 4
  %51 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %52 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @irq_find_mapping(i32 %53, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @handle_nested_irq(i32 %59)
  br label %61

61:                                               ; preds = %58, %50
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rt5677_irq_descs, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %10, align 4
  %69 = xor i32 %68, %67
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %61, %40
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %36

74:                                               ; preds = %36
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  br label %98

78:                                               ; preds = %74
  %79 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %80 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @RT5677_IRQ_CTRL1, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @regmap_write(i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %78
  %88 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %89 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @dev_err(i32 %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  br label %98

93:                                               ; preds = %78
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %18

97:                                               ; preds = %18
  br label %98

98:                                               ; preds = %97, %87, %77, %29
  %99 = load %struct.rt5677_priv*, %struct.rt5677_priv** %6, align 8
  %100 = getelementptr inbounds %struct.rt5677_priv, %struct.rt5677_priv* %99, i32 0, i32 0
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %105, i32* %3, align 4
  br label %108

106:                                              ; preds = %98
  %107 = load i32, i32* @IRQ_NONE, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @handle_nested_irq(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
