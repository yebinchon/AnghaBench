; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_handle_device_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_handle_device_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.cs43130_private = type { i32*, i32*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"cirrus,xtal-ibias\00", align 1
@CS43130_XTAL_UNUSED = common dso_local global i32 0, align 4
@CS43130_XTAL_IBIAS_7_5UA = common dso_local global i32 0, align 4
@CS43130_XTAL_IBIAS_12_5UA = common dso_local global i32 0, align 4
@CS43130_XTAL_IBIAS_15UA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Invalid cirrus,xtal-ibias value: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"cirrus,dc-measure\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"cirrus,ac-measure\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"cirrus,ac-freq\00", align 1
@CS43130_AC_FREQ = common dso_local global i32 0, align 4
@cs43130_ac_freq = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"cirrus,dc-threshold\00", align 1
@CS43130_DC_THRESHOLD = common dso_local global i32 0, align 4
@cs43130_dc_threshold = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.cs43130_private*)* @cs43130_handle_device_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs43130_handle_device_data(%struct.i2c_client* %0, %struct.cs43130_private* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.cs43130_private*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.cs43130_private* %1, %struct.cs43130_private** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %6, align 8
  %13 = load %struct.device_node*, %struct.device_node** %6, align 8
  %14 = call i64 @of_property_read_u32(%struct.device_node* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %7)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @CS43130_XTAL_UNUSED, align 4
  %18 = load %struct.cs43130_private*, %struct.cs43130_private** %5, align 8
  %19 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  store i32 0, i32* %3, align 4
  br label %108

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %34 [
    i32 1, label %22
    i32 2, label %26
    i32 3, label %30
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @CS43130_XTAL_IBIAS_7_5UA, align 4
  %24 = load %struct.cs43130_private*, %struct.cs43130_private** %5, align 8
  %25 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  br label %41

26:                                               ; preds = %20
  %27 = load i32, i32* @CS43130_XTAL_IBIAS_12_5UA, align 4
  %28 = load %struct.cs43130_private*, %struct.cs43130_private** %5, align 8
  %29 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  br label %41

30:                                               ; preds = %20
  %31 = load i32, i32* @CS43130_XTAL_IBIAS_15UA, align 4
  %32 = load %struct.cs43130_private*, %struct.cs43130_private** %5, align 8
  %33 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  br label %41

34:                                               ; preds = %20
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @dev_err(%struct.TYPE_2__* %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %108

41:                                               ; preds = %30, %26, %22
  %42 = load %struct.device_node*, %struct.device_node** %6, align 8
  %43 = call i8* @of_property_read_bool(%struct.device_node* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.cs43130_private*, %struct.cs43130_private** %5, align 8
  %45 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load %struct.device_node*, %struct.device_node** %6, align 8
  %47 = call i8* @of_property_read_bool(%struct.device_node* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %48 = load %struct.cs43130_private*, %struct.cs43130_private** %5, align 8
  %49 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.device_node*, %struct.device_node** %6, align 8
  %51 = load %struct.cs43130_private*, %struct.cs43130_private** %5, align 8
  %52 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* @CS43130_AC_FREQ, align 4
  %55 = call i64 @of_property_read_u16_array(%struct.device_node* %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* %53, i32 %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %74, %57
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @CS43130_AC_FREQ, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = load i32*, i32** @cs43130_ac_freq, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.cs43130_private*, %struct.cs43130_private** %5, align 8
  %69 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %67, i32* %73, align 4
  br label %74

74:                                               ; preds = %62
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %58

77:                                               ; preds = %58
  br label %78

78:                                               ; preds = %77, %41
  %79 = load %struct.device_node*, %struct.device_node** %6, align 8
  %80 = load %struct.cs43130_private*, %struct.cs43130_private** %5, align 8
  %81 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* @CS43130_DC_THRESHOLD, align 4
  %84 = call i64 @of_property_read_u16_array(%struct.device_node* %79, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32* %82, i32 %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %107

86:                                               ; preds = %78
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %103, %86
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @CS43130_DC_THRESHOLD, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %87
  %92 = load i32*, i32** @cs43130_dc_threshold, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.cs43130_private*, %struct.cs43130_private** %5, align 8
  %98 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %96, i32* %102, align 4
  br label %103

103:                                              ; preds = %91
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %87

106:                                              ; preds = %87
  br label %107

107:                                              ; preds = %106, %78
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %34, %16
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i64 @of_property_read_u16_array(%struct.device_node*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
