; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__copy_last_branch_rb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_cs-etm.c_cs_etm__copy_last_branch_rb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_queue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.cs_etm_traceid_queue = type { i64, %struct.branch_stack*, %struct.branch_stack* }
%struct.branch_stack = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs_etm_queue*, %struct.cs_etm_traceid_queue*)* @cs_etm__copy_last_branch_rb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_etm__copy_last_branch_rb(%struct.cs_etm_queue* %0, %struct.cs_etm_traceid_queue* %1) #0 {
  %3 = alloca %struct.cs_etm_queue*, align 8
  %4 = alloca %struct.cs_etm_traceid_queue*, align 8
  %5 = alloca %struct.branch_stack*, align 8
  %6 = alloca %struct.branch_stack*, align 8
  %7 = alloca i64, align 8
  store %struct.cs_etm_queue* %0, %struct.cs_etm_queue** %3, align 8
  store %struct.cs_etm_traceid_queue* %1, %struct.cs_etm_traceid_queue** %4, align 8
  %8 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %4, align 8
  %9 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %8, i32 0, i32 2
  %10 = load %struct.branch_stack*, %struct.branch_stack** %9, align 8
  store %struct.branch_stack* %10, %struct.branch_stack** %5, align 8
  %11 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %4, align 8
  %12 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %11, i32 0, i32 1
  %13 = load %struct.branch_stack*, %struct.branch_stack** %12, align 8
  store %struct.branch_stack* %13, %struct.branch_stack** %6, align 8
  store i64 0, i64* %7, align 8
  %14 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %15 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.branch_stack*, %struct.branch_stack** %6, align 8
  %18 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %20 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %76

24:                                               ; preds = %2
  %25 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %3, align 8
  %26 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %4, align 8
  %32 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %30, %33
  store i64 %34, i64* %7, align 8
  %35 = load %struct.branch_stack*, %struct.branch_stack** %6, align 8
  %36 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %40 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %4, align 8
  %43 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i64, i64* %7, align 8
  %47 = mul i64 4, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @memcpy(i32* %38, i32* %45, i32 %48)
  %50 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %51 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.cs_etm_queue*, %struct.cs_etm_queue** %3, align 8
  %54 = getelementptr inbounds %struct.cs_etm_queue, %struct.cs_etm_queue* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp uge i64 %52, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %24
  %61 = load %struct.branch_stack*, %struct.branch_stack** %6, align 8
  %62 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load %struct.branch_stack*, %struct.branch_stack** %5, align 8
  %67 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load %struct.cs_etm_traceid_queue*, %struct.cs_etm_traceid_queue** %4, align 8
  %71 = getelementptr inbounds %struct.cs_etm_traceid_queue, %struct.cs_etm_traceid_queue* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = mul i64 4, %72
  %74 = trunc i64 %73 to i32
  %75 = call i32 @memcpy(i32* %65, i32* %69, i32 %74)
  br label %76

76:                                               ; preds = %23, %60, %24
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
