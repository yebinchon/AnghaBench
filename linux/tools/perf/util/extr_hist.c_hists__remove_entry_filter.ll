; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hists__remove_entry_filter.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hists__remove_entry_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.hists = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.hist_entry = type { i32, i32, i32, %struct.TYPE_7__, i64, i64, %struct.hist_entry* }
%struct.TYPE_7__ = type { i64 }

@symbol_conf = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hists*, %struct.hist_entry*, i32)* @hists__remove_entry_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hists__remove_entry_filter(%struct.hists* %0, %struct.hist_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.hists*, align 8
  %5 = alloca %struct.hist_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hist_entry*, align 8
  store %struct.hists* %0, %struct.hists** %4, align 8
  store %struct.hist_entry* %1, %struct.hist_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = shl i32 1, %8
  %10 = xor i32 %9, -1
  %11 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %12 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @symbol_conf, i32 0, i32 0), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %56

17:                                               ; preds = %3
  %18 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %19 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %18, i32 0, i32 6
  %20 = load %struct.hist_entry*, %struct.hist_entry** %19, align 8
  store %struct.hist_entry* %20, %struct.hist_entry** %7, align 8
  br label %21

21:                                               ; preds = %51, %17
  %22 = load %struct.hist_entry*, %struct.hist_entry** %7, align 8
  %23 = icmp ne %struct.hist_entry* %22, null
  br i1 %23, label %24, label %55

24:                                               ; preds = %21
  %25 = load %struct.hist_entry*, %struct.hist_entry** %7, align 8
  %26 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %25, i32 0, i32 3
  %27 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %28 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %27, i32 0, i32 3
  %29 = call i32 @he_stat__add_stat(%struct.TYPE_7__* %26, %struct.TYPE_7__* %28)
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 1, %30
  %32 = xor i32 %31, -1
  %33 = load %struct.hist_entry*, %struct.hist_entry** %7, align 8
  %34 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.hist_entry*, %struct.hist_entry** %7, align 8
  %38 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %24
  br label %51

42:                                               ; preds = %24
  %43 = load %struct.hist_entry*, %struct.hist_entry** %7, align 8
  %44 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load %struct.hist_entry*, %struct.hist_entry** %7, align 8
  %46 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %45, i32 0, i32 2
  store i32 0, i32* %46, align 8
  %47 = load %struct.hist_entry*, %struct.hist_entry** %7, align 8
  %48 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %47, i32 0, i32 5
  store i64 0, i64* %48, align 8
  %49 = load %struct.hist_entry*, %struct.hist_entry** %7, align 8
  %50 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %42, %41
  %52 = load %struct.hist_entry*, %struct.hist_entry** %7, align 8
  %53 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %52, i32 0, i32 6
  %54 = load %struct.hist_entry*, %struct.hist_entry** %53, align 8
  store %struct.hist_entry* %54, %struct.hist_entry** %7, align 8
  br label %21

55:                                               ; preds = %21
  br label %56

56:                                               ; preds = %55, %3
  %57 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %58 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %88

62:                                               ; preds = %56
  %63 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %64 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  %65 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %66 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %65, i32 0, i32 2
  store i32 0, i32* %66, align 8
  %67 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %68 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %67, i32 0, i32 5
  store i64 0, i64* %68, align 8
  %69 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %70 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %69, i32 0, i32 4
  store i64 0, i64* %70, align 8
  %71 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %72 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.hists*, %struct.hists** %4, align 8
  %76 = getelementptr inbounds %struct.hists, %struct.hists* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %74
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 4
  %82 = load %struct.hists*, %struct.hists** %4, align 8
  %83 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %84 = call i32 @hists__inc_filter_stats(%struct.hists* %82, %struct.hist_entry* %83)
  %85 = load %struct.hists*, %struct.hists** %4, align 8
  %86 = load %struct.hist_entry*, %struct.hist_entry** %5, align 8
  %87 = call i32 @hists__calc_col_len(%struct.hists* %85, %struct.hist_entry* %86)
  br label %88

88:                                               ; preds = %62, %61
  ret void
}

declare dso_local i32 @he_stat__add_stat(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i32 @hists__inc_filter_stats(%struct.hists*, %struct.hist_entry*) #1

declare dso_local i32 @hists__calc_col_len(%struct.hists*, %struct.hist_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
