; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_usercopy.c___check_object_size.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_usercopy.c___check_object_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bypass_usercopy_checks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"process stack\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__check_object_size(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = call i64 @static_branch_unlikely(i32* @bypass_usercopy_checks)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %39

10:                                               ; preds = %3
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  br label %39

14:                                               ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = load i64, i64* %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @check_bogus_address(i64 %16, i64 %17, i32 %18)
  %20 = load i8*, i8** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @check_stack_object(i8* %20, i64 %21)
  switch i32 %22, label %25 [
    i32 128, label %23
    i32 130, label %24
    i32 129, label %24
  ]

23:                                               ; preds = %14
  br label %29

24:                                               ; preds = %14, %14
  br label %39

25:                                               ; preds = %14
  %26 = load i32, i32* %6, align 4
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @usercopy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* null, i32 %26, i32 0, i64 %27)
  br label %29

29:                                               ; preds = %25, %23
  %30 = load i8*, i8** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @check_heap_object(i8* %30, i64 %31, i32 %32)
  %34 = load i8*, i8** %4, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = load i64, i64* %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @check_kernel_text_object(i64 %35, i64 %36, i32 %37)
  br label %39

39:                                               ; preds = %29, %24, %13, %9
  ret void
}

declare dso_local i64 @static_branch_unlikely(i32*) #1

declare dso_local i32 @check_bogus_address(i64, i64, i32) #1

declare dso_local i32 @check_stack_object(i8*, i64) #1

declare dso_local i32 @usercopy_abort(i8*, i32*, i32, i32, i64) #1

declare dso_local i32 @check_heap_object(i8*, i64, i32) #1

declare dso_local i32 @check_kernel_text_object(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
