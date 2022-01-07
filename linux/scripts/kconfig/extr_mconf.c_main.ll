; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_mconf.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_mconf.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGINT = common dso_local global i32 0, align 4
@sig_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@silent = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"MENUCONFIG_MODE\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"single_menu\00", align 1
@single_menu_mode = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Your display is too small to run Menuconfig!\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"It must be at least 19 lines by 80 columns.\0A\00", align 1
@conf_message_callback = common dso_local global i32* null, align 8
@rootmenu = common dso_local global i32 0, align 4
@KEY_ESC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* @SIGINT, align 4
  %9 = load i32, i32* @sig_handler, align 4
  %10 = call i32 @signal(i32 %8, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  store i32 1, i32* @silent, align 4
  %20 = call i32 @conf_set_message_callback(i32* null)
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i32 1
  store i8** %22, i8*** %5, align 8
  br label %23

23:                                               ; preds = %19, %13, %2
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @conf_parse(i8* %26)
  %28 = call i32 @conf_read(i32* null)
  %29 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @strcasecmp(i8* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store i32 1, i32* @single_menu_mode, align 4
  br label %37

37:                                               ; preds = %36, %32
  br label %38

38:                                               ; preds = %37, %23
  %39 = call i64 @init_dialog(i32* null)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32, i32* @stderr, align 4
  %45 = call i32 @fprintf(i32 %44, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %60

46:                                               ; preds = %38
  %47 = call i32 (...) @conf_get_configname()
  %48 = call i32 @set_config_filename(i32 %47)
  %49 = load i32*, i32** @conf_message_callback, align 8
  %50 = call i32 @conf_set_message_callback(i32* %49)
  br label %51

51:                                               ; preds = %54, %46
  %52 = call i32 @conf(i32* @rootmenu, i32* null)
  %53 = call i32 (...) @handle_exit()
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @KEY_ESC, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %51, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %41
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @conf_set_message_callback(i32*) #1

declare dso_local i32 @conf_parse(i8*) #1

declare dso_local i32 @conf_read(i32*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @init_dialog(i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @set_config_filename(i32) #1

declare dso_local i32 @conf_get_configname(...) #1

declare dso_local i32 @conf(i32*, i32*) #1

declare dso_local i32 @handle_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
