; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_conf.c_conf_string.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_conf.c_conf_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { %struct.TYPE_2__*, %struct.symbol* }
%struct.TYPE_2__ = type { i32 }
%struct.symbol = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"%*s%s \00", align 1
@indent = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"(%s) \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@line = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.menu*)* @conf_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conf_string(%struct.menu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.menu*, align 8
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca i8*, align 8
  store %struct.menu* %0, %struct.menu** %3, align 8
  %6 = load %struct.menu*, %struct.menu** %3, align 8
  %7 = getelementptr inbounds %struct.menu, %struct.menu* %6, i32 0, i32 1
  %8 = load %struct.symbol*, %struct.symbol** %7, align 8
  store %struct.symbol* %8, %struct.symbol** %4, align 8
  br label %9

9:                                                ; preds = %1, %68
  %10 = load i8*, i8** @indent, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 -1
  %12 = load %struct.menu*, %struct.menu** %3, align 8
  %13 = getelementptr inbounds %struct.menu, %struct.menu* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.symbol*, %struct.symbol** %4, align 8
  %19 = getelementptr inbounds %struct.symbol, %struct.symbol* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = load %struct.symbol*, %struct.symbol** %4, align 8
  %23 = call i8* @sym_get_string_value(%struct.symbol* %22)
  store i8* %23, i8** %5, align 8
  %24 = load %struct.symbol*, %struct.symbol** %4, align 8
  %25 = call i8* @sym_get_string_value(%struct.symbol* %24)
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %9
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %27, %9
  %31 = load %struct.symbol*, %struct.symbol** %4, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @conf_askvalue(%struct.symbol* %31, i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %69

36:                                               ; preds = %30
  %37 = load i32*, i32** @line, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %50 [
    i32 10, label %40
    i32 63, label %41
  ]

40:                                               ; preds = %36
  br label %59

41:                                               ; preds = %36
  %42 = load i32*, i32** @line, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 10
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.menu*, %struct.menu** %3, align 8
  %48 = call i32 @print_help(%struct.menu* %47)
  store i8* null, i8** %5, align 8
  br label %59

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %36, %49
  %51 = load i32*, i32** @line, align 8
  %52 = load i32*, i32** @line, align 8
  %53 = call i32 @strlen(i32* %52)
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  store i32 0, i32* %56, align 4
  %57 = load i32*, i32** @line, align 8
  %58 = bitcast i32* %57 to i8*
  store i8* %58, i8** %5, align 8
  br label %59

59:                                               ; preds = %50, %46, %40
  %60 = load i8*, i8** %5, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load %struct.symbol*, %struct.symbol** %4, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = call i64 @sym_set_string_value(%struct.symbol* %63, i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %69

68:                                               ; preds = %62, %59
  br label %9

69:                                               ; preds = %67, %35
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @sym_get_string_value(%struct.symbol*) #1

declare dso_local i32 @conf_askvalue(%struct.symbol*, i8*) #1

declare dso_local i32 @print_help(%struct.menu*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i64 @sym_set_string_value(%struct.symbol*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
