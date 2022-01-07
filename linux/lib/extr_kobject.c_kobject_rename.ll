; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_kobject.c_kobject_rename.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_kobject.c_kobject_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i8*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"DEVPATH_OLD=%s\00", align 1
@KOBJ_MOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kobject_rename(%struct.kobject* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [2 x i8*], align 16
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %10, align 8
  %12 = load %struct.kobject*, %struct.kobject** %4, align 8
  %13 = call %struct.kobject* @kobject_get(%struct.kobject* %12)
  store %struct.kobject* %13, %struct.kobject** %4, align 8
  %14 = load %struct.kobject*, %struct.kobject** %4, align 8
  %15 = icmp ne %struct.kobject* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %94

19:                                               ; preds = %2
  %20 = load %struct.kobject*, %struct.kobject** %4, align 8
  %21 = getelementptr inbounds %struct.kobject, %struct.kobject* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.kobject*, %struct.kobject** %4, align 8
  %26 = call i32 @kobject_put(%struct.kobject* %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %94

29:                                               ; preds = %19
  %30 = load %struct.kobject*, %struct.kobject** %4, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kobject_get_path(%struct.kobject* %30, i32 %31)
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %84

38:                                               ; preds = %29
  %39 = load i8*, i8** %7, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = add nsw i64 %40, 15
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @kmalloc(i64 %41, i32 %42)
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %84

49:                                               ; preds = %38
  %50 = load i8*, i8** %10, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @sprintf(i8* %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %51)
  %53 = load i8*, i8** %10, align 8
  %54 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  store i8* %53, i8** %54, align 16
  %55 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 1
  store i8* null, i8** %55, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i8* @kstrdup_const(i8* %56, i32 %57)
  store i8* %58, i8** %8, align 8
  store i8* %58, i8** %9, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %49
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %84

64:                                               ; preds = %49
  %65 = load %struct.kobject*, %struct.kobject** %4, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = load %struct.kobject*, %struct.kobject** %4, align 8
  %68 = call i32 @kobject_namespace(%struct.kobject* %67)
  %69 = call i32 @sysfs_rename_dir_ns(%struct.kobject* %65, i8* %66, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %84

73:                                               ; preds = %64
  %74 = load %struct.kobject*, %struct.kobject** %4, align 8
  %75 = getelementptr inbounds %struct.kobject, %struct.kobject* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %8, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load %struct.kobject*, %struct.kobject** %4, align 8
  %79 = getelementptr inbounds %struct.kobject, %struct.kobject* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = load %struct.kobject*, %struct.kobject** %4, align 8
  %81 = load i32, i32* @KOBJ_MOVE, align 4
  %82 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  %83 = call i32 @kobject_uevent_env(%struct.kobject* %80, i32 %81, i8** %82)
  br label %84

84:                                               ; preds = %73, %72, %61, %46, %35
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 @kfree_const(i8* %85)
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @kfree(i8* %87)
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @kfree(i8* %89)
  %91 = load %struct.kobject*, %struct.kobject** %4, align 8
  %92 = call i32 @kobject_put(%struct.kobject* %91)
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %84, %24, %16
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.kobject* @kobject_get(%struct.kobject*) #1

declare dso_local i32 @kobject_put(%struct.kobject*) #1

declare dso_local i8* @kobject_get_path(%struct.kobject*, i32) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @kstrdup_const(i8*, i32) #1

declare dso_local i32 @sysfs_rename_dir_ns(%struct.kobject*, i8*, i32) #1

declare dso_local i32 @kobject_namespace(%struct.kobject*) #1

declare dso_local i32 @kobject_uevent_env(%struct.kobject*, i32, i8**) #1

declare dso_local i32 @kfree_const(i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
