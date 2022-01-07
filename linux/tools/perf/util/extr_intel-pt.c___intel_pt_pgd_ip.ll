; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c___intel_pt_pgd_ip.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c___intel_pt_pgd_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt_queue = type { %struct.TYPE_6__*, %struct.thread* }
%struct.TYPE_6__ = type { i64 }
%struct.thread = type { i32 }
%struct.addr_location = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 (%struct.TYPE_5__*, i64)*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@PERF_RECORD_MISC_USER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*)* @__intel_pt_pgd_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__intel_pt_pgd_ip(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.intel_pt_queue*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.addr_location, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.intel_pt_queue*
  store %struct.intel_pt_queue* %12, %struct.intel_pt_queue** %6, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %15 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %13, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %22 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @intel_pt_match_pgd_ip(%struct.TYPE_6__* %23, i64 %24, i64 %25, i32* null)
  store i32 %26, i32* %3, align 4
  br label %73

27:                                               ; preds = %2
  %28 = load i32, i32* @PERF_RECORD_MISC_USER, align 4
  store i32 %28, i32* %9, align 4
  %29 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %30 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %29, i32 0, i32 1
  %31 = load %struct.thread*, %struct.thread** %30, align 8
  store %struct.thread* %31, %struct.thread** %7, align 8
  %32 = load %struct.thread*, %struct.thread** %7, align 8
  %33 = icmp ne %struct.thread* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %73

37:                                               ; preds = %27
  %38 = load %struct.thread*, %struct.thread** %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @thread__find_map(%struct.thread* %38, i32 %39, i64 %40, %struct.addr_location* %8)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %8, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %43, %37
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %73

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %8, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64 (%struct.TYPE_5__*, i64)*, i64 (%struct.TYPE_5__*, i64)** %55, align 8
  %57 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %8, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load i64, i64* %4, align 8
  %60 = call i64 %56(%struct.TYPE_5__* %58, i64 %59)
  store i64 %60, i64* %10, align 8
  %61 = load %struct.intel_pt_queue*, %struct.intel_pt_queue** %6, align 8
  %62 = getelementptr inbounds %struct.intel_pt_queue, %struct.intel_pt_queue* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %8, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @intel_pt_match_pgd_ip(%struct.TYPE_6__* %63, i64 %64, i64 %65, i32* %71)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %52, %49, %34, %20
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @intel_pt_match_pgd_ip(%struct.TYPE_6__*, i64, i64, i32*) #1

declare dso_local i32 @thread__find_map(%struct.thread*, i32, i64, %struct.addr_location*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
