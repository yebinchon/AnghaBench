; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_config.c_get_value.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_config.c_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config_file_eof = common dso_local global i64 0, align 8
@MAXNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32 (i8*, i8*, i8*)*, i8*, i8*, i32)* @get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_value(i32 (i8*, i8*, i8*)* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32 (i8*, i8*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 (i8*, i8*, i8*)* %0, i32 (i8*, i8*, i8*)** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  br label %12

12:                                               ; preds = %34, %4
  %13 = call i32 (...) @get_next_char()
  store i32 %13, i32* %10, align 4
  %14 = load i64, i64* @config_file_eof, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %35

17:                                               ; preds = %12
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @iskeychar(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %35

22:                                               ; preds = %17
  %23 = load i32, i32* %10, align 4
  %24 = trunc i32 %23 to i8
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %9, align 4
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  store i8 %24, i8* %29, align 1
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @MAXNAME, align 4
  %32 = icmp uge i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  store i32 -1, i32* %5, align 4
  br label %69

34:                                               ; preds = %22
  br label %12

35:                                               ; preds = %21, %16
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 0, i8* %39, align 1
  br label %40

40:                                               ; preds = %48, %35
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 32
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 9
  br label %46

46:                                               ; preds = %43, %40
  %47 = phi i1 [ true, %40 ], [ %45, %43 ]
  br i1 %47, label %48, label %50

48:                                               ; preds = %46
  %49 = call i32 (...) @get_next_char()
  store i32 %49, i32* %10, align 4
  br label %40

50:                                               ; preds = %46
  store i8* null, i8** %11, align 8
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 10
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 61
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 -1, i32* %5, align 4
  br label %69

57:                                               ; preds = %53
  %58 = call i8* (...) @parse_value()
  store i8* %58, i8** %11, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  store i32 -1, i32* %5, align 4
  br label %69

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62, %50
  %64 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %6, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 %64(i8* %65, i8* %66, i8* %67)
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %63, %61, %56, %33
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @get_next_char(...) #1

declare dso_local i32 @iskeychar(i32) #1

declare dso_local i8* @parse_value(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
