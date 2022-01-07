; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l33.c_cs35l33_get_hg_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l33.c_cs35l33_get_hg_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.cs35l33_pdata = type { %struct.cs35l33_hg }
%struct.cs35l33_hg = type { i32, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [15 x i8] c"cirrus,hg-algo\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"cirrus,mem-depth\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"cirrus,release-rate\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"cirrus,ldo-thld\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"cirrus,ldo-path-disable\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"cirrus,ldo-entry-delay\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"cirrus,vp-hg-auto\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"cirrus,vp-hg\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"cirrus,vp-hg-rate\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"cirrus,vp-hg-va\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.cs35l33_pdata*)* @cs35l33_get_hg_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l33_get_hg_data(%struct.device_node* %0, %struct.cs35l33_pdata* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.cs35l33_pdata*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.cs35l33_hg*, align 8
  %7 = alloca i8*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store %struct.cs35l33_pdata* %1, %struct.cs35l33_pdata** %4, align 8
  %8 = load %struct.cs35l33_pdata*, %struct.cs35l33_pdata** %4, align 8
  %9 = getelementptr inbounds %struct.cs35l33_pdata, %struct.cs35l33_pdata* %8, i32 0, i32 0
  store %struct.cs35l33_hg* %9, %struct.cs35l33_hg** %6, align 8
  %10 = load %struct.device_node*, %struct.device_node** %3, align 8
  %11 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %11, %struct.device_node** %5, align 8
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = icmp ne %struct.device_node* %12, null
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1, i32 0
  %16 = load %struct.cs35l33_hg*, %struct.cs35l33_hg** %6, align 8
  %17 = getelementptr inbounds %struct.cs35l33_hg, %struct.cs35l33_hg* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.cs35l33_hg*, %struct.cs35l33_hg** %6, align 8
  %19 = getelementptr inbounds %struct.cs35l33_hg, %struct.cs35l33_hg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %91

22:                                               ; preds = %2
  %23 = load %struct.device_node*, %struct.device_node** %5, align 8
  %24 = call i64 @of_property_read_u32(%struct.device_node* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %7)
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.cs35l33_hg*, %struct.cs35l33_hg** %6, align 8
  %29 = getelementptr inbounds %struct.cs35l33_hg, %struct.cs35l33_hg* %28, i32 0, i32 9
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %26, %22
  %31 = load %struct.device_node*, %struct.device_node** %5, align 8
  %32 = call i64 @of_property_read_u32(%struct.device_node* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %7)
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.cs35l33_hg*, %struct.cs35l33_hg** %6, align 8
  %37 = getelementptr inbounds %struct.cs35l33_hg, %struct.cs35l33_hg* %36, i32 0, i32 8
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = load %struct.device_node*, %struct.device_node** %5, align 8
  %40 = call i64 @of_property_read_u32(%struct.device_node* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %7)
  %41 = icmp sge i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.cs35l33_hg*, %struct.cs35l33_hg** %6, align 8
  %45 = getelementptr inbounds %struct.cs35l33_hg, %struct.cs35l33_hg* %44, i32 0, i32 7
  store i8* %43, i8** %45, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = load %struct.device_node*, %struct.device_node** %5, align 8
  %48 = call i64 @of_property_read_u32(%struct.device_node* %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8** %7)
  %49 = icmp sge i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.cs35l33_hg*, %struct.cs35l33_hg** %6, align 8
  %53 = getelementptr inbounds %struct.cs35l33_hg, %struct.cs35l33_hg* %52, i32 0, i32 6
  store i8* %51, i8** %53, align 8
  br label %54

54:                                               ; preds = %50, %46
  %55 = load %struct.device_node*, %struct.device_node** %5, align 8
  %56 = call i64 @of_property_read_u32(%struct.device_node* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8** %7)
  %57 = icmp sge i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i8*, i8** %7, align 8
  %60 = load %struct.cs35l33_hg*, %struct.cs35l33_hg** %6, align 8
  %61 = getelementptr inbounds %struct.cs35l33_hg, %struct.cs35l33_hg* %60, i32 0, i32 5
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %58, %54
  %63 = load %struct.device_node*, %struct.device_node** %5, align 8
  %64 = call i32 @of_property_read_bool(%struct.device_node* %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %65 = load %struct.cs35l33_hg*, %struct.cs35l33_hg** %6, align 8
  %66 = getelementptr inbounds %struct.cs35l33_hg, %struct.cs35l33_hg* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.device_node*, %struct.device_node** %5, align 8
  %68 = call i64 @of_property_read_u32(%struct.device_node* %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %7)
  %69 = icmp sge i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load i8*, i8** %7, align 8
  %72 = load %struct.cs35l33_hg*, %struct.cs35l33_hg** %6, align 8
  %73 = getelementptr inbounds %struct.cs35l33_hg, %struct.cs35l33_hg* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %70, %62
  %75 = load %struct.device_node*, %struct.device_node** %5, align 8
  %76 = call i64 @of_property_read_u32(%struct.device_node* %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8** %7)
  %77 = icmp sge i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i8*, i8** %7, align 8
  %80 = load %struct.cs35l33_hg*, %struct.cs35l33_hg** %6, align 8
  %81 = getelementptr inbounds %struct.cs35l33_hg, %struct.cs35l33_hg* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %78, %74
  %83 = load %struct.device_node*, %struct.device_node** %5, align 8
  %84 = call i64 @of_property_read_u32(%struct.device_node* %83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8** %7)
  %85 = icmp sge i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i8*, i8** %7, align 8
  %88 = load %struct.cs35l33_hg*, %struct.cs35l33_hg** %6, align 8
  %89 = getelementptr inbounds %struct.cs35l33_hg, %struct.cs35l33_hg* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  br label %90

90:                                               ; preds = %86, %82
  br label %91

91:                                               ; preds = %90, %2
  %92 = load %struct.device_node*, %struct.device_node** %5, align 8
  %93 = call i32 @of_node_put(%struct.device_node* %92)
  ret i32 0
}

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
