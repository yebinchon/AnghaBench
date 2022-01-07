; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l33.c_cs35l33_of_get_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l33.c_cs35l33_of_get_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.cs35l33_private = type { i32, %struct.cs35l33_pdata }
%struct.cs35l33_pdata = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"cirrus,boost-ctl\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"cirrus,ramp-rate\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"cirrus,boost-ipk\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"cirrus,imon-adc-scale\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.cs35l33_private*)* @cs35l33_of_get_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l33_of_get_pdata(%struct.device* %0, %struct.cs35l33_private* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.cs35l33_private*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.cs35l33_pdata*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.cs35l33_private* %1, %struct.cs35l33_private** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %6, align 8
  %12 = load %struct.cs35l33_private*, %struct.cs35l33_private** %5, align 8
  %13 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %12, i32 0, i32 1
  store %struct.cs35l33_pdata* %13, %struct.cs35l33_pdata** %7, align 8
  %14 = load %struct.device_node*, %struct.device_node** %6, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

17:                                               ; preds = %2
  %18 = load %struct.device_node*, %struct.device_node** %6, align 8
  %19 = call i64 @of_property_read_u32(%struct.device_node* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %8)
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.cs35l33_pdata*, %struct.cs35l33_pdata** %7, align 8
  %24 = getelementptr inbounds %struct.cs35l33_pdata, %struct.cs35l33_pdata* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.cs35l33_pdata*, %struct.cs35l33_pdata** %7, align 8
  %26 = getelementptr inbounds %struct.cs35l33_pdata, %struct.cs35l33_pdata* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %21, %17
  %28 = load %struct.device_node*, %struct.device_node** %6, align 8
  %29 = call i64 @of_property_read_u32(%struct.device_node* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.cs35l33_pdata*, %struct.cs35l33_pdata** %7, align 8
  %34 = getelementptr inbounds %struct.cs35l33_pdata, %struct.cs35l33_pdata* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.cs35l33_private*, %struct.cs35l33_private** %5, align 8
  %36 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %31, %27
  %38 = load %struct.device_node*, %struct.device_node** %6, align 8
  %39 = call i64 @of_property_read_u32(%struct.device_node* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %8)
  %40 = icmp sge i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.cs35l33_pdata*, %struct.cs35l33_pdata** %7, align 8
  %44 = getelementptr inbounds %struct.cs35l33_pdata, %struct.cs35l33_pdata* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.device_node*, %struct.device_node** %6, align 8
  %47 = call i64 @of_property_read_u32(%struct.device_node* %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* %8)
  %48 = icmp sge i64 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 7
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 6
  br i1 %57, label %58, label %62

58:                                               ; preds = %55, %52, %49
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.cs35l33_pdata*, %struct.cs35l33_pdata** %7, align 8
  %61 = getelementptr inbounds %struct.cs35l33_pdata, %struct.cs35l33_pdata* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  br label %65

62:                                               ; preds = %55
  %63 = load %struct.cs35l33_pdata*, %struct.cs35l33_pdata** %7, align 8
  %64 = getelementptr inbounds %struct.cs35l33_pdata, %struct.cs35l33_pdata* %63, i32 0, i32 4
  store i32 8, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %58
  br label %69

66:                                               ; preds = %45
  %67 = load %struct.cs35l33_pdata*, %struct.cs35l33_pdata** %7, align 8
  %68 = getelementptr inbounds %struct.cs35l33_pdata, %struct.cs35l33_pdata* %67, i32 0, i32 4
  store i32 8, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %65
  %70 = load %struct.device_node*, %struct.device_node** %6, align 8
  %71 = load %struct.cs35l33_pdata*, %struct.cs35l33_pdata** %7, align 8
  %72 = call i32 @cs35l33_get_hg_data(%struct.device_node* %70, %struct.cs35l33_pdata* %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %16
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @cs35l33_get_hg_data(%struct.device_node*, %struct.cs35l33_pdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
