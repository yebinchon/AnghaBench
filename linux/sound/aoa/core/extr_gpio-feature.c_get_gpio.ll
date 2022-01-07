; ModuleID = '/home/carl/AnghaBench/linux/sound/aoa/core/extr_gpio-feature.c_get_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/sound/aoa/core/extr_gpio-feature.c_get_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"audio-gpio\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"audio-gpio-active-state\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device_node* (i8*, i8*, i32*, i32*)* @get_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device_node* @get_gpio(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca %struct.device_node*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %8, align 8
  store i32 -1, i32* %14, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call %struct.device_node* @of_find_node_by_name(i32* null, i8* %15)
  store %struct.device_node* %16, %struct.device_node** %10, align 8
  %17 = load %struct.device_node*, %struct.device_node** %10, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %59, label %19

19:                                               ; preds = %4
  %20 = call %struct.device_node* @of_find_node_by_name(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %20, %struct.device_node** %11, align 8
  %21 = load %struct.device_node*, %struct.device_node** %11, align 8
  %22 = icmp ne %struct.device_node* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store %struct.device_node* null, %struct.device_node** %5, align 8
  br label %93

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %51, %35, %24
  %26 = load %struct.device_node*, %struct.device_node** %11, align 8
  %27 = load %struct.device_node*, %struct.device_node** %10, align 8
  %28 = call %struct.device_node* @of_get_next_child(%struct.device_node* %26, %struct.device_node* %27)
  store %struct.device_node* %28, %struct.device_node** %10, align 8
  %29 = icmp ne %struct.device_node* %28, null
  br i1 %29, label %30, label %52

30:                                               ; preds = %25
  %31 = load %struct.device_node*, %struct.device_node** %10, align 8
  %32 = call i8* @of_get_property(%struct.device_node* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %32, i8** %13, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %25

36:                                               ; preds = %30
  %37 = load i8*, i8** %13, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @strcmp(i8* %37, i8* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %52

42:                                               ; preds = %36
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i8*, i8** %13, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @strcmp(i8* %46, i8* %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %52

51:                                               ; preds = %45, %42
  br label %25

52:                                               ; preds = %50, %41, %25
  %53 = load %struct.device_node*, %struct.device_node** %11, align 8
  %54 = call i32 @of_node_put(%struct.device_node* %53)
  %55 = load %struct.device_node*, %struct.device_node** %10, align 8
  %56 = icmp ne %struct.device_node* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  store %struct.device_node* null, %struct.device_node** %5, align 8
  br label %93

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %4
  %60 = load %struct.device_node*, %struct.device_node** %10, align 8
  %61 = call i8* @of_get_property(%struct.device_node* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %62 = bitcast i8* %61 to i32*
  store i32* %62, i32** %12, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = load %struct.device_node*, %struct.device_node** %10, align 8
  %67 = call i32 @of_node_put(%struct.device_node* %66)
  store %struct.device_node* null, %struct.device_node** %5, align 8
  br label %93

68:                                               ; preds = %59
  %69 = load i32*, i32** %12, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %8, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %73, 80
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 80
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %75, %68
  %80 = load %struct.device_node*, %struct.device_node** %10, align 8
  %81 = call i8* @of_get_property(%struct.device_node* %80, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %82 = bitcast i8* %81 to i32*
  store i32* %82, i32** %12, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %79
  %86 = load i32*, i32** %9, align 8
  store i32 0, i32* %86, align 4
  br label %91

87:                                               ; preds = %79
  %88 = load i32*, i32** %12, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %9, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %87, %85
  %92 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %92, %struct.device_node** %5, align 8
  br label %93

93:                                               ; preds = %91, %65, %57, %23
  %94 = load %struct.device_node*, %struct.device_node** %5, align 8
  ret %struct.device_node* %94
}

declare dso_local %struct.device_node* @of_find_node_by_name(i32*, i8*) #1

declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, %struct.device_node*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
