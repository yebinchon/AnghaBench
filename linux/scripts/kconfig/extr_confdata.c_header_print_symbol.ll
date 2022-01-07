; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_confdata.c_header_print_symbol.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_confdata.c_header_print_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"_MODULE\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"#define %s%s%s 1\0A\00", align 1
@CONFIG_ = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"#define %s%s %s%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"#define %s%s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.symbol*, i8*, i8*)* @header_print_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @header_print_symbol(i32* %0, %struct.symbol* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.symbol* %1, %struct.symbol** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.symbol*, %struct.symbol** %6, align 8
  %12 = getelementptr inbounds %struct.symbol, %struct.symbol* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %65 [
    i32 132, label %14
    i32 128, label %14
    i32 131, label %29
    i32 129, label %57
    i32 130, label %57
  ]

14:                                               ; preds = %4, %4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %20 [
    i32 110, label %18
    i32 109, label %19
  ]

18:                                               ; preds = %14
  br label %28

19:                                               ; preds = %14
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %20

20:                                               ; preds = %14, %19
  %21 = load i32*, i32** %5, align 8
  %22 = load i8*, i8** @CONFIG_, align 8
  %23 = load %struct.symbol*, %struct.symbol** %6, align 8
  %24 = getelementptr inbounds %struct.symbol, %struct.symbol* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 (i32*, i8*, i8*, i8*, i8*, ...) @fprintf(i32* %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %22, i8* %25, i8* %26)
  br label %28

28:                                               ; preds = %20, %18
  br label %66

29:                                               ; preds = %4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 48
  br i1 %34, label %47, label %35

35:                                               ; preds = %29
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 120
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 88
  br i1 %46, label %47, label %48

47:                                               ; preds = %41, %29
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %48

48:                                               ; preds = %47, %41, %35
  %49 = load i32*, i32** %5, align 8
  %50 = load i8*, i8** @CONFIG_, align 8
  %51 = load %struct.symbol*, %struct.symbol** %6, align 8
  %52 = getelementptr inbounds %struct.symbol, %struct.symbol* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 (i32*, i8*, i8*, i8*, i8*, ...) @fprintf(i32* %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %50, i8* %53, i8* %54, i8* %55)
  br label %66

57:                                               ; preds = %4, %4
  %58 = load i32*, i32** %5, align 8
  %59 = load i8*, i8** @CONFIG_, align 8
  %60 = load %struct.symbol*, %struct.symbol** %6, align 8
  %61 = getelementptr inbounds %struct.symbol, %struct.symbol* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 (i32*, i8*, i8*, i8*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %59, i8* %62, i8* %63)
  br label %66

65:                                               ; preds = %4
  br label %66

66:                                               ; preds = %65, %57, %48, %28
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
