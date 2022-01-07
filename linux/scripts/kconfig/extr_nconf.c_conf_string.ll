; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_nconf.c_conf_string.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_nconf.c_conf_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { i32 }

@inputbox_instructions_int = common dso_local global i8* null, align 8
@inputbox_instructions_hex = common dso_local global i8* null, align 8
@inputbox_instructions_string = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"Internal nconf error!\00", align 1
@main_window = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Main Menu\00", align 1
@dialog_input_result = common dso_local global i32 0, align 4
@dialog_input_result_len = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"You have made an invalid entry.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.menu*)* @conf_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conf_string(%struct.menu* %0) #0 {
  %2 = alloca %struct.menu*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.menu* %0, %struct.menu** %2, align 8
  %6 = load %struct.menu*, %struct.menu** %2, align 8
  %7 = call i8* @menu_get_prompt(%struct.menu* %6)
  store i8* %7, i8** %3, align 8
  br label %8

8:                                                ; preds = %1, %51
  %9 = load %struct.menu*, %struct.menu** %2, align 8
  %10 = getelementptr inbounds %struct.menu, %struct.menu* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @sym_get_type(i32 %11)
  switch i32 %12, label %19 [
    i32 129, label %13
    i32 130, label %15
    i32 128, label %17
  ]

13:                                               ; preds = %8
  %14 = load i8*, i8** @inputbox_instructions_int, align 8
  store i8* %14, i8** %5, align 8
  br label %20

15:                                               ; preds = %8
  %16 = load i8*, i8** @inputbox_instructions_hex, align 8
  store i8* %16, i8** %5, align 8
  br label %20

17:                                               ; preds = %8
  %18 = load i8*, i8** @inputbox_instructions_string, align 8
  store i8* %18, i8** %5, align 8
  br label %20

19:                                               ; preds = %8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %20

20:                                               ; preds = %19, %17, %15, %13
  %21 = load i32, i32* @main_window, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i8*, i8** %3, align 8
  br label %27

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i8* [ %25, %24 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %26 ]
  %29 = load i8*, i8** %5, align 8
  %30 = load %struct.menu*, %struct.menu** %2, align 8
  %31 = getelementptr inbounds %struct.menu, %struct.menu* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sym_get_string_value(i32 %32)
  %34 = call i32 @dialog_inputbox(i32 %21, i8* %28, i8* %29, i32 %33, i32* @dialog_input_result, i32* @dialog_input_result_len)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  switch i32 %35, label %51 [
    i32 0, label %36
    i32 1, label %47
    i32 131, label %50
  ]

36:                                               ; preds = %27
  %37 = load %struct.menu*, %struct.menu** %2, align 8
  %38 = getelementptr inbounds %struct.menu, %struct.menu* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @dialog_input_result, align 4
  %41 = call i32 @sym_set_string_value(i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %52

44:                                               ; preds = %36
  %45 = load i32, i32* @main_window, align 4
  %46 = call i32 @btn_dialog(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 0)
  br label %51

47:                                               ; preds = %27
  %48 = load %struct.menu*, %struct.menu** %2, align 8
  %49 = call i32 @show_help(%struct.menu* %48)
  br label %51

50:                                               ; preds = %27
  br label %52

51:                                               ; preds = %27, %47, %44
  br label %8

52:                                               ; preds = %50, %43
  ret void
}

declare dso_local i8* @menu_get_prompt(%struct.menu*) #1

declare dso_local i32 @sym_get_type(i32) #1

declare dso_local i32 @dialog_inputbox(i32, i8*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @sym_get_string_value(i32) #1

declare dso_local i32 @sym_set_string_value(i32, i32) #1

declare dso_local i32 @btn_dialog(i32, i8*, i32) #1

declare dso_local i32 @show_help(%struct.menu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
