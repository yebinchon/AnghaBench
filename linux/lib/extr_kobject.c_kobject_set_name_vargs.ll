; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_kobject.c_kobject_set_name_vargs.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_kobject.c_kobject_set_name_vargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kobject_set_name_vargs(%struct.kobject* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.kobject*, %struct.kobject** %5, align 8
  %11 = getelementptr inbounds %struct.kobject, %struct.kobject* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %55

18:                                               ; preds = %14, %3
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i8* @kvasprintf_const(i32 %19, i8* %20, i32 %21)
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %55

28:                                               ; preds = %18
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @strchr(i8* %29, i8 signext 47)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kstrdup(i8* %33, i32 %34)
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @kfree_const(i8* %36)
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %55

43:                                               ; preds = %32
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @strreplace(i8* %44, i8 signext 47, i8 signext 33)
  %46 = load i8*, i8** %9, align 8
  store i8* %46, i8** %8, align 8
  br label %47

47:                                               ; preds = %43, %28
  %48 = load %struct.kobject*, %struct.kobject** %5, align 8
  %49 = getelementptr inbounds %struct.kobject, %struct.kobject* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @kfree_const(i8* %50)
  %52 = load i8*, i8** %8, align 8
  %53 = load %struct.kobject*, %struct.kobject** %5, align 8
  %54 = getelementptr inbounds %struct.kobject, %struct.kobject* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %47, %40, %25, %17
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i8* @kvasprintf_const(i32, i8*, i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @kfree_const(i8*) #1

declare dso_local i32 @strreplace(i8*, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
