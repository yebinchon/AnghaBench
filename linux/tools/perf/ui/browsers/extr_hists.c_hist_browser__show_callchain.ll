; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hist_browser__show_callchain.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/browsers/extr_hists.c_hist_browser__show_callchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.hist_browser = type { %struct.hist_entry* }
%struct.hist_entry = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.callchain_print_arg = type { i64 }

@symbol_conf = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@callchain_param = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@CHAIN_FLAT = common dso_local global i64 0, align 8
@CHAIN_FOLDED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hist_browser*, %struct.hist_entry*, i32, i16, i32, %struct.callchain_print_arg*, i32)* @hist_browser__show_callchain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hist_browser__show_callchain(%struct.hist_browser* %0, %struct.hist_entry* %1, i32 %2, i16 zeroext %3, i32 %4, %struct.callchain_print_arg* %5, i32 %6) #0 {
  %8 = alloca %struct.hist_browser*, align 8
  %9 = alloca %struct.hist_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca %struct.callchain_print_arg*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.hist_browser* %0, %struct.hist_browser** %8, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %9, align 8
  store i32 %2, i32* %10, align 4
  store i16 %3, i16* %11, align 2
  store i32 %4, i32* %12, align 4
  store %struct.callchain_print_arg* %5, %struct.callchain_print_arg** %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = load %struct.hist_entry*, %struct.hist_entry** %9, align 8
  %19 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @hists__total_period(i32 %20)
  store i32 %21, i32* %15, align 4
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @symbol_conf, i32 0, i32 0), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %7
  %25 = load %struct.hist_entry*, %struct.hist_entry** %9, align 8
  %26 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %25, i32 0, i32 2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %16, align 4
  br label %35

30:                                               ; preds = %7
  %31 = load %struct.hist_entry*, %struct.hist_entry** %9, align 8
  %32 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %16, align 4
  br label %35

35:                                               ; preds = %30, %24
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @callchain_param, i32 0, i32 0), align 8
  %37 = load i64, i64* @CHAIN_FLAT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load %struct.hist_browser*, %struct.hist_browser** %8, align 8
  %41 = load %struct.hist_entry*, %struct.hist_entry** %9, align 8
  %42 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %41, i32 0, i32 0
  %43 = load i16, i16* %11, align 2
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.callchain_print_arg*, %struct.callchain_print_arg** %13, align 8
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @hist_browser__show_callchain_flat(%struct.hist_browser* %40, i32* %42, i16 zeroext %43, i32 %44, i32 %45, i32 %46, %struct.callchain_print_arg* %47, i32 %48)
  store i32 %49, i32* %17, align 4
  br label %78

50:                                               ; preds = %35
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @callchain_param, i32 0, i32 0), align 8
  %52 = load i64, i64* @CHAIN_FOLDED, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load %struct.hist_browser*, %struct.hist_browser** %8, align 8
  %56 = load %struct.hist_entry*, %struct.hist_entry** %9, align 8
  %57 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %56, i32 0, i32 0
  %58 = load i16, i16* %11, align 2
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.callchain_print_arg*, %struct.callchain_print_arg** %13, align 8
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @hist_browser__show_callchain_folded(%struct.hist_browser* %55, i32* %57, i16 zeroext %58, i32 %59, i32 %60, i32 %61, %struct.callchain_print_arg* %62, i32 %63)
  store i32 %64, i32* %17, align 4
  br label %77

65:                                               ; preds = %50
  %66 = load %struct.hist_browser*, %struct.hist_browser** %8, align 8
  %67 = load %struct.hist_entry*, %struct.hist_entry** %9, align 8
  %68 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %67, i32 0, i32 0
  %69 = load i32, i32* %10, align 4
  %70 = load i16, i16* %11, align 2
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.callchain_print_arg*, %struct.callchain_print_arg** %13, align 8
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @hist_browser__show_callchain_graph(%struct.hist_browser* %66, i32* %68, i32 %69, i16 zeroext %70, i32 %71, i32 %72, i32 %73, %struct.callchain_print_arg* %74, i32 %75)
  store i32 %76, i32* %17, align 4
  br label %77

77:                                               ; preds = %65, %54
  br label %78

78:                                               ; preds = %77, %39
  %79 = load %struct.callchain_print_arg*, %struct.callchain_print_arg** %13, align 8
  %80 = getelementptr inbounds %struct.callchain_print_arg, %struct.callchain_print_arg* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.hist_entry*, %struct.hist_entry** %9, align 8
  %85 = load %struct.hist_browser*, %struct.hist_browser** %8, align 8
  %86 = getelementptr inbounds %struct.hist_browser, %struct.hist_browser* %85, i32 0, i32 0
  store %struct.hist_entry* %84, %struct.hist_entry** %86, align 8
  br label %87

87:                                               ; preds = %83, %78
  %88 = load i32, i32* %17, align 4
  ret i32 %88
}

declare dso_local i32 @hists__total_period(i32) #1

declare dso_local i32 @hist_browser__show_callchain_flat(%struct.hist_browser*, i32*, i16 zeroext, i32, i32, i32, %struct.callchain_print_arg*, i32) #1

declare dso_local i32 @hist_browser__show_callchain_folded(%struct.hist_browser*, i32*, i16 zeroext, i32, i32, i32, %struct.callchain_print_arg*, i32) #1

declare dso_local i32 @hist_browser__show_callchain_graph(%struct.hist_browser*, i32*, i32, i16 zeroext, i32, i32, i32, %struct.callchain_print_arg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
