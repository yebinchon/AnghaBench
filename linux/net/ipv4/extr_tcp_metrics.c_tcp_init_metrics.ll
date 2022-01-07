; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_metrics.c_tcp_init_metrics.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_metrics.c_tcp_init_metrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dst_entry = type { i32 }
%struct.tcp_sock = type { i64, i64, i64, i64, i32, i32, i32 }
%struct.tcp_metrics_block = type { i32 }
%struct.TYPE_2__ = type { i64 }

@TCP_METRIC_CWND = common dso_local global i32 0, align 4
@TCP_METRIC_SSTHRESH = common dso_local global i32 0, align 4
@TCP_INFINITE_SSTHRESH = common dso_local global i64 0, align 8
@TCP_METRIC_REORDERING = common dso_local global i32 0, align 4
@TCP_METRIC_RTT = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@TCP_TIMEOUT_FALLBACK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_init_metrics(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.dst_entry*, align 8
  %4 = alloca %struct.tcp_sock*, align 8
  %5 = alloca %struct.tcp_metrics_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call %struct.dst_entry* @__sk_dst_get(%struct.sock* %8)
  store %struct.dst_entry* %9, %struct.dst_entry** %3, align 8
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %10)
  store %struct.tcp_sock* %11, %struct.tcp_sock** %4, align 8
  store i64 0, i64* %7, align 8
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = call i32 @sk_dst_confirm(%struct.sock* %12)
  %14 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %15 = icmp ne %struct.dst_entry* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %86

17:                                               ; preds = %1
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = load %struct.dst_entry*, %struct.dst_entry** %3, align 8
  %21 = call %struct.tcp_metrics_block* @tcp_get_metrics(%struct.sock* %19, %struct.dst_entry* %20, i32 1)
  store %struct.tcp_metrics_block* %21, %struct.tcp_metrics_block** %5, align 8
  %22 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %5, align 8
  %23 = icmp ne %struct.tcp_metrics_block* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = call i32 (...) @rcu_read_unlock()
  br label %86

26:                                               ; preds = %17
  %27 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %5, align 8
  %28 = load i32, i32* @TCP_METRIC_CWND, align 4
  %29 = call i64 @tcp_metric_locked(%struct.tcp_metrics_block* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %5, align 8
  %33 = load i32, i32* @TCP_METRIC_CWND, align 4
  %34 = call i64 @tcp_metric_get(%struct.tcp_metrics_block* %32, i32 %33)
  %35 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %36 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %5, align 8
  %39 = load i32, i32* @TCP_METRIC_SSTHRESH, align 4
  %40 = call i64 @tcp_metric_get(%struct.tcp_metrics_block* %38, i32 %39)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %37
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %46 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %48 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %51 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %49, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %43
  %55 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %56 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %59 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %54, %43
  br label %65

61:                                               ; preds = %37
  %62 = load i64, i64* @TCP_INFINITE_SSTHRESH, align 8
  %63 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %64 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %60
  %66 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %5, align 8
  %67 = load i32, i32* @TCP_METRIC_REORDERING, align 4
  %68 = call i64 @tcp_metric_get(%struct.tcp_metrics_block* %66, i32 %67)
  store i64 %68, i64* %6, align 8
  %69 = load i64, i64* %6, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %73 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i64, i64* %6, align 8
  %79 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %80 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %77, %71, %65
  %82 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %5, align 8
  %83 = load i32, i32* @TCP_METRIC_RTT, align 4
  %84 = call i64 @tcp_metric_get(%struct.tcp_metrics_block* %82, i32 %83)
  store i64 %84, i64* %7, align 8
  %85 = call i32 (...) @rcu_read_unlock()
  br label %86

86:                                               ; preds = %81, %24, %16
  %87 = load i64, i64* %7, align 8
  %88 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %89 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %87, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %86
  %93 = load i32, i32* @USEC_PER_SEC, align 4
  %94 = mul nsw i32 8, %93
  %95 = load i32, i32* @HZ, align 4
  %96 = sdiv i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %7, align 8
  %99 = sdiv i64 %98, %97
  store i64 %99, i64* %7, align 8
  %100 = load i64, i64* %7, align 8
  %101 = load i64, i64* %7, align 8
  %102 = mul nsw i64 2, %101
  %103 = trunc i64 %102 to i32
  %104 = load %struct.sock*, %struct.sock** %2, align 8
  %105 = call i32 @tcp_rto_min(%struct.sock* %104)
  %106 = call i64 @max(i32 %103, i32 %105)
  %107 = add nsw i64 %100, %106
  %108 = load %struct.sock*, %struct.sock** %2, align 8
  %109 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %108)
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i64 %107, i64* %110, align 8
  br label %133

111:                                              ; preds = %86
  %112 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %113 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %111
  %117 = load i64, i64* @TCP_TIMEOUT_FALLBACK, align 8
  %118 = call i32 @jiffies_to_usecs(i64 %117)
  %119 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %120 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 8
  %121 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %122 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %125 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %124, i32 0, i32 5
  store i32 %123, i32* %125, align 4
  %126 = load %struct.tcp_sock*, %struct.tcp_sock** %4, align 8
  %127 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %126, i32 0, i32 6
  store i32 %123, i32* %127, align 8
  %128 = load i64, i64* @TCP_TIMEOUT_FALLBACK, align 8
  %129 = load %struct.sock*, %struct.sock** %2, align 8
  %130 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %129)
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  store i64 %128, i64* %131, align 8
  br label %132

132:                                              ; preds = %116, %111
  br label %133

133:                                              ; preds = %132, %92
  ret void
}

declare dso_local %struct.dst_entry* @__sk_dst_get(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @sk_dst_confirm(%struct.sock*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tcp_metrics_block* @tcp_get_metrics(%struct.sock*, %struct.dst_entry*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @tcp_metric_locked(%struct.tcp_metrics_block*, i32) #1

declare dso_local i64 @tcp_metric_get(%struct.tcp_metrics_block*, i32) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32 @tcp_rto_min(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @inet_csk(%struct.sock*) #1

declare dso_local i32 @jiffies_to_usecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
