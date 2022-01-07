; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_nconf.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_nconf.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"NCONFIG_MODE\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"single_menu\00", align 1
@single_menu_mode = common dso_local global i32 0, align 4
@stdscr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"Your terminal should have at least 20 lines and 75 columns\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@ESCDELAY = common dso_local global i32 0, align 4
@curses_menu_items = common dso_local global i32 0, align 4
@curses_menu = common dso_local global i32 0, align 4
@O_SHOWDESC = common dso_local global i32 0, align 4
@O_SHOWMATCH = common dso_local global i32 0, align 4
@O_ONEVALUE = common dso_local global i32 0, align 4
@O_NONCYCLIC = common dso_local global i32 0, align 4
@O_IGNORECASE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@attributes = common dso_local global i32* null, align 8
@MAIN_MENU_FORE = common dso_local global i64 0, align 8
@MAIN_MENU_BACK = common dso_local global i64 0, align 8
@MAIN_MENU_GREY = common dso_local global i64 0, align 8
@main_window = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"Instructions\00", align 1
@menu_no_f_instructions = common dso_local global i32 0, align 4
@conf_message_callback = common dso_local global i32* null, align 8
@global_exit = common dso_local global i32 0, align 4
@rootmenu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = call i32 @conf_set_message_callback(i32* null)
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %20, i8*** %5, align 8
  br label %21

