; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_config.c_parse_value.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_config.c_parse_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@parse_value.value = internal global [1024 x i8] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @parse_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_value() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %80, %77, %68, %62, %43, %33, %25, %0
  %8 = call i32 (...) @get_next_char()
  store i32 %8, i32* %6, align 4
  %9 = load i64, i64* %5, align 8
  %10 = icmp uge i64 %9, 1023
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i8* null, i8** %1, align 8
  br label %86

12:                                               ; preds = %7
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 10
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i8* null, i8** %1, align 8
  br label %86

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* @parse_value.value, i64 0, i64 %20
  store i8 0, i8* %21, align 1
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @parse_value.value, i64 0, i64 0), i8** %1, align 8
  br label %86

22:                                               ; preds = %12
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %7

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @isspace(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %2, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i32 1, i32* %4, align 4
  br label %7

34:                                               ; preds = %30, %26
  %35 = load i32, i32* %2, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 59
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 35
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %37
  store i32 1, i32* %3, align 4
  br label %7

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %34
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i64, i64* %5, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i64, i64* %5, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %5, align 8
  %54 = getelementptr inbounds [1024 x i8], [1024 x i8]* @parse_value.value, i64 0, i64 %52
  store i8 32, i8* %54, align 1
  br label %55

55:                                               ; preds = %51, %48
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %45
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %57, 92
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = call i32 (...) @get_next_char()
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  switch i32 %61, label %67 [
    i32 10, label %62
    i32 116, label %63
    i32 98, label %64
    i32 110, label %65
    i32 92, label %66
    i32 34, label %66
  ]

62:                                               ; preds = %59
  br label %7

63:                                               ; preds = %59
  store i32 9, i32* %6, align 4
  br label %68

64:                                               ; preds = %59
  store i32 8, i32* %6, align 4
  br label %68

65:                                               ; preds = %59
  store i32 10, i32* %6, align 4
  br label %68

66:                                               ; preds = %59, %59
  br label %68

67:                                               ; preds = %59
  store i8* null, i8** %1, align 8
  br label %86

68:                                               ; preds = %66, %65, %64, %63
  %69 = load i32, i32* %6, align 4
  %70 = trunc i32 %69 to i8
  %71 = load i64, i64* %5, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %5, align 8
  %73 = getelementptr inbounds [1024 x i8], [1024 x i8]* @parse_value.value, i64 0, i64 %71
  store i8 %70, i8* %73, align 1
  br label %7

74:                                               ; preds = %56
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %75, 34
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* %2, align 4
  %79 = sub nsw i32 1, %78
  store i32 %79, i32* %2, align 4
  br label %7

80:                                               ; preds = %74
  %81 = load i32, i32* %6, align 4
  %82 = trunc i32 %81 to i8
  %83 = load i64, i64* %5, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %5, align 8
  %85 = getelementptr inbounds [1024 x i8], [1024 x i8]* @parse_value.value, i64 0, i64 %83
  store i8 %82, i8* %85, align 1
  br label %7

86:                                               ; preds = %67, %19, %18, %11
  %87 = load i8*, i8** %1, align 8
  ret i8* %87
}

declare dso_local i32 @get_next_char(...) #1

declare dso_local i64 @isspace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
