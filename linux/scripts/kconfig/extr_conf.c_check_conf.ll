; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_conf.c_check_conf.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_conf.c_check_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { %struct.menu*, %struct.menu*, %struct.symbol* }
%struct.symbol = type { i8*, i64 }

@yes = common dso_local global i64 0, align 8
@input_mode = common dso_local global i64 0, align 8
@listnewconfig = common dso_local global i64 0, align 8
@S_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s%s=%s\0A\00", align 1
@CONFIG_ = common dso_local global i8* null, align 8
@conf_cnt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"*\0A* Restart config...\0A*\0A\00", align 1
@rootEntry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.menu*)* @check_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_conf(%struct.menu* %0) #0 {
  %2 = alloca %struct.menu*, align 8
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca %struct.menu*, align 8
  %5 = alloca i8*, align 8
  store %struct.menu* %0, %struct.menu** %2, align 8
  %6 = load %struct.menu*, %struct.menu** %2, align 8
  %7 = call i32 @menu_is_visible(%struct.menu* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %98

10:                                               ; preds = %1
  %11 = load %struct.menu*, %struct.menu** %2, align 8
  %12 = getelementptr inbounds %struct.menu, %struct.menu* %11, i32 0, i32 2
  %13 = load %struct.symbol*, %struct.symbol** %12, align 8
  store %struct.symbol* %13, %struct.symbol** %3, align 8
  %14 = load %struct.symbol*, %struct.symbol** %3, align 8
  %15 = icmp ne %struct.symbol* %14, null
  br i1 %15, label %16, label %85

16:                                               ; preds = %10
  %17 = load %struct.symbol*, %struct.symbol** %3, align 8
  %18 = call i32 @sym_has_value(%struct.symbol* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %85, label %20

20:                                               ; preds = %16
  %21 = load %struct.symbol*, %struct.symbol** %3, align 8
  %22 = call i64 @sym_is_changeable(%struct.symbol* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = load %struct.symbol*, %struct.symbol** %3, align 8
  %26 = call i64 @sym_is_choice(%struct.symbol* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %84

28:                                               ; preds = %24
  %29 = load %struct.symbol*, %struct.symbol** %3, align 8
  %30 = call i64 @sym_get_tristate_value(%struct.symbol* %29)
  %31 = load i64, i64* @yes, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %84

33:                                               ; preds = %28, %20
  %34 = load i64, i64* @input_mode, align 8
  %35 = load i64, i64* @listnewconfig, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %72

37:                                               ; preds = %33
  %38 = load %struct.symbol*, %struct.symbol** %3, align 8
  %39 = getelementptr inbounds %struct.symbol, %struct.symbol* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %71

42:                                               ; preds = %37
  %43 = load %struct.symbol*, %struct.symbol** %3, align 8
  %44 = getelementptr inbounds %struct.symbol, %struct.symbol* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @S_STRING, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load %struct.symbol*, %struct.symbol** %3, align 8
  %50 = call i8* @sym_get_string_value(%struct.symbol* %49)
  store i8* %50, i8** %5, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i8* @sym_escape_string_value(i8* %51)
  store i8* %52, i8** %5, align 8
  %53 = load i8*, i8** @CONFIG_, align 8
  %54 = load %struct.symbol*, %struct.symbol** %3, align 8
  %55 = getelementptr inbounds %struct.symbol, %struct.symbol* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %53, i8* %56, i8* %57)
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @free(i8* %59)
  br label %70

61:                                               ; preds = %42
  %62 = load %struct.symbol*, %struct.symbol** %3, align 8
  %63 = call i8* @sym_get_string_value(%struct.symbol* %62)
  store i8* %63, i8** %5, align 8
  %64 = load i8*, i8** @CONFIG_, align 8
  %65 = load %struct.symbol*, %struct.symbol** %3, align 8
  %66 = getelementptr inbounds %struct.symbol, %struct.symbol* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %64, i8* %67, i8* %68)
  br label %70

70:                                               ; preds = %61, %48
  br label %71

71:                                               ; preds = %70, %37
  br label %83

72:                                               ; preds = %33
  %73 = load i32, i32* @conf_cnt, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* @conf_cnt, align 4
  %75 = icmp ne i32 %73, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %72
  %79 = load %struct.menu*, %struct.menu** %2, align 8
  %80 = call i32 @menu_get_parent_menu(%struct.menu* %79)
  store i32 %80, i32* @rootEntry, align 4
  %81 = load i32, i32* @rootEntry, align 4
  %82 = call i32 @conf(i32 %81)
  br label %83

83:                                               ; preds = %78, %71
  br label %84

84:                                               ; preds = %83, %28, %24
  br label %85

85:                                               ; preds = %84, %16, %10
  %86 = load %struct.menu*, %struct.menu** %2, align 8
  %87 = getelementptr inbounds %struct.menu, %struct.menu* %86, i32 0, i32 1
  %88 = load %struct.menu*, %struct.menu** %87, align 8
  store %struct.menu* %88, %struct.menu** %4, align 8
  br label %89

89:                                               ; preds = %94, %85
  %90 = load %struct.menu*, %struct.menu** %4, align 8
  %91 = icmp ne %struct.menu* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load %struct.menu*, %struct.menu** %4, align 8
  call void @check_conf(%struct.menu* %93)
  br label %94

94:                                               ; preds = %92
  %95 = load %struct.menu*, %struct.menu** %4, align 8
  %96 = getelementptr inbounds %struct.menu, %struct.menu* %95, i32 0, i32 0
  %97 = load %struct.menu*, %struct.menu** %96, align 8
  store %struct.menu* %97, %struct.menu** %4, align 8
  br label %89

98:                                               ; preds = %9, %89
  ret void
}

declare dso_local i32 @menu_is_visible(%struct.menu*) #1

declare dso_local i32 @sym_has_value(%struct.symbol*) #1

declare dso_local i64 @sym_is_changeable(%struct.symbol*) #1

declare dso_local i64 @sym_is_choice(%struct.symbol*) #1

declare dso_local i64 @sym_get_tristate_value(%struct.symbol*) #1

declare dso_local i8* @sym_get_string_value(%struct.symbol*) #1

declare dso_local i8* @sym_escape_string_value(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @menu_get_parent_menu(%struct.menu*) #1

declare dso_local i32 @conf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