21:                                               ; preds = %17, %11, %2
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @conf_parse(i8* %24)
  %26 = call i32 @conf_read(i32* null)
  %27 = call i8* @getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @strcasecmp(i8* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 1, i32* @single_menu_mode, align 4
  br label %35

35:                                               ; preds = %34, %30
  br label %36

36:                                               ; preds = %35, %21
  %37 = call i32 (...) @initscr()
  %38 = call i32 (...) @set_colors()
  %39 = call i32 (...) @cbreak()
  %40 = call i32 (...) @noecho()
  %41 = load i32, i32* @stdscr, align 4
  %42 = load i32, i32* @TRUE, align 4
  %43 = call i32 @keypad(i32 %41, i32 %42)
  %44 = call i32 @curs_set(i32 0)
  %45 = load i32, i32* @stdscr, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @getmaxyx(i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 75
  br i1 %50, label %54, label %51

51:                                               ; preds = %36
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 20
  br i1 %53, label %54, label %57

54:                                               ; preds = %51, %36
  %55 = call i32 (...) @endwin()
  %56 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %135

57:                                               ; preds = %51
  %58 = load i32, i32* @stdscr, align 4
  %59 = load i64, i64* @FALSE, align 8
  %60 = call i32 @notimeout(i32 %58, i64 %59)
  store i32 1, i32* @ESCDELAY, align 4
  %61 = load i32, i32* @curses_menu_items, align 4
  %62 = call i32 @new_menu(i32 %61)
  store i32 %62, i32* @curses_menu, align 4
  %63 = load i32, i32* @curses_menu, align 4
  %64 = load i32, i32* @O_SHOWDESC, align 4
  %65 = call i32 @menu_opts_off(i32 %63, i32 %64)
  %66 = load i32, i32* @curses_menu, align 4
  %67 = load i32, i32* @O_SHOWMATCH, align 4
  %68 = call i32 @menu_opts_on(i32 %66, i32 %67)
  %69 = load i32, i32* @curses_menu, align 4
  %70 = load i32, i32* @O_ONEVALUE, align 4
  %71 = call i32 @menu_opts_on(i32 %69, i32 %70)
  %72 = load i32, i32* @curses_menu, align 4
  %73 = load i32, i32* @O_NONCYCLIC, align 4
  %74 = call i32 @menu_opts_on(i32 %72, i32 %73)
  %75 = load i32, i32* @curses_menu, align 4
  %76 = load i32, i32* @O_IGNORECASE, align 4
  %77 = call i32 @menu_opts_on(i32 %75, i32 %76)
  %78 = load i32, i32* @curses_menu, align 4
  %79 = call i32 @set_menu_mark(i32 %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i32, i32* @curses_menu, align 4
  %81 = load i32*, i32** @attributes, align 8
  %82 = load i64, i64* @MAIN_MENU_FORE, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @set_menu_fore(i32 %80, i32 %84)
  %86 = load i32, i32* @curses_menu, align 4
  %87 = load i32*, i32** @attributes, align 8
  %88 = load i64, i64* @MAIN_MENU_BACK, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @set_menu_back(i32 %86, i32 %90)
  %92 = load i32, i32* @curses_menu, align 4
  %93 = load i32*, i32** @attributes, align 8
  %94 = load i64, i64* @MAIN_MENU_GREY, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @set_menu_grey(i32 %92, i32 %96)
  %98 = call i32 (...) @conf_get_configname()
  %99 = call i32 @set_config_filename(i32 %98)
  %100 = call i32 (...) @setup_windows()
  %101 = call i32 @KEY_F(i32 1)
  %102 = call i64 @has_key(i32 %101)
  %103 = load i64, i64* @FALSE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %57
  %106 = load i32, i32* @main_window, align 4
  %107 = load i32, i32* @menu_no_f_instructions, align 4
  %108 = call i32 @show_scroll_win(i32 %106, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %105, %57
  %110 = load i32*, i32** @conf_message_callback, align 8
  %111 = call i32 @conf_set_message_callback(i32* %110)
  br label %112

112:                                              ; preds = %124, %109
  %113 = load i32, i32* @global_exit, align 4
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = call i32 @conf(i32* @rootmenu)
  %118 = load i32, i32* @global_exit, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = call i64 (...) @do_exit()
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %125

124:                                              ; preds = %120, %116
  br label %112

125:                                              ; preds = %123, %112
  %126 = load i32, i32* @curses_menu, align 4
  %127 = call i32 @unpost_menu(i32 %126)
  %128 = load i32, i32* @curses_menu, align 4
  %129 = call i32 @free_menu(i32 %128)
  %130 = load i32, i32* @main_window, align 4
  %131 = call i32 @delwin(i32 %130)
  %132 = call i32 (...) @clear()
  %133 = call i32 (...) @refresh()
  %134 = call i32 (...) @endwin()
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %125, %54
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @conf_set_message_callback(i32*) #1

declare dso_local i32 @conf_parse(i8*) #1

declare dso_local i32 @conf_read(i32*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @initscr(...) #1

declare dso_local i32 @set_colors(...) #1

declare dso_local i32 @cbreak(...) #1

declare dso_local i32 @noecho(...) #1

declare dso_local i32 @keypad(i32, i32) #1

declare dso_local i32 @curs_set(i32) #1

declare dso_local i32 @getmaxyx(i32, i32, i32) #1

declare dso_local i32 @endwin(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @notimeout(i32, i64) #1

declare dso_local i32 @new_menu(i32) #1

declare dso_local i32 @menu_opts_off(i32, i32) #1

declare dso_local i32 @menu_opts_on(i32, i32) #1

declare dso_local i32 @set_menu_mark(i32, i8*) #1

declare dso_local i32 @set_menu_fore(i32, i32) #1

declare dso_local i32 @set_menu_back(i32, i32) #1

declare dso_local i32 @set_menu_grey(i32, i32) #1

declare dso_local i32 @set_config_filename(i32) #1

declare dso_local i32 @conf_get_configname(...) #1

declare dso_local i32 @setup_windows(...) #1

declare dso_local i64 @has_key(i32) #1

declare dso_local i32 @KEY_F(i32) #1

declare dso_local i32 @show_scroll_win(i32, i8*, i32) #1

declare dso_local i32 @conf(i32*) #1

declare dso_local i64 @do_exit(...) #1

declare dso_local i32 @unpost_menu(i32) #1

declare dso_local i32 @free_menu(i32) #1

declare dso_local i32 @delwin(i32) #1

declare dso_local i32 @clear(...) #1

declare dso_local i32 @refresh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
