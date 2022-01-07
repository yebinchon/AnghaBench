; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_perf-read-vdso.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_perf-read-vdso.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VDSO__MAP_NAME = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %6 = load i32, i32* @VDSO__MAP_NAME, align 4
  %7 = call i64 @find_map(i8** %2, i8** %3, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %40

10:                                               ; preds = %0
  %11 = load i8*, i8** %3, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = ptrtoint i8* %11 to i64
  %14 = ptrtoint i8* %12 to i64
  %15 = sub i64 %13, %14
  store i64 %15, i64* %4, align 8
  br label %16

16:                                               ; preds = %27, %10
  %17 = load i64, i64* %4, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load i8*, i8** %2, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i32, i32* @stdout, align 4
  %23 = call i64 @fwrite(i8* %20, i32 1, i64 %21, i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  store i32 1, i32* %1, align 4
  br label %40

27:                                               ; preds = %19
  %28 = load i64, i64* %5, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = getelementptr i8, i8* %29, i64 %28
  store i8* %30, i8** %2, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %4, align 8
  %33 = sub i64 %32, %31
  store i64 %33, i64* %4, align 8
  br label %16

34:                                               ; preds = %16
  %35 = load i32, i32* @stdout, align 4
  %36 = call i64 @fflush(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 1, i32* %1, align 4
  br label %40

39:                                               ; preds = %34
  store i32 0, i32* %1, align 4
  br label %40

40:                                               ; preds = %39, %38, %26, %9
  %41 = load i32, i32* %1, align 4
  ret i32 %41
}

declare dso_local i64 @find_map(i8**, i8**, i32) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32) #1

declare dso_local i64 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
