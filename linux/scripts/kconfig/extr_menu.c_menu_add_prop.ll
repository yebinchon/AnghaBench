; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_menu.c_menu_add_prop.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_menu.c_menu_add_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { %struct.property*, i32, %struct.menu*, i32 }
%struct.property = type { i8*, %struct.TYPE_2__, %struct.expr*, %struct.menu* }
%struct.TYPE_2__ = type { %struct.expr* }
%struct.expr = type { i32 }

@current_entry = common dso_local global %struct.menu* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"leading whitespace ignored\00", align 1
@rootmenu = common dso_local global %struct.menu zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"prompt redefined\00", align 1
@P_PROMPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.property* (i32, i8*, %struct.expr*, %struct.expr*)* @menu_add_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.property* @menu_add_prop(i32 %0, i8* %1, %struct.expr* %2, %struct.expr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.expr*, align 8
  %8 = alloca %struct.expr*, align 8
  %9 = alloca %struct.property*, align 8
  %10 = alloca %struct.menu*, align 8
  %11 = alloca %struct.expr*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.expr* %2, %struct.expr** %7, align 8
  store %struct.expr* %3, %struct.expr** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.menu*, %struct.menu** @current_entry, align 8
  %14 = getelementptr inbounds %struct.menu, %struct.menu* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.property* @prop_alloc(i32 %12, i32 %15)
  store %struct.property* %16, %struct.property** %9, align 8
  %17 = load %struct.menu*, %struct.menu** @current_entry, align 8
  %18 = load %struct.property*, %struct.property** %9, align 8
  %19 = getelementptr inbounds %struct.property, %struct.property* %18, i32 0, i32 3
  store %struct.menu* %17, %struct.menu** %19, align 8
  %20 = load %struct.expr*, %struct.expr** %7, align 8
  %21 = load %struct.property*, %struct.property** %9, align 8
  %22 = getelementptr inbounds %struct.property, %struct.property* %21, i32 0, i32 2
  store %struct.expr* %20, %struct.expr** %22, align 8
  %23 = load %struct.expr*, %struct.expr** %8, align 8
  %24 = load %struct.property*, %struct.property** %9, align 8
  %25 = getelementptr inbounds %struct.property, %struct.property* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.expr* %23, %struct.expr** %26, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %93

29:                                               ; preds = %4
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call i64 @isspace(i8 signext %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load %struct.property*, %struct.property** %9, align 8
  %36 = call i32 @prop_warn(%struct.property* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %42, %34
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = call i64 @isspace(i8 signext %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %6, align 8
  br label %37

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %29
  %47 = load %struct.menu*, %struct.menu** @current_entry, align 8
  %48 = getelementptr inbounds %struct.menu, %struct.menu* %47, i32 0, i32 0
  %49 = load %struct.property*, %struct.property** %48, align 8
  %50 = icmp ne %struct.property* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.menu*, %struct.menu** @current_entry, align 8
  %53 = icmp ne %struct.menu* %52, @rootmenu
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.property*, %struct.property** %9, align 8
  %56 = call i32 @prop_warn(%struct.property* %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %51, %46
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @P_PROMPT, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %89

61:                                               ; preds = %57
  %62 = load %struct.menu*, %struct.menu** @current_entry, align 8
  store %struct.menu* %62, %struct.menu** %10, align 8
  br label %63

63:                                               ; preds = %74, %73, %61
  %64 = load %struct.menu*, %struct.menu** %10, align 8
  %65 = getelementptr inbounds %struct.menu, %struct.menu* %64, i32 0, i32 2
  %66 = load %struct.menu*, %struct.menu** %65, align 8
  store %struct.menu* %66, %struct.menu** %10, align 8
  %67 = icmp ne %struct.menu* %66, null
  br i1 %67, label %68, label %88

68:                                               ; preds = %63
  %69 = load %struct.menu*, %struct.menu** %10, align 8
  %70 = getelementptr inbounds %struct.menu, %struct.menu* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %63

74:                                               ; preds = %68
  %75 = load %struct.menu*, %struct.menu** %10, align 8
  %76 = getelementptr inbounds %struct.menu, %struct.menu* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call %struct.expr* @expr_copy(i32 %77)
  store %struct.expr* %78, %struct.expr** %11, align 8
  %79 = load %struct.property*, %struct.property** %9, align 8
  %80 = getelementptr inbounds %struct.property, %struct.property* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load %struct.expr*, %struct.expr** %81, align 8
  %83 = load %struct.expr*, %struct.expr** %11, align 8
  %84 = call %struct.expr* @expr_alloc_and(%struct.expr* %82, %struct.expr* %83)
  %85 = load %struct.property*, %struct.property** %9, align 8
  %86 = getelementptr inbounds %struct.property, %struct.property* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store %struct.expr* %84, %struct.expr** %87, align 8
  br label %63

88:                                               ; preds = %63
  br label %89

89:                                               ; preds = %88, %57
  %90 = load %struct.property*, %struct.property** %9, align 8
  %91 = load %struct.menu*, %struct.menu** @current_entry, align 8
  %92 = getelementptr inbounds %struct.menu, %struct.menu* %91, i32 0, i32 0
  store %struct.property* %90, %struct.property** %92, align 8
  br label %93

93:                                               ; preds = %89, %4
  %94 = load i8*, i8** %6, align 8
  %95 = load %struct.property*, %struct.property** %9, align 8
  %96 = getelementptr inbounds %struct.property, %struct.property* %95, i32 0, i32 0
  store i8* %94, i8** %96, align 8
  %97 = load %struct.property*, %struct.property** %9, align 8
  ret %struct.property* %97
}

declare dso_local %struct.property* @prop_alloc(i32, i32) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @prop_warn(%struct.property*, i8*) #1

declare dso_local %struct.expr* @expr_copy(i32) #1

declare dso_local %struct.expr* @expr_alloc_and(%struct.expr*, %struct.expr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
