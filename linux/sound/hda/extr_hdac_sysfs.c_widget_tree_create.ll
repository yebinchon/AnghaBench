; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_sysfs.c_widget_tree_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_sysfs.c_widget_tree_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i32, i64, i64, %struct.TYPE_2__, %struct.hdac_widget_tree* }
%struct.TYPE_2__ = type { i32 }
%struct.hdac_widget_tree = type { i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"widgets\00", align 1
@widget_node_group = common dso_local global i32 0, align 4
@widget_afg_group = common dso_local global i32 0, align 4
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_device*)* @widget_tree_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @widget_tree_create(%struct.hdac_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdac_device*, align 8
  %4 = alloca %struct.hdac_widget_tree*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.hdac_device* %0, %struct.hdac_device** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.hdac_widget_tree* @kzalloc(i32 16, i32 %8)
  %10 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %11 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %10, i32 0, i32 4
  store %struct.hdac_widget_tree* %9, %struct.hdac_widget_tree** %11, align 8
  store %struct.hdac_widget_tree* %9, %struct.hdac_widget_tree** %4, align 8
  %12 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %4, align 8
  %13 = icmp ne %struct.hdac_widget_tree* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %105

17:                                               ; preds = %1
  %18 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %19 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @kobject_create_and_add(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %20)
  %22 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %4, align 8
  %23 = getelementptr inbounds %struct.hdac_widget_tree, %struct.hdac_widget_tree* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %4, align 8
  %25 = getelementptr inbounds %struct.hdac_widget_tree, %struct.hdac_widget_tree* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %17
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %105

31:                                               ; preds = %17
  %32 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %33 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32* @kcalloc(i32 %35, i32 4, i32 %36)
  %38 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %4, align 8
  %39 = getelementptr inbounds %struct.hdac_widget_tree, %struct.hdac_widget_tree* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  %40 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %4, align 8
  %41 = getelementptr inbounds %struct.hdac_widget_tree, %struct.hdac_widget_tree* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %31
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %105

47:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  %48 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %49 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %7, align 8
  br label %51

51:                                               ; preds = %74, %47
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %54 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %51
  %58 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %4, align 8
  %59 = getelementptr inbounds %struct.hdac_widget_tree, %struct.hdac_widget_tree* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %4, align 8
  %63 = getelementptr inbounds %struct.hdac_widget_tree, %struct.hdac_widget_tree* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @add_widget_node(i32 %60, i64 %61, i32* @widget_node_group, i32* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %57
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %2, align 4
  br label %105

73:                                               ; preds = %57
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  %77 = load i64, i64* %7, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %7, align 8
  br label %51

79:                                               ; preds = %51
  %80 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %81 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %79
  %85 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %4, align 8
  %86 = getelementptr inbounds %struct.hdac_widget_tree, %struct.hdac_widget_tree* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %89 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %4, align 8
  %92 = getelementptr inbounds %struct.hdac_widget_tree, %struct.hdac_widget_tree* %91, i32 0, i32 1
  %93 = call i32 @add_widget_node(i32 %87, i64 %90, i32* @widget_afg_group, i32* %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %105

98:                                               ; preds = %84
  br label %99

99:                                               ; preds = %98, %79
  %100 = load %struct.hdac_widget_tree*, %struct.hdac_widget_tree** %4, align 8
  %101 = getelementptr inbounds %struct.hdac_widget_tree, %struct.hdac_widget_tree* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @KOBJ_CHANGE, align 4
  %104 = call i32 @kobject_uevent(i32 %102, i32 %103)
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %99, %96, %71, %44, %28, %14
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.hdac_widget_tree* @kzalloc(i32, i32) #1

declare dso_local i32 @kobject_create_and_add(i8*, i32*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @add_widget_node(i32, i64, i32*, i32*) #1

declare dso_local i32 @kobject_uevent(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
