; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/gtk/extr_annotate.c_symbol__gtk_annotate.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/gtk/extr_annotate.c_symbol__gtk_annotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32* }
%struct.symbol = type { i32 }
%struct.map = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.evsel = type { i32 }
%struct.hist_browser_timer = type { i32 }

@annotation__default_options = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Couldn't annotate %s: %s\0A\00", align 1
@pgctx = common dso_local global %struct.TYPE_6__* null, align 8
@SIGSEGV = common dso_local global i32 0, align 4
@perf_gtk__signal = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@GTK_WINDOW_TOPLEVEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"perf annotate\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"delete_event\00", align 1
@gtk_main_quit = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@GTK_POLICY_AUTOMATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.symbol*, %struct.map*, %struct.evsel*, %struct.hist_browser_timer*)* @symbol__gtk_annotate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @symbol__gtk_annotate(%struct.symbol* %0, %struct.map* %1, %struct.evsel* %2, %struct.hist_browser_timer* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca %struct.map*, align 8
  %8 = alloca %struct.evsel*, align 8
  %9 = alloca %struct.hist_browser_timer*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.symbol* %0, %struct.symbol** %6, align 8
  store %struct.map* %1, %struct.map** %7, align 8
  store %struct.evsel* %2, %struct.evsel** %8, align 8
  store %struct.hist_browser_timer* %3, %struct.hist_browser_timer** %9, align 8
  %20 = load %struct.map*, %struct.map** %7, align 8
  %21 = getelementptr inbounds %struct.map, %struct.map* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %149

27:                                               ; preds = %4
  %28 = load %struct.symbol*, %struct.symbol** %6, align 8
  %29 = load %struct.map*, %struct.map** %7, align 8
  %30 = load %struct.evsel*, %struct.evsel** %8, align 8
  %31 = call i32 @symbol__annotate(%struct.symbol* %28, %struct.map* %29, %struct.evsel* %30, i32 0, i32* @annotation__default_options, i32* null)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %27
  %35 = load i32, i32* @BUFSIZ, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %15, align 8
  %38 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %16, align 8
  %39 = load %struct.symbol*, %struct.symbol** %6, align 8
  %40 = load %struct.map*, %struct.map** %7, align 8
  %41 = load i32, i32* %14, align 4
  %42 = trunc i64 %36 to i32
  %43 = call i32 @symbol__strerror_disassemble(%struct.symbol* %39, %struct.map* %40, i32 %41, i8* %38, i32 %42)
  %44 = load %struct.symbol*, %struct.symbol** %6, align 8
  %45 = getelementptr inbounds %struct.symbol, %struct.symbol* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ui__error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %46, i8* %38)
  store i32 -1, i32* %5, align 4
  %48 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %48)
  br label %149

