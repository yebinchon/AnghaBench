; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_secref_whitelist.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_secref_whitelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sectioncheck = type { i32 }

@init_data_sections = common dso_local global i32 0, align 4
@data_sections = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"__param\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c".init.text\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"__param_ops_\00", align 1
@init_exit_sections = common dso_local global i32 0, align 4
@head_sections = common dso_local global i32 0, align 4
@init_sections = common dso_local global i32 0, align 4
@linker_symbols = common dso_local global i32 0, align 4
@text_sections = common dso_local global i32 0, align 4
@optim_symbols = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c".L\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sectioncheck*, i8*, i8*, i8*, i8*)* @secref_whitelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secref_whitelist(%struct.sectioncheck* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sectioncheck*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.sectioncheck* %0, %struct.sectioncheck** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = load i32, i32* @init_data_sections, align 4
  %14 = call i64 @match(i8* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %5
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* @data_sections, align 4
  %19 = call i64 @match(i8* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i8*, i8** %9, align 8
  %23 = call i64 @strstarts(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %97

26:                                               ; preds = %21, %16, %5
  %27 = load i8*, i8** %10, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* @data_sections, align 4
  %33 = call i64 @match(i8* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i8*, i8** %9, align 8
  %37 = call i64 @strstarts(i8* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %97

40:                                               ; preds = %35, %30, %26
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* @init_exit_sections, align 4
  %43 = call i64 @match(i8* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* @data_sections, align 4
  %48 = call i64 @match(i8* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i8*, i8** %9, align 8
  %52 = load %struct.sectioncheck*, %struct.sectioncheck** %7, align 8
  %53 = getelementptr inbounds %struct.sectioncheck, %struct.sectioncheck* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @match(i8* %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %97

58:                                               ; preds = %50, %45, %40
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* @head_sections, align 4
  %61 = call i64 @match(i8* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* @init_sections, align 4
  %66 = call i64 @match(i8* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 0, i32* %6, align 4
  br label %97

69:                                               ; preds = %63, %58
  %70 = load i8*, i8** %11, align 8
  %71 = load i32, i32* @linker_symbols, align 4
  %72 = call i64 @match(i8* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 0, i32* %6, align 4
  br label %97

75:                                               ; preds = %69
  %76 = load i8*, i8** %8, align 8
  %77 = load i32, i32* @text_sections, align 4
  %78 = call i64 @match(i8* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = load i8*, i8** %10, align 8
  %82 = load i32, i32* @init_sections, align 4
  %83 = call i64 @match(i8* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i8*, i8** %9, align 8
  %87 = load i32, i32* @optim_symbols, align 4
  %88 = call i64 @match(i8* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 0, i32* %6, align 4
  br label %97

91:                                               ; preds = %85, %80, %75
  %92 = load i8*, i8** %9, align 8
  %93 = call i64 @strstarts(i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 0, i32* %6, align 4
  br label %97

96:                                               ; preds = %91
  store i32 1, i32* %6, align 4
  br label %97

97:                                               ; preds = %96, %95, %90, %74, %68, %57, %39, %25
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i64 @match(i8*, i32) #1

declare dso_local i64 @strstarts(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
