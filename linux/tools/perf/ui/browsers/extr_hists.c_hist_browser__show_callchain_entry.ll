; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hist_browser__show_callchain_entry.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hist_browser__show_callchain_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hist_browser = type { %struct.TYPE_10__, %struct.TYPE_9__*, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.callchain_list = type { %struct.TYPE_9__ }
%struct.callchain_print_arg = type { i32 }
%struct.TYPE_11__ = type { i64 }

@HE_COLORSET_NORMAL = common dso_local global i32 0, align 4
@HE_COLORSET_SELECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@SLSMG_RARROW_CHAR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hist_browser*, %struct.callchain_list*, i8*, i32, i16, %struct.callchain_print_arg*)* @hist_browser__show_callchain_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hist_browser__show_callchain_entry(%struct.hist_browser* %0, %struct.callchain_list* %1, i8* %2, i32 %3, i16 zeroext %4, %struct.callchain_print_arg* %5) #0 {
  %7 = alloca %struct.hist_browser*, align 8
  %8 = alloca %struct.callchain_list*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca %struct.callchain_print_arg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  store %struct.hist_browser* %0, %struct.hist_browser** %7, align 8
  store %struct.callchain_list* %1, %struct.callchain_list** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i16 %4, i16* %11, align 2
  store %struct.callchain_print_arg* %5, %struct.callchain_print_arg** %12, align 8
  %17 = load %struct.callchain_list*, %struct.callchain_list** %8, align 8
  %18 = call signext i8 @callchain_list__folded(%struct.callchain_list* %17)
  store i8 %18, i8* %15, align 1
  %19 = load %struct.hist_browser*, %struct.hist_browser** %7, align 8
  %20 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %6
  %24 = load %struct.callchain_list*, %struct.callchain_list** %8, align 8
  %25 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.callchain_list*, %struct.callchain_list** %8, align 8
  %31 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call %struct.TYPE_11__* @symbol__annotation(i64 %33)
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %29, %23, %6
  %39 = phi i1 [ false, %23 ], [ false, %6 ], [ %37, %29 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* @HE_COLORSET_NORMAL, align 4
  store i32 %41, i32* %13, align 4
  %42 = load %struct.hist_browser*, %struct.hist_browser** %7, align 8
  %43 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 2
  %48 = sub nsw i32 %45, %47
  store i32 %48, i32* %14, align 4
  %49 = load %struct.hist_browser*, %struct.hist_browser** %7, align 8
  %50 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %49, i32 0, i32 0
  %51 = load i16, i16* %11, align 2
  %52 = call i64 @ui_browser__is_current_entry(%struct.TYPE_10__* %50, i16 zeroext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %38
  %55 = load %struct.callchain_list*, %struct.callchain_list** %8, align 8
  %56 = getelementptr inbounds %struct.callchain_list, %struct.callchain_list* %55, i32 0, i32 0
  %57 = load %struct.hist_browser*, %struct.hist_browser** %7, align 8
  %58 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %57, i32 0, i32 1
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %58, align 8
  %59 = load i32, i32* @HE_COLORSET_SELECTED, align 4
  store i32 %59, i32* %13, align 4
  %60 = load %struct.callchain_print_arg*, %struct.callchain_print_arg** %12, align 8
  %61 = getelementptr inbounds %struct.callchain_print_arg, %struct.callchain_print_arg* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %54, %38
  %63 = load %struct.hist_browser*, %struct.hist_browser** %7, align 8
  %64 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %63, i32 0, i32 0
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @ui_browser__set_color(%struct.TYPE_10__* %64, i32 %65)
  %67 = load %struct.hist_browser*, %struct.hist_browser** %7, align 8
  %68 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %67, i32 0, i32 0
  %69 = load i16, i16* %11, align 2
  %70 = call i32 @ui_browser__gotorc(%struct.TYPE_10__* %68, i16 zeroext %69, i32 0)
  %71 = load %struct.hist_browser*, %struct.hist_browser** %7, align 8
  %72 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %71, i32 0, i32 0
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @ui_browser__write_nstring(%struct.TYPE_10__* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load %struct.hist_browser*, %struct.hist_browser** %7, align 8
  %76 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %75, i32 0, i32 0
  %77 = load i8, i8* %15, align 1
  %78 = call i32 @ui_browser__printf(%struct.TYPE_10__* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8 signext %77)
  %79 = load %struct.hist_browser*, %struct.hist_browser** %7, align 8
  %80 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %79, i32 0, i32 0
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %62
  %84 = load i8, i8* @SLSMG_RARROW_CHAR, align 1
  %85 = sext i8 %84 to i32
  br label %87

86:                                               ; preds = %62
  br label %87

87:                                               ; preds = %86, %83
  %88 = phi i32 [ %85, %83 ], [ 32, %86 ]
  %89 = trunc i32 %88 to i8
  %90 = call i32 @ui_browser__write_graph(%struct.TYPE_10__* %80, i8 signext %89)
  %91 = load %struct.hist_browser*, %struct.hist_browser** %7, align 8
  %92 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %91, i32 0, i32 0
  %93 = load i8*, i8** %9, align 8
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @ui_browser__write_nstring(%struct.TYPE_10__* %92, i8* %93, i32 %94)
  ret void
}

declare dso_local signext i8 @callchain_list__folded(%struct.callchain_list*) #1

declare dso_local %struct.TYPE_11__* @symbol__annotation(i64) #1

declare dso_local i64 @ui_browser__is_current_entry(%struct.TYPE_10__*, i16 zeroext) #1

declare dso_local i32 @ui_browser__set_color(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ui_browser__gotorc(%struct.TYPE_10__*, i16 zeroext, i32) #1

declare dso_local i32 @ui_browser__write_nstring(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @ui_browser__printf(%struct.TYPE_10__*, i8*, i8 signext) #1

declare dso_local i32 @ui_browser__write_graph(%struct.TYPE_10__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