49:                                               ; preds = %27
  %50 = load %struct.symbol*, %struct.symbol** %6, align 8
  %51 = load %struct.evsel*, %struct.evsel** %8, align 8
  %52 = call i32 @symbol__calc_percent(%struct.symbol* %50, %struct.evsel* %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pgctx, align 8
  %54 = call i64 @perf_gtk__is_active_context(%struct.TYPE_6__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pgctx, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %10, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pgctx, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %11, align 8
  br label %127

63:                                               ; preds = %49
  %64 = load i32, i32* @SIGSEGV, align 4
  %65 = load i32, i32* @perf_gtk__signal, align 4
  %66 = call i32 @signal(i32 %64, i32 %65)
  %67 = load i32, i32* @SIGFPE, align 4
  %68 = load i32, i32* @perf_gtk__signal, align 4
  %69 = call i32 @signal(i32 %67, i32 %68)
  %70 = load i32, i32* @SIGINT, align 4
  %71 = load i32, i32* @perf_gtk__signal, align 4
  %72 = call i32 @signal(i32 %70, i32 %71)
  %73 = load i32, i32* @SIGQUIT, align 4
  %74 = load i32, i32* @perf_gtk__signal, align 4
  %75 = call i32 @signal(i32 %73, i32 %74)
  %76 = load i32, i32* @SIGTERM, align 4
  %77 = load i32, i32* @perf_gtk__signal, align 4
  %78 = call i32 @signal(i32 %76, i32 %77)
  %79 = load i32, i32* @GTK_WINDOW_TOPLEVEL, align 4
  %80 = call i32* @gtk_window_new(i32 %79)
  store i32* %80, i32** %10, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @GTK_WINDOW(i32* %81)
  %83 = call i32 @gtk_window_set_title(i32 %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* @gtk_main_quit, align 4
  %86 = call i32 @g_signal_connect(i32* %84, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32* null)
  %87 = load i32*, i32** %10, align 8
  %88 = call %struct.TYPE_6__* @perf_gtk__activate_context(i32* %87)
  store %struct.TYPE_6__* %88, %struct.TYPE_6__** @pgctx, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pgctx, align 8
  %90 = icmp ne %struct.TYPE_6__* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %63
  store i32 -1, i32* %5, align 4
  br label %149

92:                                               ; preds = %63
  %93 = load i32, i32* @FALSE, align 4
  %94 = call i32* @gtk_vbox_new(i32 %93, i32 0)
  store i32* %94, i32** %17, align 8
  %95 = call i32* (...) @gtk_notebook_new()
  store i32* %95, i32** %11, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** @pgctx, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i32* %96, i32** %98, align 8
  %99 = load i32*, i32** %17, align 8
  %100 = call i32 @GTK_BOX(i32* %99)
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* @TRUE, align 4
  %103 = load i32, i32* @TRUE, align 4
  %104 = call i32 @gtk_box_pack_start(i32 %100, i32* %101, i32 %102, i32 %103, i32 0)
  %105 = call i32* (...) @perf_gtk__setup_info_bar()
  store i32* %105, i32** %18, align 8
  %106 = load i32*, i32** %18, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %92
  %109 = load i32*, i32** %17, align 8
  %110 = call i32 @GTK_BOX(i32* %109)
  %111 = load i32*, i32** %18, align 8
  %112 = load i32, i32* @FALSE, align 4
  %113 = load i32, i32* @FALSE, align 4
  %114 = call i32 @gtk_box_pack_start(i32 %110, i32* %111, i32 %112, i32 %113, i32 0)
  br label %115

115:                                              ; preds = %108, %92
  %116 = call i32* (...) @perf_gtk__setup_statusbar()
  store i32* %116, i32** %19, align 8
  %117 = load i32*, i32** %17, align 8
  %118 = call i32 @GTK_BOX(i32* %117)
  %119 = load i32*, i32** %19, align 8
  %120 = load i32, i32* @FALSE, align 4
  %121 = load i32, i32* @FALSE, align 4
  %122 = call i32 @gtk_box_pack_start(i32 %118, i32* %119, i32 %120, i32 %121, i32 0)
  %123 = load i32*, i32** %10, align 8
  %124 = call i32 @GTK_CONTAINER(i32* %123)
  %125 = load i32*, i32** %17, align 8
  %126 = call i32 @gtk_container_add(i32 %124, i32* %125)
  br label %127

127:                                              ; preds = %115, %56
  %128 = call i32* @gtk_scrolled_window_new(i32* null, i32* null)
  store i32* %128, i32** %12, align 8
  %129 = load %struct.symbol*, %struct.symbol** %6, align 8
  %130 = getelementptr inbounds %struct.symbol, %struct.symbol* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32* @gtk_label_new(i32 %131)
  store i32* %132, i32** %13, align 8
  %133 = load i32*, i32** %12, align 8
  %134 = call i32 @GTK_SCROLLED_WINDOW(i32* %133)
  %135 = load i32, i32* @GTK_POLICY_AUTOMATIC, align 4
  %136 = load i32, i32* @GTK_POLICY_AUTOMATIC, align 4
  %137 = call i32 @gtk_scrolled_window_set_policy(i32 %134, i32 %135, i32 %136)
  %138 = load i32*, i32** %11, align 8
  %139 = call i32 @GTK_NOTEBOOK(i32* %138)
  %140 = load i32*, i32** %12, align 8
  %141 = load i32*, i32** %13, align 8
  %142 = call i32 @gtk_notebook_append_page(i32 %139, i32* %140, i32* %141)
  %143 = load i32*, i32** %12, align 8
  %144 = load %struct.symbol*, %struct.symbol** %6, align 8
  %145 = load %struct.map*, %struct.map** %7, align 8
  %146 = load %struct.evsel*, %struct.evsel** %8, align 8
  %147 = load %struct.hist_browser_timer*, %struct.hist_browser_timer** %9, align 8
  %148 = call i32 @perf_gtk__annotate_symbol(i32* %143, %struct.symbol* %144, %struct.map* %145, %struct.evsel* %146, %struct.hist_browser_timer* %147)
  store i32 0, i32* %5, align 4
  br label %149

149:                                              ; preds = %127, %91, %34, %26
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i32 @symbol__annotate(%struct.symbol*, %struct.map*, %struct.evsel*, i32, i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @symbol__strerror_disassemble(%struct.symbol*, %struct.map*, i32, i8*, i32) #1

declare dso_local i32 @ui__error(i8*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @symbol__calc_percent(%struct.symbol*, %struct.evsel*) #1

declare dso_local i64 @perf_gtk__is_active_context(%struct.TYPE_6__*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32* @gtk_window_new(i32) #1

declare dso_local i32 @gtk_window_set_title(i32, i8*) #1

declare dso_local i32 @GTK_WINDOW(i32*) #1

declare dso_local i32 @g_signal_connect(i32*, i8*, i32, i32*) #1

declare dso_local %struct.TYPE_6__* @perf_gtk__activate_context(i32*) #1

declare dso_local i32* @gtk_vbox_new(i32, i32) #1

declare dso_local i32* @gtk_notebook_new(...) #1

declare dso_local i32 @gtk_box_pack_start(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @GTK_BOX(i32*) #1

declare dso_local i32* @perf_gtk__setup_info_bar(...) #1

declare dso_local i32* @perf_gtk__setup_statusbar(...) #1

declare dso_local i32 @gtk_container_add(i32, i32*) #1

declare dso_local i32 @GTK_CONTAINER(i32*) #1

declare dso_local i32* @gtk_scrolled_window_new(i32*, i32*) #1

declare dso_local i32* @gtk_label_new(i32) #1

declare dso_local i32 @gtk_scrolled_window_set_policy(i32, i32, i32) #1

declare dso_local i32 @GTK_SCROLLED_WINDOW(i32*) #1

declare dso_local i32 @gtk_notebook_append_page(i32, i32*, i32*) #1

declare dso_local i32 @GTK_NOTEBOOK(i32*) #1

declare dso_local i32 @perf_gtk__annotate_symbol(i32*, %struct.symbol*, %struct.map*, %struct.evsel*, %struct.hist_browser_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
