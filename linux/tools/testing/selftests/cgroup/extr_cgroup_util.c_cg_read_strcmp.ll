; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_cgroup_util.c_cg_read_strcmp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_cgroup_util.c_cg_read_strcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cg_read_strcmp(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i64 32, i64* %8, align 8
  br label %19

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = add nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %8, align 8
  br label %19

19:                                               ; preds = %14, %13
  %20 = load i64, i64* %8, align 8
  %21 = call i8* @malloc(i64 %20)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %42

25:                                               ; preds = %19
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i64 @cg_read(i8* %26, i8* %27, i8* %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @free(i8* %33)
  store i32 -1, i32* %4, align 4
  br label %42

35:                                               ; preds = %25
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @strcmp(i8* %36, i8* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %35, %32, %24
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @cg_read(i8*, i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
