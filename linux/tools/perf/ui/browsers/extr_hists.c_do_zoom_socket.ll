; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_do_zoom_socket.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_do_zoom_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_browser = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.popup_action = type { i32 }

@socket = common dso_local global i32 0, align 4
@HISTC_SOCKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_browser*, %struct.popup_action*)* @do_zoom_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_zoom_socket(%struct.hist_browser* %0, %struct.popup_action* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hist_browser*, align 8
  %5 = alloca %struct.popup_action*, align 8
  store %struct.hist_browser* %0, %struct.hist_browser** %4, align 8
  store %struct.popup_action* %1, %struct.popup_action** %5, align 8
  %6 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %7 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = load i32, i32* @socket, align 4
  %10 = call i32 @hists__has(%struct.TYPE_3__* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.popup_action*, %struct.popup_action** %5, align 8
  %14 = getelementptr inbounds %struct.popup_action, %struct.popup_action* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %65

18:                                               ; preds = %12
  %19 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %20 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %25, label %40

25:                                               ; preds = %18
  %26 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %27 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %30 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @pstack__remove(i32 %28, i32* %32)
  %34 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %35 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 -1, i32* %37, align 4
  %38 = load i32, i32* @HISTC_SOCKET, align 4
  %39 = call i32 @perf_hpp__set_elide(i32 %38, i32 0)
  br label %58

40:                                               ; preds = %18
  %41 = load %struct.popup_action*, %struct.popup_action** %5, align 8
  %42 = getelementptr inbounds %struct.popup_action, %struct.popup_action* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %45 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* @HISTC_SOCKET, align 4
  %49 = call i32 @perf_hpp__set_elide(i32 %48, i32 1)
  %50 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %51 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %54 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = call i32 @pstack__push(i32 %52, i32* %56)
  br label %58

58:                                               ; preds = %40, %25
  %59 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %60 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = call i32 @hists__filter_by_socket(%struct.TYPE_3__* %61)
  %63 = load %struct.hist_browser*, %struct.hist_browser** %4, align 8
  %64 = call i32 @hist_browser__reset(%struct.hist_browser* %63)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %58, %17
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @hists__has(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @pstack__remove(i32, i32*) #1

declare dso_local i32 @perf_hpp__set_elide(i32, i32) #1

declare dso_local i32 @pstack__push(i32, i32*) #1

declare dso_local i32 @hists__filter_by_socket(%struct.TYPE_3__*) #1

declare dso_local i32 @hist_browser__reset(%struct.hist_browser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
