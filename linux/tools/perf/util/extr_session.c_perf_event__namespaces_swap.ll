; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_event__namespaces_swap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_event__namespaces_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.perf_ns_link_info*, i8*, i8* }
%struct.perf_ns_link_info = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.perf_event*, i32)* @perf_event__namespaces_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_event__namespaces_swap(%union.perf_event* %0, i32 %1) #0 {
  %3 = alloca %union.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.perf_ns_link_info*, align 8
  store %union.perf_event* %0, %union.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %union.perf_event*, %union.perf_event** %3, align 8
  %8 = bitcast %union.perf_event* %7 to %struct.TYPE_2__*
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 3
  %10 = load i8*, i8** %9, align 8
  %11 = call i8* @bswap_32(i8* %10)
  %12 = load %union.perf_event*, %union.perf_event** %3, align 8
  %13 = bitcast %union.perf_event* %12 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  store i8* %11, i8** %14, align 8
  %15 = load %union.perf_event*, %union.perf_event** %3, align 8
  %16 = bitcast %union.perf_event* %15 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @bswap_32(i8* %18)
  %20 = load %union.perf_event*, %union.perf_event** %3, align 8
  %21 = bitcast %union.perf_event* %20 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i8* %19, i8** %22, align 8
  %23 = load %union.perf_event*, %union.perf_event** %3, align 8
  %24 = bitcast %union.perf_event* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i8* @bswap_64(i64 %26)
  %28 = ptrtoint i8* %27 to i64
  %29 = load %union.perf_event*, %union.perf_event** %3, align 8
  %30 = bitcast %union.perf_event* %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i64 %28, i64* %31, align 8
  store i64 0, i64* %5, align 8
  br label %32

32:                                               ; preds = %60, %2
  %33 = load i64, i64* %5, align 8
  %34 = load %union.perf_event*, %union.perf_event** %3, align 8
  %35 = bitcast %union.perf_event* %34 to %struct.TYPE_2__*
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %33, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %32
  %40 = load %union.perf_event*, %union.perf_event** %3, align 8
  %41 = bitcast %union.perf_event* %40 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load %struct.perf_ns_link_info*, %struct.perf_ns_link_info** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds %struct.perf_ns_link_info, %struct.perf_ns_link_info* %43, i64 %44
  store %struct.perf_ns_link_info* %45, %struct.perf_ns_link_info** %6, align 8
  %46 = load %struct.perf_ns_link_info*, %struct.perf_ns_link_info** %6, align 8
  %47 = getelementptr inbounds %struct.perf_ns_link_info, %struct.perf_ns_link_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i8* @bswap_64(i64 %48)
  %50 = ptrtoint i8* %49 to i64
  %51 = load %struct.perf_ns_link_info*, %struct.perf_ns_link_info** %6, align 8
  %52 = getelementptr inbounds %struct.perf_ns_link_info, %struct.perf_ns_link_info* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.perf_ns_link_info*, %struct.perf_ns_link_info** %6, align 8
  %54 = getelementptr inbounds %struct.perf_ns_link_info, %struct.perf_ns_link_info* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i8* @bswap_64(i64 %55)
  %57 = ptrtoint i8* %56 to i64
  %58 = load %struct.perf_ns_link_info*, %struct.perf_ns_link_info** %6, align 8
  %59 = getelementptr inbounds %struct.perf_ns_link_info, %struct.perf_ns_link_info* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %39
  %61 = load i64, i64* %5, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %5, align 8
  br label %32

63:                                               ; preds = %32
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load %union.perf_event*, %union.perf_event** %3, align 8
  %68 = load %union.perf_event*, %union.perf_event** %3, align 8
  %69 = bitcast %union.perf_event* %68 to %struct.TYPE_2__*
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load %struct.perf_ns_link_info*, %struct.perf_ns_link_info** %70, align 8
  %72 = load i64, i64* %5, align 8
  %73 = getelementptr inbounds %struct.perf_ns_link_info, %struct.perf_ns_link_info* %71, i64 %72
  %74 = call i32 @swap_sample_id_all(%union.perf_event* %67, %struct.perf_ns_link_info* %73)
  br label %75

75:                                               ; preds = %66, %63
  ret void
}

declare dso_local i8* @bswap_32(i8*) #1

declare dso_local i8* @bswap_64(i64) #1

declare dso_local i32 @swap_sample_id_all(%union.perf_event*, %struct.perf_ns_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
