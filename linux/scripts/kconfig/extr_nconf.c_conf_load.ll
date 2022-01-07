; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_nconf.c_conf_load.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_nconf.c_conf_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main_window = common dso_local global i32 0, align 4
@load_config_text = common dso_local global i32 0, align 4
@filename = common dso_local global i32 0, align 4
@dialog_input_result = common dso_local global i32* null, align 8
@dialog_input_result_len = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"File does not exist!\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Load Alternate Configuration\00", align 1
@load_config_help = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @conf_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conf_load() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %0, %30
  %3 = load i32, i32* @main_window, align 4
  %4 = load i32, i32* @load_config_text, align 4
  %5 = load i32, i32* @filename, align 4
  %6 = call i32 @dialog_inputbox(i32 %3, i32* null, i32 %4, i32 %5, i32** @dialog_input_result, i32* @dialog_input_result_len)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  switch i32 %7, label %30 [
    i32 0, label %8
    i32 1, label %25
    i32 128, label %29
  ]

8:                                                ; preds = %2
  %9 = load i32*, i32** @dialog_input_result, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  br label %31

14:                                               ; preds = %8
  %15 = load i32*, i32** @dialog_input_result, align 8
  %16 = call i32 @conf_read(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32*, i32** @dialog_input_result, align 8
  %20 = call i32 @set_config_filename(i32* %19)
  %21 = call i32 @sym_set_change_count(i32 1)
  br label %31

22:                                               ; preds = %14
  %23 = load i32, i32* @main_window, align 4
  %24 = call i32 @btn_dialog(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %30

25:                                               ; preds = %2
  %26 = load i32, i32* @main_window, align 4
  %27 = load i32, i32* @load_config_help, align 4
  %28 = call i32 @show_scroll_win(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %30

29:                                               ; preds = %2
  br label %31

30:                                               ; preds = %2, %25, %22
  br label %2

31:                                               ; preds = %29, %18, %13
  ret void
}

declare dso_local i32 @dialog_inputbox(i32, i32*, i32, i32, i32**, i32*) #1

declare dso_local i32 @conf_read(i32*) #1

declare dso_local i32 @set_config_filename(i32*) #1

declare dso_local i32 @sym_set_change_count(i32) #1

declare dso_local i32 @btn_dialog(i32, i8*, i32) #1

declare dso_local i32 @show_scroll_win(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
