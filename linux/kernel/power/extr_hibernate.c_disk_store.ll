; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_hibernate.c_disk_store.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_hibernate.c_disk_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }

@HIBERNATION_INVALID = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@HIBERNATION_FIRST = common dso_local global i32 0, align 4
@HIBERNATION_MAX = common dso_local global i32 0, align 4
@hibernation_modes = common dso_local global i32* null, align 8
@hibernation_mode = common dso_local global i32 0, align 4
@hibernation_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Hibernation mode set to '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobj_attribute*, i8*, i64)* @disk_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disk_store(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.kobj_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* @HIBERNATION_INVALID, align 4
  store i32 %15, i32* %14, align 4
  %16 = call i32 (...) @hibernation_available()
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EPERM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %112

21:                                               ; preds = %4
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i8* @memchr(i8* %22, i8 signext 10, i64 %23)
  store i8* %24, i8** %13, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i8*, i8** %13, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  br label %35

33:                                               ; preds = %21
  %34 = load i64, i64* %9, align 8
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi i64 [ %32, %27 ], [ %34, %33 ]
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %12, align 4
  %38 = call i32 (...) @lock_system_sleep()
  %39 = load i32, i32* @HIBERNATION_FIRST, align 4
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %66, %35
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @HIBERNATION_MAX, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %69

44:                                               ; preds = %40
  %45 = load i32, i32* %12, align 4
  %46 = load i32*, i32** @hibernation_modes, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @strlen(i32 %50)
  %52 = icmp eq i32 %45, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %44
  %54 = load i8*, i8** %8, align 8
  %55 = load i32*, i32** @hibernation_modes, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @strncmp(i8* %54, i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %53
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %14, align 4
  br label %69

65:                                               ; preds = %53, %44
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %40

69:                                               ; preds = %63, %40
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @HIBERNATION_INVALID, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %69
  %74 = load i32, i32* %14, align 4
  switch i32 %74, label %86 [
    i32 130, label %75
    i32 131, label %75
    i32 128, label %75
    i32 132, label %77
  ]

75:                                               ; preds = %73, %73, %73
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* @hibernation_mode, align 4
  br label %86

77:                                               ; preds = %73
  %78 = load i32, i32* @hibernation_ops, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* @hibernation_mode, align 4
  br label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %82, %80
  br label %86

86:                                               ; preds = %85, %73, %75
  br label %90

87:                                               ; preds = %69
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %87, %86
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %90
  %94 = load i32*, i32** @hibernation_modes, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @pm_pr_dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %93, %90
  %101 = call i32 (...) @unlock_system_sleep()
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  br label %109

107:                                              ; preds = %100
  %108 = load i64, i64* %9, align 8
  br label %109

109:                                              ; preds = %107, %104
  %110 = phi i64 [ %106, %104 ], [ %108, %107 ]
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %109, %18
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @hibernation_available(...) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @lock_system_sleep(...) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @pm_pr_dbg(i8*, i32) #1

declare dso_local i32 @unlock_system_sleep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
