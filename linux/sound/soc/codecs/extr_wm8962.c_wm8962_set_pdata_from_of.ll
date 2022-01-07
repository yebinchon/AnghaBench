; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8962.c_wm8962_set_pdata_from_of.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm8962.c_wm8962_set_pdata_from_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.wm8962_pdata = type { i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"spk-mono\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"mic-cfg\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"gpio-cfg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.wm8962_pdata*)* @wm8962_set_pdata_from_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8962_set_pdata_from_of(%struct.i2c_client* %0, %struct.wm8962_pdata* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.wm8962_pdata*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store %struct.wm8962_pdata* %1, %struct.wm8962_pdata** %4, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %5, align 8
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = call i64 @of_property_read_bool(%struct.device_node* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.wm8962_pdata*, %struct.wm8962_pdata** %4, align 8
  %17 = getelementptr inbounds %struct.wm8962_pdata, %struct.wm8962_pdata* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = call i64 @of_property_read_u32(%struct.device_node* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.wm8962_pdata*, %struct.wm8962_pdata** %4, align 8
  %25 = getelementptr inbounds %struct.wm8962_pdata, %struct.wm8962_pdata* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.device_node*, %struct.device_node** %5, align 8
  %28 = load %struct.wm8962_pdata*, %struct.wm8962_pdata** %4, align 8
  %29 = getelementptr inbounds %struct.wm8962_pdata, %struct.wm8962_pdata* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.wm8962_pdata*, %struct.wm8962_pdata** %4, align 8
  %32 = getelementptr inbounds %struct.wm8962_pdata, %struct.wm8962_pdata* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @ARRAY_SIZE(i32* %33)
  %35 = call i64 @of_property_read_u32_array(%struct.device_node* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %30, i32 %34)
  %36 = icmp sge i64 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %62, %37
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.wm8962_pdata*, %struct.wm8962_pdata** %4, align 8
  %41 = getelementptr inbounds %struct.wm8962_pdata, %struct.wm8962_pdata* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @ARRAY_SIZE(i32* %42)
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %38
  %46 = load %struct.wm8962_pdata*, %struct.wm8962_pdata** %4, align 8
  %47 = getelementptr inbounds %struct.wm8962_pdata, %struct.wm8962_pdata* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, 65535
  br i1 %53, label %54, label %61

54:                                               ; preds = %45
  %55 = load %struct.wm8962_pdata*, %struct.wm8962_pdata** %4, align 8
  %56 = getelementptr inbounds %struct.wm8962_pdata, %struct.wm8962_pdata* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 0, i32* %60, align 4
  br label %61

61:                                               ; preds = %54, %45
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %38

65:                                               ; preds = %38
  br label %66

66:                                               ; preds = %65, %26
  %67 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 0
  %69 = call i32 @devm_clk_get(%struct.TYPE_2__* %68, i32* null)
  %70 = load %struct.wm8962_pdata*, %struct.wm8962_pdata** %4, align 8
  %71 = getelementptr inbounds %struct.wm8962_pdata, %struct.wm8962_pdata* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  ret i32 0
}

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @of_property_read_u32_array(%struct.device_node*, i8*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
