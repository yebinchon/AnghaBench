; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_stats.c_rpc_count_iostats_metrics.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_stats.c_rpc_count_iostats_metrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i64, i32, i64, %struct.rpc_rqst* }
%struct.rpc_rqst = type { i64, i32, i64, i64, i64, i32 }
%struct.rpc_iostats = type { i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rpc_count_iostats_metrics(%struct.rpc_task* %0, %struct.rpc_iostats* %1) #0 {
  %3 = alloca %struct.rpc_task*, align 8
  %4 = alloca %struct.rpc_iostats*, align 8
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %3, align 8
  store %struct.rpc_iostats* %1, %struct.rpc_iostats** %4, align 8
  %9 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %10 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %9, i32 0, i32 3
  %11 = load %struct.rpc_rqst*, %struct.rpc_rqst** %10, align 8
  store %struct.rpc_rqst* %11, %struct.rpc_rqst** %5, align 8
  %12 = load %struct.rpc_iostats*, %struct.rpc_iostats** %4, align 8
  %13 = icmp ne %struct.rpc_iostats* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %16 = icmp ne %struct.rpc_rqst* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %2
  br label %128

18:                                               ; preds = %14
  %19 = call i64 (...) @ktime_get()
  store i64 %19, i64* %8, align 8
  %20 = load %struct.rpc_iostats*, %struct.rpc_iostats** %4, align 8
  %21 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.rpc_iostats*, %struct.rpc_iostats** %4, align 8
  %24 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %28 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @max(i32 %29, i32 1)
  %31 = load %struct.rpc_iostats*, %struct.rpc_iostats** %4, align 8
  %32 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %30
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 4
  %37 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %38 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.rpc_iostats*, %struct.rpc_iostats** %4, align 8
  %41 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %39
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %41, align 8
  %46 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %47 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.rpc_iostats*, %struct.rpc_iostats** %4, align 8
  %50 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 4
  %55 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %56 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.rpc_iostats*, %struct.rpc_iostats** %4, align 8
  %59 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %57
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 8
  store i64 0, i64* %6, align 8
  %64 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %65 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @ktime_to_ns(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %18
  %70 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %71 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %74 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @ktime_sub(i64 %72, i32 %75)
  store i64 %76, i64* %6, align 8
  %77 = load %struct.rpc_iostats*, %struct.rpc_iostats** %4, align 8
  %78 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %77, i32 0, i32 4
  %79 = load i8*, i8** %78, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i8* @ktime_add(i8* %79, i64 %80)
  %82 = load %struct.rpc_iostats*, %struct.rpc_iostats** %4, align 8
  %83 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %82, i32 0, i32 4
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %69, %18
  %85 = load %struct.rpc_iostats*, %struct.rpc_iostats** %4, align 8
  %86 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %85, i32 0, i32 3
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %89 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i8* @ktime_add(i8* %87, i64 %90)
  %92 = load %struct.rpc_iostats*, %struct.rpc_iostats** %4, align 8
  %93 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  %94 = load i64, i64* %8, align 8
  %95 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %96 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @ktime_sub(i64 %94, i32 %97)
  store i64 %98, i64* %7, align 8
  %99 = load %struct.rpc_iostats*, %struct.rpc_iostats** %4, align 8
  %100 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = load i64, i64* %7, align 8
  %103 = call i8* @ktime_add(i8* %101, i64 %102)
  %104 = load %struct.rpc_iostats*, %struct.rpc_iostats** %4, align 8
  %105 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %104, i32 0, i32 2
  store i8* %103, i8** %105, align 8
  %106 = load %struct.rpc_task*, %struct.rpc_task** %3, align 8
  %107 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp slt i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %84
  %111 = load %struct.rpc_iostats*, %struct.rpc_iostats** %4, align 8
  %112 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %110, %84
  %116 = load %struct.rpc_iostats*, %struct.rpc_iostats** %4, align 8
  %117 = getelementptr inbounds %struct.rpc_iostats, %struct.rpc_iostats* %116, i32 0, i32 0
  %118 = call i32 @spin_unlock(i32* %117)
  %119 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %120 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load i64, i64* %6, align 8
  %123 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %124 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %7, align 8
  %127 = call i32 @trace_rpc_stats_latency(i32 %121, i64 %122, i64 %125, i64 %126)
  br label %128

128:                                              ; preds = %115, %17
  ret void
}

declare dso_local i64 @ktime_get(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i64 @ktime_to_ns(i64) #1

declare dso_local i64 @ktime_sub(i64, i32) #1

declare dso_local i8* @ktime_add(i8*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @trace_rpc_stats_latency(i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
