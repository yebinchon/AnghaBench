; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_usercopy.c_usercopy_warn.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_usercopy.c_usercopy_warn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [106 x i8] c"Bad or missing usercopy whitelist? Kernel memory %s attempt detected %s %s%s%s%s (offset %lu, size %lu)!\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"exposure\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"overwrite\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"unknown?!\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" '\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usercopy_warn(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  br label %23

22:                                               ; preds = %5
  br label %23

23:                                               ; preds = %22, %21
  %24 = phi i8* [ %19, %21 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), %22 ]
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %33

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %31
  %34 = phi i8* [ %29, %31 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %32 ]
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %18, i8* %24, i8* %28, i8* %34, i8* %38, i64 %39, i64 %40)
  ret void
}

declare dso_local i32 @WARN_ONCE(i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
