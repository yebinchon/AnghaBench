; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/gtk/extr_hists.c_perf_gtk__add_callchain.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/gtk/extr_hists.c_perf_gtk__add_callchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.rb_root = type { i32 }

@callchain_param = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CHAIN_FLAT = common dso_local global i64 0, align 8
@CHAIN_FOLDED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rb_root*, i32*, i32*, i32, i32)* @perf_gtk__add_callchain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_gtk__add_callchain(%struct.rb_root* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.rb_root*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rb_root* %0, %struct.rb_root** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @callchain_param, i32 0, i32 0), align 8
  %12 = load i64, i64* @CHAIN_FLAT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %5
  %15 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @perf_gtk__add_callchain_flat(%struct.rb_root* %15, i32* %16, i32* %17, i32 %18, i32 %19)
  br label %40

21:                                               ; preds = %5
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @callchain_param, i32 0, i32 0), align 8
  %23 = load i64, i64* @CHAIN_FOLDED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @perf_gtk__add_callchain_folded(%struct.rb_root* %26, i32* %27, i32* %28, i32 %29, i32 %30)
  br label %39

32:                                               ; preds = %21
  %33 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @perf_gtk__add_callchain_graph(%struct.rb_root* %33, i32* %34, i32* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %32, %25
  br label %40

40:                                               ; preds = %39, %14
  ret void
}

declare dso_local i32 @perf_gtk__add_callchain_flat(%struct.rb_root*, i32*, i32*, i32, i32) #1

declare dso_local i32 @perf_gtk__add_callchain_folded(%struct.rb_root*, i32*, i32*, i32, i32) #1

declare dso_local i32 @perf_gtk__add_callchain_graph(%struct.rb_root*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
