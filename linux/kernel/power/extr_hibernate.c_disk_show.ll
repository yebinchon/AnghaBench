; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_hibernate.c_disk_show.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_hibernate.c_disk_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"[disabled]\0A\00", align 1
@HIBERNATION_FIRST = common dso_local global i32 0, align 4
@HIBERNATION_MAX = common dso_local global i32 0, align 4
@hibernation_modes = common dso_local global i8** null, align 8
@hibernation_ops = common dso_local global i32 0, align 4
@hibernation_mode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @disk_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disk_show(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.kobj_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  store i8* %10, i8** %9, align 8
  %11 = call i32 (...) @hibernation_available()
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %4, align 4
  br label %80

16:                                               ; preds = %3
  %17 = load i32, i32* @HIBERNATION_FIRST, align 4
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %65, %16
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @HIBERNATION_MAX, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %68

22:                                               ; preds = %18
  %23 = load i8**, i8*** @hibernation_modes, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %65

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  switch i32 %31, label %38 [
    i32 130, label %32
    i32 131, label %32
    i32 128, label %32
    i32 132, label %33
  ]

32:                                               ; preds = %30, %30, %30
  br label %38

33:                                               ; preds = %30
  %34 = load i32, i32* @hibernation_ops, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %38

37:                                               ; preds = %33
  br label %65

38:                                               ; preds = %30, %36, %32
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @hibernation_mode, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i8*, i8** %7, align 8
  %44 = load i8**, i8*** @hibernation_modes, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 (i8*, i8*, ...) @sprintf(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  %50 = load i8*, i8** %7, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %7, align 8
  br label %64

53:                                               ; preds = %38
  %54 = load i8*, i8** %7, align 8
  %55 = load i8**, i8*** @hibernation_modes, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (i8*, i8*, ...) @sprintf(i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  %61 = load i8*, i8** %7, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %7, align 8
  br label %64

64:                                               ; preds = %53, %42
  br label %65

65:                                               ; preds = %64, %37, %29
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %18

68:                                               ; preds = %18
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 (i8*, i8*, ...) @sprintf(i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i8*, i8** %7, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %7, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %68, %13
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @hibernation_available(...) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
