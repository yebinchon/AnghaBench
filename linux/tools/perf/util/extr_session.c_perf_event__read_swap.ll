; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_event__read_swap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_event__read_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.perf_event*, i32)* @perf_event__read_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_event__read_swap(%union.perf_event* %0, i32 %1) #0 {
  %3 = alloca %union.perf_event*, align 8
  %4 = alloca i32, align 4
  store %union.perf_event* %0, %union.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %union.perf_event*, %union.perf_event** %3, align 8
  %6 = bitcast %union.perf_event* %5 to %struct.TYPE_2__*
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 5
  %8 = load i8*, i8** %7, align 8
  %9 = call i8* @bswap_32(i8* %8)
  %10 = load %union.perf_event*, %union.perf_event** %3, align 8
  %11 = bitcast %union.perf_event* %10 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 5
  store i8* %9, i8** %12, align 8
  %13 = load %union.perf_event*, %union.perf_event** %3, align 8
  %14 = bitcast %union.perf_event* %13 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 4
  %16 = load i8*, i8** %15, align 8
  %17 = call i8* @bswap_32(i8* %16)
  %18 = load %union.perf_event*, %union.perf_event** %3, align 8
  %19 = bitcast %union.perf_event* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 4
  store i8* %17, i8** %20, align 8
  %21 = load %union.perf_event*, %union.perf_event** %3, align 8
  %22 = bitcast %union.perf_event* %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @bswap_64(i8* %24)
  %26 = load %union.perf_event*, %union.perf_event** %3, align 8
  %27 = bitcast %union.perf_event* %26 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  store i8* %25, i8** %28, align 8
  %29 = load %union.perf_event*, %union.perf_event** %3, align 8
  %30 = bitcast %union.perf_event* %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @bswap_64(i8* %32)
  %34 = load %union.perf_event*, %union.perf_event** %3, align 8
  %35 = bitcast %union.perf_event* %34 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i8* %33, i8** %36, align 8
  %37 = load %union.perf_event*, %union.perf_event** %3, align 8
  %38 = bitcast %union.perf_event* %37 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i8* @bswap_64(i8* %40)
  %42 = load %union.perf_event*, %union.perf_event** %3, align 8
  %43 = bitcast %union.perf_event* %42 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i8* %41, i8** %44, align 8
  %45 = load %union.perf_event*, %union.perf_event** %3, align 8
  %46 = bitcast %union.perf_event* %45 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @bswap_64(i8* %48)
  %50 = load %union.perf_event*, %union.perf_event** %3, align 8
  %51 = bitcast %union.perf_event* %50 to %struct.TYPE_2__*
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i8* %49, i8** %52, align 8
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %2
  %56 = load %union.perf_event*, %union.perf_event** %3, align 8
  %57 = load %union.perf_event*, %union.perf_event** %3, align 8
  %58 = bitcast %union.perf_event* %57 to %struct.TYPE_2__*
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 1
  %60 = call i32 @swap_sample_id_all(%union.perf_event* %56, %struct.TYPE_2__* %59)
  br label %61

61:                                               ; preds = %55, %2
  ret void
}

declare dso_local i8* @bswap_32(i8*) #1

declare dso_local i8* @bswap_64(i8*) #1

declare dso_local i32 @swap_sample_id_all(%union.perf_event*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
