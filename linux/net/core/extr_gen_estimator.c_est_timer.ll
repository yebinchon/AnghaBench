; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_gen_estimator.c_est_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_gen_estimator.c_est_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_rate_estimator = type { i32, i32, i32, i32, i32, i64, i32, i64, i32 }
%struct.timer_list = type { i32 }
%struct.gnet_stats_basic_packed = type { i32, i64 }

@timer = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@est = common dso_local global %struct.net_rate_estimator* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @est_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @est_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.net_rate_estimator*, align 8
  %4 = alloca %struct.gnet_stats_basic_packed, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.net_rate_estimator*, %struct.net_rate_estimator** %3, align 8
  %8 = ptrtoint %struct.net_rate_estimator* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @timer, align 4
  %11 = call %struct.net_rate_estimator* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.net_rate_estimator* %11, %struct.net_rate_estimator** %3, align 8
  %12 = load %struct.net_rate_estimator*, %struct.net_rate_estimator** %3, align 8
  %13 = call i32 @est_fetch_counters(%struct.net_rate_estimator* %12, %struct.gnet_stats_basic_packed* %4)
  %14 = getelementptr inbounds %struct.gnet_stats_basic_packed, %struct.gnet_stats_basic_packed* %4, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.net_rate_estimator*, %struct.net_rate_estimator** %3, align 8
  %17 = getelementptr inbounds %struct.net_rate_estimator, %struct.net_rate_estimator* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %15, %18
  %20 = load %struct.net_rate_estimator*, %struct.net_rate_estimator** %3, align 8
  %21 = getelementptr inbounds %struct.net_rate_estimator, %struct.net_rate_estimator* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 10, %22
  %24 = load %struct.net_rate_estimator*, %struct.net_rate_estimator** %3, align 8
  %25 = getelementptr inbounds %struct.net_rate_estimator, %struct.net_rate_estimator* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %23, %26
  %28 = shl i32 %19, %27
  store i32 %28, i32* %6, align 4
  %29 = load %struct.net_rate_estimator*, %struct.net_rate_estimator** %3, align 8
  %30 = getelementptr inbounds %struct.net_rate_estimator, %struct.net_rate_estimator* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.net_rate_estimator*, %struct.net_rate_estimator** %3, align 8
  %33 = getelementptr inbounds %struct.net_rate_estimator, %struct.net_rate_estimator* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %31, %34
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = getelementptr inbounds %struct.gnet_stats_basic_packed, %struct.gnet_stats_basic_packed* %4, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.net_rate_estimator*, %struct.net_rate_estimator** %3, align 8
  %41 = getelementptr inbounds %struct.net_rate_estimator, %struct.net_rate_estimator* %40, i32 0, i32 7
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = trunc i64 %43 to i32
  %45 = load %struct.net_rate_estimator*, %struct.net_rate_estimator** %3, align 8
  %46 = getelementptr inbounds %struct.net_rate_estimator, %struct.net_rate_estimator* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 10, %47
  %49 = load %struct.net_rate_estimator*, %struct.net_rate_estimator** %3, align 8
  %50 = getelementptr inbounds %struct.net_rate_estimator, %struct.net_rate_estimator* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %48, %51
  %53 = shl i32 %44, %52
  store i32 %53, i32* %5, align 4
  %54 = load %struct.net_rate_estimator*, %struct.net_rate_estimator** %3, align 8
  %55 = getelementptr inbounds %struct.net_rate_estimator, %struct.net_rate_estimator* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.net_rate_estimator*, %struct.net_rate_estimator** %3, align 8
  %58 = getelementptr inbounds %struct.net_rate_estimator, %struct.net_rate_estimator* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %56, %59
  %61 = load i32, i32* %5, align 4
  %62 = sub nsw i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load %struct.net_rate_estimator*, %struct.net_rate_estimator** %3, align 8
  %64 = getelementptr inbounds %struct.net_rate_estimator, %struct.net_rate_estimator* %63, i32 0, i32 8
  %65 = call i32 @write_seqcount_begin(i32* %64)
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.net_rate_estimator*, %struct.net_rate_estimator** %3, align 8
  %68 = getelementptr inbounds %struct.net_rate_estimator, %struct.net_rate_estimator* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.net_rate_estimator*, %struct.net_rate_estimator** %3, align 8
  %73 = getelementptr inbounds %struct.net_rate_estimator, %struct.net_rate_estimator* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.net_rate_estimator*, %struct.net_rate_estimator** %3, align 8
  %77 = getelementptr inbounds %struct.net_rate_estimator, %struct.net_rate_estimator* %76, i32 0, i32 8
  %78 = call i32 @write_seqcount_end(i32* %77)
  %79 = getelementptr inbounds %struct.gnet_stats_basic_packed, %struct.gnet_stats_basic_packed* %4, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.net_rate_estimator*, %struct.net_rate_estimator** %3, align 8
  %82 = getelementptr inbounds %struct.net_rate_estimator, %struct.net_rate_estimator* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = getelementptr inbounds %struct.gnet_stats_basic_packed, %struct.gnet_stats_basic_packed* %4, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.net_rate_estimator*, %struct.net_rate_estimator** %3, align 8
  %86 = getelementptr inbounds %struct.net_rate_estimator, %struct.net_rate_estimator* %85, i32 0, i32 7
  store i64 %84, i64* %86, align 8
  %87 = load i32, i32* @HZ, align 4
  %88 = sdiv i32 %87, 4
  %89 = load %struct.net_rate_estimator*, %struct.net_rate_estimator** %3, align 8
  %90 = getelementptr inbounds %struct.net_rate_estimator, %struct.net_rate_estimator* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = shl i32 %88, %91
  %93 = sext i32 %92 to i64
  %94 = load %struct.net_rate_estimator*, %struct.net_rate_estimator** %3, align 8
  %95 = getelementptr inbounds %struct.net_rate_estimator, %struct.net_rate_estimator* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, %93
  store i64 %97, i64* %95, align 8
  %98 = load i64, i64* @jiffies, align 8
  %99 = load %struct.net_rate_estimator*, %struct.net_rate_estimator** %3, align 8
  %100 = getelementptr inbounds %struct.net_rate_estimator, %struct.net_rate_estimator* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @time_after_eq(i64 %98, i64 %101)
  %103 = call i64 @unlikely(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %1
  %106 = load i64, i64* @jiffies, align 8
  %107 = add nsw i64 %106, 1
  %108 = load %struct.net_rate_estimator*, %struct.net_rate_estimator** %3, align 8
  %109 = getelementptr inbounds %struct.net_rate_estimator, %struct.net_rate_estimator* %108, i32 0, i32 5
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %105, %1
  %111 = load %struct.net_rate_estimator*, %struct.net_rate_estimator** %3, align 8
  %112 = getelementptr inbounds %struct.net_rate_estimator, %struct.net_rate_estimator* %111, i32 0, i32 6
  %113 = load %struct.net_rate_estimator*, %struct.net_rate_estimator** %3, align 8
  %114 = getelementptr inbounds %struct.net_rate_estimator, %struct.net_rate_estimator* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @mod_timer(i32* %112, i64 %115)
  ret void
}

declare dso_local %struct.net_rate_estimator* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @est_fetch_counters(%struct.net_rate_estimator*, %struct.gnet_stats_basic_packed*) #1

declare dso_local i32 @write_seqcount_begin(i32*) #1

declare dso_local i32 @write_seqcount_end(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @time_after_eq(i64, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
