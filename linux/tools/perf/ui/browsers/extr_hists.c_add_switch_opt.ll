; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_add_switch_opt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_add_switch_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_browser = type { i32 }
%struct.popup_action = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Switch to another data file in PWD\00", align 1
@do_switch_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_browser*, %struct.popup_action*, i8**)* @add_switch_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_switch_opt(%struct.hist_browser* %0, %struct.popup_action* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hist_browser*, align 8
  %6 = alloca %struct.popup_action*, align 8
  %7 = alloca i8**, align 8
  store %struct.hist_browser* %0, %struct.hist_browser** %5, align 8
  store %struct.popup_action* %1, %struct.popup_action** %6, align 8
  store i8** %2, i8*** %7, align 8
  %8 = load %struct.hist_browser*, %struct.hist_browser** %5, align 8
  %9 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @is_report_browser(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %23

14:                                               ; preds = %3
  %15 = load i8**, i8*** %7, align 8
  %16 = call i64 @asprintf(i8** %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %23

19:                                               ; preds = %14
  %20 = load i32, i32* @do_switch_data, align 4
  %21 = load %struct.popup_action*, %struct.popup_action** %6, align 8
  %22 = getelementptr inbounds %struct.popup_action, %struct.popup_action* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  store i32 1, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %18, %13
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @is_report_browser(i32) #1

declare dso_local i64 @asprintf(i8**, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
