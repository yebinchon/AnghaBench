; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l56.c_cs42l56_handle_of_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l56.c_cs42l56_handle_of_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.cs42l56_platform_data = type { i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [27 x i8] c"cirrus,ain1a-reference-cfg\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"cirrus,ain2a-reference-cfg\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"cirrus,ain1b-reference-cfg\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"cirrus,ain2b-reference-cfg\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"cirrus,micbias-lvl\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"cirrus,chgfreq-divisor\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"cirrus,adaptive-pwr-cfg\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"cirrus,hpf-left-freq\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"cirrus,gpio-nreset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.cs42l56_platform_data*)* @cs42l56_handle_of_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs42l56_handle_of_data(%struct.i2c_client* %0, %struct.cs42l56_platform_data* %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.cs42l56_platform_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store %struct.cs42l56_platform_data* %1, %struct.cs42l56_platform_data** %4, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %5, align 8
  %11 = load %struct.device_node*, %struct.device_node** %5, align 8
  %12 = call i64 @of_property_read_bool(%struct.device_node* %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.cs42l56_platform_data*, %struct.cs42l56_platform_data** %4, align 8
  %16 = getelementptr inbounds %struct.cs42l56_platform_data, %struct.cs42l56_platform_data* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = call i64 @of_property_read_bool(%struct.device_node* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.cs42l56_platform_data*, %struct.cs42l56_platform_data** %4, align 8
  %23 = getelementptr inbounds %struct.cs42l56_platform_data, %struct.cs42l56_platform_data* %22, i32 0, i32 1
  store i32 1, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %17
  %25 = load %struct.device_node*, %struct.device_node** %5, align 8
  %26 = call i64 @of_property_read_bool(%struct.device_node* %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.cs42l56_platform_data*, %struct.cs42l56_platform_data** %4, align 8
  %30 = getelementptr inbounds %struct.cs42l56_platform_data, %struct.cs42l56_platform_data* %29, i32 0, i32 2
  store i32 1, i32* %30, align 8
  br label %31

31:                                               ; preds = %28, %24
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = call i64 @of_property_read_bool(%struct.device_node* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.cs42l56_platform_data*, %struct.cs42l56_platform_data** %4, align 8
  %37 = getelementptr inbounds %struct.cs42l56_platform_data, %struct.cs42l56_platform_data* %36, i32 0, i32 3
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %31
  %39 = load %struct.device_node*, %struct.device_node** %5, align 8
  %40 = call i64 @of_property_read_u32(%struct.device_node* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8** %6)
  %41 = icmp sge i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i8*, i8** %6, align 8
  %44 = load %struct.cs42l56_platform_data*, %struct.cs42l56_platform_data** %4, align 8
  %45 = getelementptr inbounds %struct.cs42l56_platform_data, %struct.cs42l56_platform_data* %44, i32 0, i32 9
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = load %struct.device_node*, %struct.device_node** %5, align 8
  %48 = call i64 @of_property_read_u32(%struct.device_node* %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8** %6)
  %49 = icmp sge i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.cs42l56_platform_data*, %struct.cs42l56_platform_data** %4, align 8
  %53 = getelementptr inbounds %struct.cs42l56_platform_data, %struct.cs42l56_platform_data* %52, i32 0, i32 8
  store i8* %51, i8** %53, align 8
  br label %54

54:                                               ; preds = %50, %46
  %55 = load %struct.device_node*, %struct.device_node** %5, align 8
  %56 = call i64 @of_property_read_u32(%struct.device_node* %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8** %6)
  %57 = icmp sge i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i8*, i8** %6, align 8
  %60 = load %struct.cs42l56_platform_data*, %struct.cs42l56_platform_data** %4, align 8
  %61 = getelementptr inbounds %struct.cs42l56_platform_data, %struct.cs42l56_platform_data* %60, i32 0, i32 7
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %58, %54
  %63 = load %struct.device_node*, %struct.device_node** %5, align 8
  %64 = call i64 @of_property_read_u32(%struct.device_node* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8** %6)
  %65 = icmp sge i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i8*, i8** %6, align 8
  %68 = load %struct.cs42l56_platform_data*, %struct.cs42l56_platform_data** %4, align 8
  %69 = getelementptr inbounds %struct.cs42l56_platform_data, %struct.cs42l56_platform_data* %68, i32 0, i32 6
  store i8* %67, i8** %69, align 8
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.device_node*, %struct.device_node** %5, align 8
  %72 = call i64 @of_property_read_u32(%struct.device_node* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8** %6)
  %73 = icmp sge i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i8*, i8** %6, align 8
  %76 = load %struct.cs42l56_platform_data*, %struct.cs42l56_platform_data** %4, align 8
  %77 = getelementptr inbounds %struct.cs42l56_platform_data, %struct.cs42l56_platform_data* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %74, %70
  %79 = load %struct.device_node*, %struct.device_node** %5, align 8
  %80 = call i32 @of_get_named_gpio(%struct.device_node* %79, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %81 = load %struct.cs42l56_platform_data*, %struct.cs42l56_platform_data** %4, align 8
  %82 = getelementptr inbounds %struct.cs42l56_platform_data, %struct.cs42l56_platform_data* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  ret i32 0
}

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
