; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l32.c_cs35l32_handle_of_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l32.c_cs35l32_handle_of_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.cs35l32_platform_data = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"cirrus,sdout-share\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"cirrus,boost-manager\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Wrong cirrus,boost-manager DT value %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"cirrus,sdout-datacfg\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Wrong cirrus,sdout-datacfg DT value %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"cirrus,battery-threshold\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Wrong cirrus,battery-threshold DT value %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"cirrus,battery-recovery\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Wrong cirrus,battery-recovery DT value %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.cs35l32_platform_data*)* @cs35l32_handle_of_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l32_handle_of_data(%struct.i2c_client* %0, %struct.cs35l32_platform_data* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.cs35l32_platform_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store %struct.cs35l32_platform_data* %1, %struct.cs35l32_platform_data** %4, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %5, align 8
  %11 = load %struct.device_node*, %struct.device_node** %5, align 8
  %12 = call i64 @of_property_read_u32(%struct.device_node* %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %6)
  %13 = icmp sge i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.cs35l32_platform_data*, %struct.cs35l32_platform_data** %4, align 8
  %17 = getelementptr inbounds %struct.cs35l32_platform_data, %struct.cs35l32_platform_data* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = call i64 @of_property_read_u32(%struct.device_node* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 -1, i32* %6, align 4
  br label %23

23:                                               ; preds = %22, %18
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %30 [
    i32 135, label %25
    i32 134, label %25
    i32 133, label %25
    i32 132, label %25
    i32 -1, label %29
  ]

25:                                               ; preds = %23, %23, %23, %23
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.cs35l32_platform_data*, %struct.cs35l32_platform_data** %4, align 8
  %28 = getelementptr inbounds %struct.cs35l32_platform_data, %struct.cs35l32_platform_data* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %37

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %23, %29
  %31 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dev_err(%struct.TYPE_2__* %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load %struct.cs35l32_platform_data*, %struct.cs35l32_platform_data** %4, align 8
  %36 = getelementptr inbounds %struct.cs35l32_platform_data, %struct.cs35l32_platform_data* %35, i32 0, i32 1
  store i32 133, i32* %36, align 4
  br label %37

37:                                               ; preds = %30, %25
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = call i64 @of_property_read_u32(%struct.device_node* %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32* %6)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 -1, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %37
  %43 = load i32, i32* %6, align 4
  switch i32 %43, label %49 [
    i32 129, label %44
    i32 130, label %44
    i32 131, label %44
    i32 128, label %44
    i32 -1, label %48
  ]

44:                                               ; preds = %42, %42, %42, %42
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.cs35l32_platform_data*, %struct.cs35l32_platform_data** %4, align 8
  %47 = getelementptr inbounds %struct.cs35l32_platform_data, %struct.cs35l32_platform_data* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  br label %56

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %42, %48
  %50 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @dev_err(%struct.TYPE_2__* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = load %struct.cs35l32_platform_data*, %struct.cs35l32_platform_data** %4, align 8
  %55 = getelementptr inbounds %struct.cs35l32_platform_data, %struct.cs35l32_platform_data* %54, i32 0, i32 2
  store i32 131, i32* %55, align 4
  br label %56

56:                                               ; preds = %49, %44
  %57 = load %struct.device_node*, %struct.device_node** %5, align 8
  %58 = call i64 @of_property_read_u32(%struct.device_node* %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32* %6)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 -1, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %56
  %62 = load i32, i32* %6, align 4
  switch i32 %62, label %68 [
    i32 139, label %63
    i32 138, label %63
    i32 137, label %63
    i32 136, label %63
    i32 -1, label %67
  ]

63:                                               ; preds = %61, %61, %61, %61
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.cs35l32_platform_data*, %struct.cs35l32_platform_data** %4, align 8
  %66 = getelementptr inbounds %struct.cs35l32_platform_data, %struct.cs35l32_platform_data* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  br label %75

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %61, %67
  %69 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 0
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @dev_err(%struct.TYPE_2__* %70, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %71)
  %73 = load %struct.cs35l32_platform_data*, %struct.cs35l32_platform_data** %4, align 8
  %74 = getelementptr inbounds %struct.cs35l32_platform_data, %struct.cs35l32_platform_data* %73, i32 0, i32 3
  store i32 137, i32* %74, align 4
  br label %75

75:                                               ; preds = %68, %63
  %76 = load %struct.device_node*, %struct.device_node** %5, align 8
  %77 = call i64 @of_property_read_u32(%struct.device_node* %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32* %6)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 -1, i32* %6, align 4
  br label %80

80:                                               ; preds = %79, %75
  %81 = load i32, i32* %6, align 4
  switch i32 %81, label %87 [
    i32 145, label %82
    i32 144, label %82
    i32 143, label %82
    i32 142, label %82
    i32 141, label %82
    i32 140, label %82
    i32 -1, label %86
  ]

82:                                               ; preds = %80, %80, %80, %80, %80, %80
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.cs35l32_platform_data*, %struct.cs35l32_platform_data** %4, align 8
  %85 = getelementptr inbounds %struct.cs35l32_platform_data, %struct.cs35l32_platform_data* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  br label %94

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %80, %86
  %88 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %89 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %88, i32 0, i32 0
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @dev_err(%struct.TYPE_2__* %89, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 %90)
  %92 = load %struct.cs35l32_platform_data*, %struct.cs35l32_platform_data** %4, align 8
  %93 = getelementptr inbounds %struct.cs35l32_platform_data, %struct.cs35l32_platform_data* %92, i32 0, i32 4
  store i32 142, i32* %93, align 4
  br label %94

94:                                               ; preds = %87, %82
  ret i32 0
}

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
