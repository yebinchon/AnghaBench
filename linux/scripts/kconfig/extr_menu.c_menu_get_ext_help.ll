; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_menu.c_menu_get_ext_help.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_menu.c_menu_get_ext_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { %struct.symbol* }
%struct.symbol = type { i64 }
%struct.gstr = type { i32 }

@nohelp_text = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"%s%s:\0A\0A\00", align 1
@CONFIG_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_get_ext_help(%struct.menu* %0, %struct.gstr* %1) #0 {
  %3 = alloca %struct.menu*, align 8
  %4 = alloca %struct.gstr*, align 8
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca i8*, align 8
  store %struct.menu* %0, %struct.menu** %3, align 8
  store %struct.gstr* %1, %struct.gstr** %4, align 8
  %7 = load %struct.menu*, %struct.menu** %3, align 8
  %8 = getelementptr inbounds %struct.menu, %struct.menu* %7, i32 0, i32 0
  %9 = load %struct.symbol*, %struct.symbol** %8, align 8
  store %struct.symbol* %9, %struct.symbol** %5, align 8
  %10 = load i8*, i8** @nohelp_text, align 8
  store i8* %10, i8** %6, align 8
  %11 = load %struct.menu*, %struct.menu** %3, align 8
  %12 = call i64 @menu_has_help(%struct.menu* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = load %struct.symbol*, %struct.symbol** %5, align 8
  %16 = getelementptr inbounds %struct.symbol, %struct.symbol* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.gstr*, %struct.gstr** %4, align 8
  %21 = load i32, i32* @CONFIG_, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.symbol*, %struct.symbol** %5, align 8
  %25 = getelementptr inbounds %struct.symbol, %struct.symbol* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 (%struct.gstr*, i8*, i8*, ...) @str_printf(%struct.gstr* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %23, i64 %26)
  br label %28

28:                                               ; preds = %19, %14
  %29 = load %struct.menu*, %struct.menu** %3, align 8
  %30 = call i8* @menu_get_help(%struct.menu* %29)
  store i8* %30, i8** %6, align 8
  br label %31

31:                                               ; preds = %28, %2
  %32 = load %struct.gstr*, %struct.gstr** %4, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 (%struct.gstr*, i8*, i8*, ...) @str_printf(%struct.gstr* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load %struct.symbol*, %struct.symbol** %5, align 8
  %36 = icmp ne %struct.symbol* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.gstr*, %struct.gstr** %4, align 8
  %39 = load %struct.symbol*, %struct.symbol** %5, align 8
  %40 = call i32 @get_symbol_str(%struct.gstr* %38, %struct.symbol* %39, i32* null)
  br label %41

41:                                               ; preds = %37, %31
  ret void
}

declare dso_local i64 @menu_has_help(%struct.menu*) #1

declare dso_local i32 @str_printf(%struct.gstr*, i8*, i8*, ...) #1

declare dso_local i8* @menu_get_help(%struct.menu*) #1

declare dso_local i32 @get_symbol_str(%struct.gstr*, %struct.symbol*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
