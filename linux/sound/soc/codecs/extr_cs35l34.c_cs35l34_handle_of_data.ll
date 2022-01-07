; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l34.c_cs35l34_handle_of_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l34.c_cs35l34_handle_of_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.cs35l34_platform_data = type { i32, i32, i32, i32, i32, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [28 x i8] c"cirrus,boost-vtge-millivolt\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Invalid Boost Voltage %d mV\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Boost Voltage not specified. Using VP\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"cirrus,boost-ind-nanohenry\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Inductor not specified.\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"cirrus,boost-peak-milliamp\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Invalid Boost Peak Current %d mA\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"cirrus,aif-half-drv\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"cirrus,digsft-disable\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"cirrus,gain-zc-disable\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"cirrus,amp-inv\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"cirrus,i2s-sdinloc\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"cirrus,tdm-rising-edge\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.cs35l34_platform_data*)* @cs35l34_handle_of_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l34_handle_of_data(%struct.i2c_client* %0, %struct.cs35l34_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.cs35l34_platform_data*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.cs35l34_platform_data* %1, %struct.cs35l34_platform_data** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %6, align 8
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = call i64 @of_property_read_u32(%struct.device_node* %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %7)
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = icmp ugt i32 %16, 8000
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = icmp ult i32 %19, 3300
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = icmp ugt i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21, %15
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = load i32, i32* %7, align 4
  %28 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %120

31:                                               ; preds = %21, %18
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.cs35l34_platform_data*, %struct.cs35l34_platform_data** %5, align 8
  %36 = getelementptr inbounds %struct.cs35l34_platform_data, %struct.cs35l34_platform_data* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %44

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = sub i32 %38, 3300
  %40 = udiv i32 %39, 100
  %41 = add i32 %40, 1
  %42 = load %struct.cs35l34_platform_data*, %struct.cs35l34_platform_data** %5, align 8
  %43 = getelementptr inbounds %struct.cs35l34_platform_data, %struct.cs35l34_platform_data* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %44

44:                                               ; preds = %37, %34
  br label %49

45:                                               ; preds = %2
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = call i32 @dev_warn(%struct.TYPE_3__* %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %44
  %50 = load %struct.device_node*, %struct.device_node** %6, align 8
  %51 = call i64 @of_property_read_u32(%struct.device_node* %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32* %7)
  %52 = icmp sge i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.cs35l34_platform_data*, %struct.cs35l34_platform_data** %5, align 8
  %56 = getelementptr inbounds %struct.cs35l34_platform_data, %struct.cs35l34_platform_data* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %63

57:                                               ; preds = %49
  %58 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %59 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %58, i32 0, i32 0
  %60 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %120

63:                                               ; preds = %53
  %64 = load %struct.device_node*, %struct.device_node** %6, align 8
  %65 = call i64 @of_property_read_u32(%struct.device_node* %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32* %7)
  %66 = icmp sge i64 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = icmp ugt i32 %68, 3840
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %7, align 4
  %72 = icmp ult i32 %71, 1200
  br i1 %72, label %73, label %80

73:                                               ; preds = %70, %67
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 0
  %76 = load i32, i32* %7, align 4
  %77 = call i32 (%struct.TYPE_3__*, i8*, ...) @dev_err(%struct.TYPE_3__* %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %120

80:                                               ; preds = %70
  %81 = load i32, i32* %7, align 4
  %82 = sub i32 %81, 1200
  %83 = udiv i32 %82, 80
  %84 = add i32 %83, 1
  %85 = load %struct.cs35l34_platform_data*, %struct.cs35l34_platform_data** %5, align 8
  %86 = getelementptr inbounds %struct.cs35l34_platform_data, %struct.cs35l34_platform_data* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %80, %63
  %88 = load %struct.device_node*, %struct.device_node** %6, align 8
  %89 = call i8* @of_property_read_bool(%struct.device_node* %88, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %90 = load %struct.cs35l34_platform_data*, %struct.cs35l34_platform_data** %5, align 8
  %91 = getelementptr inbounds %struct.cs35l34_platform_data, %struct.cs35l34_platform_data* %90, i32 0, i32 8
  store i8* %89, i8** %91, align 8
  %92 = load %struct.device_node*, %struct.device_node** %6, align 8
  %93 = call i8* @of_property_read_bool(%struct.device_node* %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %94 = load %struct.cs35l34_platform_data*, %struct.cs35l34_platform_data** %5, align 8
  %95 = getelementptr inbounds %struct.cs35l34_platform_data, %struct.cs35l34_platform_data* %94, i32 0, i32 7
  store i8* %93, i8** %95, align 8
  %96 = load %struct.device_node*, %struct.device_node** %6, align 8
  %97 = call i8* @of_property_read_bool(%struct.device_node* %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %98 = load %struct.cs35l34_platform_data*, %struct.cs35l34_platform_data** %5, align 8
  %99 = getelementptr inbounds %struct.cs35l34_platform_data, %struct.cs35l34_platform_data* %98, i32 0, i32 6
  store i8* %97, i8** %99, align 8
  %100 = load %struct.device_node*, %struct.device_node** %6, align 8
  %101 = call i8* @of_property_read_bool(%struct.device_node* %100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %102 = load %struct.cs35l34_platform_data*, %struct.cs35l34_platform_data** %5, align 8
  %103 = getelementptr inbounds %struct.cs35l34_platform_data, %struct.cs35l34_platform_data* %102, i32 0, i32 5
  store i8* %101, i8** %103, align 8
  %104 = load %struct.device_node*, %struct.device_node** %6, align 8
  %105 = call i64 @of_property_read_u32(%struct.device_node* %104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32* %7)
  %106 = icmp sge i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %87
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.cs35l34_platform_data*, %struct.cs35l34_platform_data** %5, align 8
  %110 = getelementptr inbounds %struct.cs35l34_platform_data, %struct.cs35l34_platform_data* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %107, %87
  %112 = load %struct.device_node*, %struct.device_node** %6, align 8
  %113 = call i64 @of_property_read_u32(%struct.device_node* %112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32* %7)
  %114 = icmp sge i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.cs35l34_platform_data*, %struct.cs35l34_platform_data** %5, align 8
  %118 = getelementptr inbounds %struct.cs35l34_platform_data, %struct.cs35l34_platform_data* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 8
  br label %119

119:                                              ; preds = %115, %111
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %119, %73, %57, %24
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, ...) #1

declare dso_local i32 @dev_warn(%struct.TYPE_3__*, i8*) #1

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
