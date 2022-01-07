; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sgtl5000.c_sgtl5000_enable_regulators.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sgtl5000.c_sgtl5000_enable_regulators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.regulator = type { i32 }
%struct.sgtl5000_priv = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@supply_names = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"VDDD\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @sgtl5000_enable_regulators to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgtl5000_enable_regulators(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.regulator*, align 8
  %8 = alloca %struct.sgtl5000_priv*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %10 = call %struct.sgtl5000_priv* @i2c_get_clientdata(%struct.i2c_client* %9)
  store %struct.sgtl5000_priv* %10, %struct.sgtl5000_priv** %8, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %31, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %8, align 8
  %14 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %15)
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %11
  %19 = load i32*, i32** @supply_names, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %8, align 8
  %25 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 %23, i32* %30, align 4
  br label %31

31:                                               ; preds = %18
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %11

34:                                               ; preds = %11
  %35 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = call %struct.regulator* @regulator_get_optional(i32* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.regulator* %37, %struct.regulator** %7, align 8
  %38 = load %struct.regulator*, %struct.regulator** %7, align 8
  %39 = call i64 @IS_ERR(%struct.regulator* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load %struct.regulator*, %struct.regulator** %7, align 8
  %43 = call i32 @PTR_ERR(%struct.regulator* %42)
  %44 = load i32, i32* @EPROBE_DEFER, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EPROBE_DEFER, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %99

50:                                               ; preds = %41
  br label %54

51:                                               ; preds = %34
  store i32 1, i32* %6, align 4
  %52 = load %struct.regulator*, %struct.regulator** %7, align 8
  %53 = call i32 @regulator_put(%struct.regulator* %52)
  br label %54

54:                                               ; preds = %51, %50
  %55 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %8, align 8
  %56 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %57)
  %59 = sub nsw i32 %58, 1
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %59, %60
  %62 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %8, align 8
  %63 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %8, align 8
  %67 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %8, align 8
  %70 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = call i32 @regulator_bulk_get(i32* %65, i32 %68, %struct.TYPE_5__* %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %54
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %99

77:                                               ; preds = %54
  %78 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %8, align 8
  %79 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %8, align 8
  %82 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %81, i32 0, i32 1
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = call i32 @regulator_bulk_enable(i32 %80, %struct.TYPE_5__* %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %77
  %88 = call i32 @usleep_range(i32 10, i32 20)
  br label %97

89:                                               ; preds = %77
  %90 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %8, align 8
  %91 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %8, align 8
  %94 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %93, i32 0, i32 1
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = call i32 @regulator_bulk_free(i32 %92, %struct.TYPE_5__* %95)
  br label %97

97:                                               ; preds = %89, %87
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %75, %47
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.sgtl5000_priv* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local %struct.regulator* @regulator_get_optional(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regulator*) #1

declare dso_local i32 @PTR_ERR(%struct.regulator*) #1

declare dso_local i32 @regulator_put(%struct.regulator*) #1

declare dso_local i32 @regulator_bulk_get(i32*, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regulator_bulk_free(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
