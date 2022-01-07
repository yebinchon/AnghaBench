; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_kobject.c_kobject_move.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_kobject.c_kobject_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { %struct.kobject*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.kobject }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"DEVPATH_OLD=%s\00", align 1
@KOBJ_MOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kobject_move(%struct.kobject* %0, %struct.kobject* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kobject*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [2 x i8*], align 16
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.kobject* %1, %struct.kobject** %5, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %11 = load %struct.kobject*, %struct.kobject** %4, align 8
  %12 = call %struct.kobject* @kobject_get(%struct.kobject* %11)
  store %struct.kobject* %12, %struct.kobject** %4, align 8
  %13 = load %struct.kobject*, %struct.kobject** %4, align 8
  %14 = icmp ne %struct.kobject* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %93

18:                                               ; preds = %2
  %19 = load %struct.kobject*, %struct.kobject** %5, align 8
  %20 = call %struct.kobject* @kobject_get(%struct.kobject* %19)
  store %struct.kobject* %20, %struct.kobject** %5, align 8
  %21 = load %struct.kobject*, %struct.kobject** %5, align 8
  %22 = icmp ne %struct.kobject* %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %18
  %24 = load %struct.kobject*, %struct.kobject** %4, align 8
  %25 = getelementptr inbounds %struct.kobject, %struct.kobject* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.kobject*, %struct.kobject** %4, align 8
  %30 = getelementptr inbounds %struct.kobject, %struct.kobject* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call %struct.kobject* @kobject_get(%struct.kobject* %32)
  store %struct.kobject* %33, %struct.kobject** %5, align 8
  br label %34

34:                                               ; preds = %28, %23
  br label %35

35:                                               ; preds = %34, %18
  %36 = load %struct.kobject*, %struct.kobject** %4, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kobject_get_path(%struct.kobject* %36, i32 %37)
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %83

44:                                               ; preds = %35
  %45 = load i8*, i8** %8, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = add nsw i64 %46, 15
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i8* @kmalloc(i64 %47, i32 %48)
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %83

55:                                               ; preds = %44
  %56 = load i8*, i8** %9, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @sprintf(i8* %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %57)
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  store i8* %59, i8** %60, align 16
  %61 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 1
  store i8* null, i8** %61, align 8
  %62 = load %struct.kobject*, %struct.kobject** %4, align 8
  %63 = load %struct.kobject*, %struct.kobject** %5, align 8
  %64 = load %struct.kobject*, %struct.kobject** %4, align 8
  %65 = call i32 @kobject_namespace(%struct.kobject* %64)
  %66 = call i32 @sysfs_move_dir_ns(%struct.kobject* %62, %struct.kobject* %63, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  br label %83

70:                                               ; preds = %55
  %71 = load %struct.kobject*, %struct.kobject** %4, align 8
  %72 = getelementptr inbounds %struct.kobject, %struct.kobject* %71, i32 0, i32 0
  %73 = load %struct.kobject*, %struct.kobject** %72, align 8
  store %struct.kobject* %73, %struct.kobject** %7, align 8
  %74 = load %struct.kobject*, %struct.kobject** %5, align 8
  %75 = load %struct.kobject*, %struct.kobject** %4, align 8
  %76 = getelementptr inbounds %struct.kobject, %struct.kobject* %75, i32 0, i32 0
  store %struct.kobject* %74, %struct.kobject** %76, align 8
  store %struct.kobject* null, %struct.kobject** %5, align 8
  %77 = load %struct.kobject*, %struct.kobject** %7, align 8
  %78 = call i32 @kobject_put(%struct.kobject* %77)
  %79 = load %struct.kobject*, %struct.kobject** %4, align 8
  %80 = load i32, i32* @KOBJ_MOVE, align 4
  %81 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %82 = call i32 @kobject_uevent_env(%struct.kobject* %79, i32 %80, i8** %81)
  br label %83

83:                                               ; preds = %70, %69, %52, %41
  %84 = load %struct.kobject*, %struct.kobject** %5, align 8
  %85 = call i32 @kobject_put(%struct.kobject* %84)
  %86 = load %struct.kobject*, %struct.kobject** %4, align 8
  %87 = call i32 @kobject_put(%struct.kobject* %86)
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 @kfree(i8* %88)
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @kfree(i8* %90)
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %83, %15
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.kobject* @kobject_get(%struct.kobject*) #1

declare dso_local i8* @kobject_get_path(%struct.kobject*, i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @sysfs_move_dir_ns(%struct.kobject*, %struct.kobject*, i32) #1

declare dso_local i32 @kobject_namespace(%struct.kobject*) #1

declare dso_local i32 @kobject_put(%struct.kobject*) #1

declare dso_local i32 @kobject_uevent_env(%struct.kobject*, i32, i8**) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
