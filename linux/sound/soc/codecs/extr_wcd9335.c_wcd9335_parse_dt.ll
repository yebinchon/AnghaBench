; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wcd9335.c_wcd9335_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcd9335_codec = type { i32, %struct.TYPE_2__*, i8*, i8*, %struct.device* }
%struct.TYPE_2__ = type { i8* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"reset-gpios\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Reset GPIO missing from DT\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"mclk not found\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"slimbus\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"slimbus clock not found\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"vdd-buck\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"vdd-buck-sido\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"vdd-tx\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"vdd-rx\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"vdd-io\00", align 1
@WCD9335_MAX_SUPPLY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"Failed to get supplies: err = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wcd9335_codec*)* @wcd9335_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcd9335_parse_dt(%struct.wcd9335_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wcd9335_codec*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.wcd9335_codec* %0, %struct.wcd9335_codec** %3, align 8
  %7 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %8 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %7, i32 0, i32 4
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %5, align 8
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = call i32 @of_get_named_gpio(%struct.device_node* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0)
  %15 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %16 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %18 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %25 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %2, align 4
  br label %101

27:                                               ; preds = %1
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call i8* @devm_clk_get(%struct.device* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %31 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %33 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %32, i32 0, i32 3
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @IS_ERR(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %27
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %40 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %41 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %40, i32 0, i32 3
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @PTR_ERR(i8* %42)
  store i32 %43, i32* %2, align 4
  br label %101

44:                                               ; preds = %27
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = call i8* @devm_clk_get(%struct.device* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %47 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %48 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %50 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @IS_ERR(i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %44
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %57 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %58 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @PTR_ERR(i8* %59)
  store i32 %60, i32* %2, align 4
  br label %101

61:                                               ; preds = %44
  %62 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %63 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %66, align 8
  %67 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %68 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** %71, align 8
  %72 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %73 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %76, align 8
  %77 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %78 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 3
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %81, align 8
  %82 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %83 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 4
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** %86, align 8
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = load i32, i32* @WCD9335_MAX_SUPPLY, align 4
  %89 = load %struct.wcd9335_codec*, %struct.wcd9335_codec** %3, align 8
  %90 = getelementptr inbounds %struct.wcd9335_codec, %struct.wcd9335_codec* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = call i32 @regulator_bulk_get(%struct.device* %87, i32 %88, %struct.TYPE_2__* %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %61
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %96, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %2, align 4
  br label %101

100:                                              ; preds = %61
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %95, %54, %37, %21
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @regulator_bulk_get(%struct.device*, i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
