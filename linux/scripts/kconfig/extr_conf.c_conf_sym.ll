; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_conf.c_conf_sym.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_conf.c_conf_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { %struct.TYPE_2__*, %struct.symbol* }
%struct.TYPE_2__ = type { i32 }
%struct.symbol = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"%*s%s \00", align 1
@indent = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"(%s) \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"/n\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"/m\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"/y\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"/?] \00", align 1
@line = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"es\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.menu*)* @conf_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conf_sym(%struct.menu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.menu*, align 8
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.menu* %0, %struct.menu** %3, align 8
  %7 = load %struct.menu*, %struct.menu** %3, align 8
  %8 = getelementptr inbounds %struct.menu, %struct.menu* %7, i32 0, i32 1
  %9 = load %struct.symbol*, %struct.symbol** %8, align 8
  store %struct.symbol* %9, %struct.symbol** %4, align 8
  br label %10

10:                                               ; preds = %1, %91, %98, %110, %114, %122
  %11 = load i8*, i8** @indent, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 -1
  %13 = load %struct.menu*, %struct.menu** %3, align 8
  %14 = getelementptr inbounds %struct.menu, %struct.menu* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load %struct.symbol*, %struct.symbol** %4, align 8
  %20 = getelementptr inbounds %struct.symbol, %struct.symbol* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %10
  %24 = load %struct.symbol*, %struct.symbol** %4, align 8
  %25 = getelementptr inbounds %struct.symbol, %struct.symbol* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %23, %10
  %29 = call i32 @putchar(i8 signext 91)
  %30 = load %struct.symbol*, %struct.symbol** %4, align 8
  %31 = call i32 @sym_get_tristate_value(%struct.symbol* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  switch i32 %32, label %39 [
    i32 129, label %33
    i32 130, label %35
    i32 128, label %37
  ]

33:                                               ; preds = %28
  %34 = call i32 @putchar(i8 signext 78)
  br label %39

35:                                               ; preds = %28
  %36 = call i32 @putchar(i8 signext 77)
  br label %39

37:                                               ; preds = %28
  %38 = call i32 @putchar(i8 signext 89)
  br label %39

39:                                               ; preds = %28, %37, %35, %33
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 129
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.symbol*, %struct.symbol** %4, align 8
  %44 = call i64 @sym_tristate_within_range(%struct.symbol* %43, i32 129)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %42, %39
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 130
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.symbol*, %struct.symbol** %4, align 8
  %53 = call i64 @sym_tristate_within_range(%struct.symbol* %52, i32 130)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %51, %48
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 128
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.symbol*, %struct.symbol** %4, align 8
  %62 = call i64 @sym_tristate_within_range(%struct.symbol* %61, i32 128)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %60, %57
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %68 = load %struct.symbol*, %struct.symbol** %4, align 8
  %69 = load %struct.symbol*, %struct.symbol** %4, align 8
  %70 = call i32 @sym_get_string_value(%struct.symbol* %69)
  %71 = call i32 @conf_askvalue(%struct.symbol* %68, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %125

74:                                               ; preds = %66
  %75 = load i32*, i32** @line, align 8
  %76 = call i32 @strip(i32* %75)
  %77 = load i32*, i32** @line, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  switch i32 %79, label %114 [
    i32 110, label %80
    i32 78, label %80
    i32 109, label %92
    i32 77, label %92
    i32 121, label %99
    i32 89, label %99
    i32 0, label %111
    i32 63, label %113
  ]

80:                                               ; preds = %74, %74
  store i32 129, i32* %6, align 4
  %81 = load i32*, i32** @line, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i32*, i32** @line, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = call i32 @strcmp(i32* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85, %80
  br label %115

91:                                               ; preds = %85
  br label %10

92:                                               ; preds = %74, %74
  store i32 130, i32* %6, align 4
  %93 = load i32*, i32** @line, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  br label %115

98:                                               ; preds = %92
  br label %10

99:                                               ; preds = %74, %74
  store i32 128, i32* %6, align 4
  %100 = load i32*, i32** @line, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load i32*, i32** @line, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = call i32 @strcmp(i32* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %104, %99
  br label %115

110:                                              ; preds = %104
  br label %10

111:                                              ; preds = %74
  %112 = load i32, i32* %5, align 4
  store i32 %112, i32* %6, align 4
  br label %115

113:                                              ; preds = %74
  br label %122

114:                                              ; preds = %74
  br label %10

115:                                              ; preds = %111, %109, %97, %90
  %116 = load %struct.symbol*, %struct.symbol** %4, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i64 @sym_set_tristate_value(%struct.symbol* %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i32 0, i32* %2, align 4
  br label %125

121:                                              ; preds = %115
  br label %122

122:                                              ; preds = %121, %113
  %123 = load %struct.menu*, %struct.menu** %3, align 8
  %124 = call i32 @print_help(%struct.menu* %123)
  br label %10

125:                                              ; preds = %120, %73
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @sym_get_tristate_value(%struct.symbol*) #1

declare dso_local i64 @sym_tristate_within_range(%struct.symbol*, i32) #1

declare dso_local i32 @conf_askvalue(%struct.symbol*, i32) #1

declare dso_local i32 @sym_get_string_value(%struct.symbol*) #1

declare dso_local i32 @strip(i32*) #1

declare dso_local i32 @strcmp(i32*, i8*) #1

declare dso_local i64 @sym_set_tristate_value(%struct.symbol*, i32) #1

declare dso_local i32 @print_help(%struct.menu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
