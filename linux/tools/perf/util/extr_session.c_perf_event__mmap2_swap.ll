; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_event__mmap2_swap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_session.c_perf_event__mmap2_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.perf_event*, i32)* @perf_event__mmap2_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_event__mmap2_swap(%union.perf_event* %0, i32 %1) #0 {
  %3 = alloca %union.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %union.perf_event* %0, %union.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %union.perf_event*, %union.perf_event** %3, align 8
  %7 = bitcast %union.perf_event* %6 to %struct.TYPE_2__*
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 8
  %9 = load i8*, i8** %8, align 8
  %10 = call i8* @bswap_32(i8* %9)
  %11 = load %union.perf_event*, %union.perf_event** %3, align 8
  %12 = bitcast %union.perf_event* %11 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 8
  store i8* %10, i8** %13, align 8
  %14 = load %union.perf_event*, %union.perf_event** %3, align 8
  %15 = bitcast %union.perf_event* %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 7
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @bswap_32(i8* %17)
  %19 = load %union.perf_event*, %union.perf_event** %3, align 8
  %20 = bitcast %union.perf_event* %19 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 7
  store i8* %18, i8** %21, align 8
  %22 = load %union.perf_event*, %union.perf_event** %3, align 8
  %23 = bitcast %union.perf_event* %22 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 6
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @bswap_64(i8* %25)
  %27 = load %union.perf_event*, %union.perf_event** %3, align 8
  %28 = bitcast %union.perf_event* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 6
  store i8* %26, i8** %29, align 8
  %30 = load %union.perf_event*, %union.perf_event** %3, align 8
  %31 = bitcast %union.perf_event* %30 to %struct.TYPE_2__*
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 5
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @bswap_64(i8* %33)
  %35 = load %union.perf_event*, %union.perf_event** %3, align 8
  %36 = bitcast %union.perf_event* %35 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 5
  store i8* %34, i8** %37, align 8
  %38 = load %union.perf_event*, %union.perf_event** %3, align 8
  %39 = bitcast %union.perf_event* %38 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 4
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* @bswap_64(i8* %41)
  %43 = load %union.perf_event*, %union.perf_event** %3, align 8
  %44 = bitcast %union.perf_event* %43 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  store i8* %42, i8** %45, align 8
  %46 = load %union.perf_event*, %union.perf_event** %3, align 8
  %47 = bitcast %union.perf_event* %46 to %struct.TYPE_2__*
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @bswap_32(i8* %49)
  %51 = load %union.perf_event*, %union.perf_event** %3, align 8
  %52 = bitcast %union.perf_event* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  store i8* %50, i8** %53, align 8
  %54 = load %union.perf_event*, %union.perf_event** %3, align 8
  %55 = bitcast %union.perf_event* %54 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i8* @bswap_32(i8* %57)
  %59 = load %union.perf_event*, %union.perf_event** %3, align 8
  %60 = bitcast %union.perf_event* %59 to %struct.TYPE_2__*
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  store i8* %58, i8** %61, align 8
  %62 = load %union.perf_event*, %union.perf_event** %3, align 8
  %63 = bitcast %union.perf_event* %62 to %struct.TYPE_2__*
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @bswap_64(i8* %65)
  %67 = load %union.perf_event*, %union.perf_event** %3, align 8
  %68 = bitcast %union.perf_event* %67 to %struct.TYPE_2__*
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i8* %66, i8** %69, align 8
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %2
  %73 = load %union.perf_event*, %union.perf_event** %3, align 8
  %74 = bitcast %union.perf_event* %73 to %struct.TYPE_2__*
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = bitcast i32* %75 to i8*
  store i8* %76, i8** %5, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = call i64 @strlen(i8* %77)
  %79 = add nsw i64 %78, 1
  %80 = call i32 @PERF_ALIGN(i64 %79, i32 4)
  %81 = load i8*, i8** %5, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr i8, i8* %81, i64 %82
  store i8* %83, i8** %5, align 8
  %84 = load %union.perf_event*, %union.perf_event** %3, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = call i32 @swap_sample_id_all(%union.perf_event* %84, i8* %85)
  br label %87

87:                                               ; preds = %72, %2
  ret void
}

declare dso_local i8* @bswap_32(i8*) #1

declare dso_local i8* @bswap_64(i8*) #1

declare dso_local i32 @PERF_ALIGN(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @swap_sample_id_all(%union.perf_event*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
