; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hists__res_sample.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.c_hists__res_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.hist_entry = type { i64, %struct.res_sample* }
%struct.res_sample = type { i32, i32, i32 }
%struct.perf_sample = type { i32, i32, i32 }

@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hist_entry*, %struct.perf_sample*)* @hists__res_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hists__res_sample(%struct.hist_entry* %0, %struct.perf_sample* %1) #0 {
  %3 = alloca %struct.hist_entry*, align 8
  %4 = alloca %struct.perf_sample*, align 8
  %5 = alloca %struct.res_sample*, align 8
  %6 = alloca i32, align 4
  store %struct.hist_entry* %0, %struct.hist_entry** %3, align 8
  store %struct.perf_sample* %1, %struct.perf_sample** %4, align 8
  %7 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %8 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %14 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %14, align 8
  %17 = trunc i64 %15 to i32
  store i32 %17, i32* %6, align 4
  br label %21

18:                                               ; preds = %2
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %20 = call i32 @random_max(i64 %19)
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %18, %12
  %22 = load %struct.hist_entry*, %struct.hist_entry** %3, align 8
  %23 = getelementptr inbounds %struct.hist_entry, %struct.hist_entry* %22, i32 0, i32 1
  %24 = load %struct.res_sample*, %struct.res_sample** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.res_sample, %struct.res_sample* %24, i64 %26
  store %struct.res_sample* %27, %struct.res_sample** %5, align 8
  %28 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %29 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.res_sample*, %struct.res_sample** %5, align 8
  %32 = getelementptr inbounds %struct.res_sample, %struct.res_sample* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %34 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.res_sample*, %struct.res_sample** %5, align 8
  %37 = getelementptr inbounds %struct.res_sample, %struct.res_sample* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.perf_sample*, %struct.perf_sample** %4, align 8
  %39 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.res_sample*, %struct.res_sample** %5, align 8
  %42 = getelementptr inbounds %struct.res_sample, %struct.res_sample* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  ret void
}

declare dso_local i32 @random_max(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
