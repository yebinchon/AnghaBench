; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_sysfs.c_add_widget_node.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_sysfs.c_add_widget_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute_group = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@widget_ktype = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, i32, %struct.attribute_group*, %struct.kobject**)* @add_widget_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_widget_node(%struct.kobject* %0, i32 %1, %struct.attribute_group* %2, %struct.kobject** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.attribute_group*, align 8
  %9 = alloca %struct.kobject**, align 8
  %10 = alloca %struct.kobject*, align 8
  %11 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.attribute_group* %2, %struct.attribute_group** %8, align 8
  store %struct.kobject** %3, %struct.kobject*** %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.kobject* @kzalloc(i32 4, i32 %12)
  store %struct.kobject* %13, %struct.kobject** %10, align 8
  %14 = load %struct.kobject*, %struct.kobject** %10, align 8
  %15 = icmp ne %struct.kobject* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %43

19:                                               ; preds = %4
  %20 = load %struct.kobject*, %struct.kobject** %10, align 8
  %21 = call i32 @kobject_init(%struct.kobject* %20, i32* @widget_ktype)
  %22 = load %struct.kobject*, %struct.kobject** %10, align 8
  %23 = load %struct.kobject*, %struct.kobject** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @kobject_add(%struct.kobject* %22, %struct.kobject* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %5, align 4
  br label %43

30:                                               ; preds = %19
  %31 = load %struct.kobject*, %struct.kobject** %10, align 8
  %32 = load %struct.attribute_group*, %struct.attribute_group** %8, align 8
  %33 = call i32 @sysfs_create_group(%struct.kobject* %31, %struct.attribute_group* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.kobject*, %struct.kobject** %10, align 8
  %38 = call i32 @kobject_put(%struct.kobject* %37)
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %5, align 4
  br label %43

40:                                               ; preds = %30
  %41 = load %struct.kobject*, %struct.kobject** %10, align 8
  %42 = load %struct.kobject**, %struct.kobject*** %9, align 8
  store %struct.kobject* %41, %struct.kobject** %42, align 8
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %36, %28, %16
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.kobject* @kzalloc(i32, i32) #1

declare dso_local i32 @kobject_init(%struct.kobject*, i32*) #1

declare dso_local i32 @kobject_add(%struct.kobject*, %struct.kobject*, i8*, i32) #1

declare dso_local i32 @sysfs_create_group(%struct.kobject*, %struct.attribute_group*) #1

declare dso_local i32 @kobject_put(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
