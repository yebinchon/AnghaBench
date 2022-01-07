; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_add_script_opt.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_add_script_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.hist_browser = type { i32 }
%struct.popup_action = type { i64 }
%struct.thread = type { i32 }
%struct.symbol = type { i32 }
%struct.evsel = type { i32 }
%struct.hist_entry = type { i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@sort_order = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" in \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_browser*, %struct.popup_action*, i8**, %struct.thread*, %struct.symbol*, %struct.evsel*)* @add_script_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_script_opt(%struct.hist_browser* %0, %struct.popup_action* %1, i8** %2, %struct.thread* %3, %struct.symbol* %4, %struct.evsel* %5) #0 {
  %7 = alloca %struct.hist_browser*, align 8
  %8 = alloca %struct.popup_action*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.symbol*, align 8
  %12 = alloca %struct.evsel*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.hist_entry*, align 8
  %16 = alloca [128 x i8], align 16
  store %struct.hist_browser* %0, %struct.hist_browser** %7, align 8
  store %struct.popup_action* %1, %struct.popup_action** %8, align 8
  store i8** %2, i8*** %9, align 8
  store %struct.thread* %3, %struct.thread** %10, align 8
  store %struct.symbol* %4, %struct.symbol** %11, align 8
  store %struct.evsel* %5, %struct.evsel** %12, align 8
  %17 = load %struct.hist_browser*, %struct.hist_browser** %7, align 8
  %18 = load %struct.popup_action*, %struct.popup_action** %8, align 8
  %19 = load i8**, i8*** %9, align 8
  %20 = load %struct.thread*, %struct.thread** %10, align 8
  %21 = load %struct.symbol*, %struct.symbol** %11, align 8
  %22 = load %struct.evsel*, %struct.evsel** %12, align 8
  %23 = call i32 @add_script_opt_2(%struct.hist_browser* %17, %struct.popup_action* %18, i8** %19, %struct.thread* %20, %struct.symbol* %21, %struct.evsel* %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %13, align 4
  %24 = load %struct.hist_browser*, %struct.hist_browser** %7, align 8
  %25 = call %struct.hist_entry* @hist_browser__selected_entry(%struct.hist_browser* %24)
  store %struct.hist_entry* %25, %struct.hist_entry** %15, align 8
  %26 = load i64, i64* @sort_order, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %91

28:                                               ; preds = %6
  %29 = load i64, i64* @sort_order, align 8
  %30 = call i64 @strstr(i64 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %91

32:                                               ; preds = %28
  %33 = load i8**, i8*** %9, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %34, i8*** %9, align 8
  %35 = load %struct.popup_action*, %struct.popup_action** %8, align 8
  %36 = getelementptr inbounds %struct.popup_action, %struct.popup_action* %35, i32 1
  store %struct.popup_action* %36, %struct.popup_action** %8, align 8
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %38 = call i32 @sprintf(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %38, i32* %14, align 4
  %39 = load %struct.hist_entry*, %struct.hist_entry** %15, align 8
  %40 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = sub i64 128, %47
  %49 = trunc i64 %48 to i32
  %50 = call i64 @timestamp__scnprintf_usec(i64 %41, i8* %45, i32 %49)
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %14, align 4
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = call i32 @sprintf(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %14, align 4
  %62 = load %struct.hist_entry*, %struct.hist_entry** %15, align 8
  %63 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %66 = add nsw i64 %64, %65
  %67 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = sub i64 128, %72
  %74 = trunc i64 %73 to i32
  %75 = call i64 @timestamp__scnprintf_usec(i64 %66, i8* %70, i32 %74)
  %76 = load %struct.hist_browser*, %struct.hist_browser** %7, align 8
  %77 = load %struct.popup_action*, %struct.popup_action** %8, align 8
  %78 = load i8**, i8*** %9, align 8
  %79 = load %struct.thread*, %struct.thread** %10, align 8
  %80 = load %struct.symbol*, %struct.symbol** %11, align 8
  %81 = load %struct.evsel*, %struct.evsel** %12, align 8
  %82 = getelementptr inbounds [128 x i8], [128 x i8]* %16, i64 0, i64 0
  %83 = call i32 @add_script_opt_2(%struct.hist_browser* %76, %struct.popup_action* %77, i8** %78, %struct.thread* %79, %struct.symbol* %80, %struct.evsel* %81, i8* %82)
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %13, align 4
  %86 = load %struct.hist_entry*, %struct.hist_entry** %15, align 8
  %87 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.popup_action*, %struct.popup_action** %8, align 8
  %90 = getelementptr inbounds %struct.popup_action, %struct.popup_action* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %32, %28, %6
  %92 = load i32, i32* %13, align 4
  ret i32 %92
}

declare dso_local i32 @add_script_opt_2(%struct.hist_browser*, %struct.popup_action*, i8**, %struct.thread*, %struct.symbol*, %struct.evsel*, i8*) #1

declare dso_local %struct.hist_entry* @hist_browser__selected_entry(%struct.hist_browser*) #1

declare dso_local i64 @strstr(i64, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i64 @timestamp__scnprintf_usec(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
