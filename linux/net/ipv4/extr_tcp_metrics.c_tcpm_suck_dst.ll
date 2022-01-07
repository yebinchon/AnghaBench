; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_metrics.c_tcpm_suck_dst.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_metrics.c_tcpm_suck_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_metrics_block = type { i32, i32*, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.dst_entry = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@RTAX_RTT = common dso_local global i32 0, align 4
@TCP_METRIC_RTT = common dso_local global i32 0, align 4
@RTAX_RTTVAR = common dso_local global i32 0, align 4
@TCP_METRIC_RTTVAR = common dso_local global i32 0, align 4
@RTAX_SSTHRESH = common dso_local global i32 0, align 4
@TCP_METRIC_SSTHRESH = common dso_local global i32 0, align 4
@RTAX_CWND = common dso_local global i32 0, align 4
@TCP_METRIC_CWND = common dso_local global i32 0, align 4
@RTAX_REORDERING = common dso_local global i32 0, align 4
@TCP_METRIC_REORDERING = common dso_local global i32 0, align 4
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_metrics_block*, %struct.dst_entry*, i32)* @tcpm_suck_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcpm_suck_dst(%struct.tcp_metrics_block* %0, %struct.dst_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.tcp_metrics_block*, align 8
  %5 = alloca %struct.dst_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tcp_metrics_block* %0, %struct.tcp_metrics_block** %4, align 8
  store %struct.dst_entry* %1, %struct.dst_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @jiffies, align 4
  %10 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %4, align 8
  %11 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %13 = load i32, i32* @RTAX_RTT, align 4
  %14 = call i64 @dst_metric_locked(%struct.dst_entry* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32, i32* @TCP_METRIC_RTT, align 4
  %18 = shl i32 1, %17
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %16, %3
  %22 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %23 = load i32, i32* @RTAX_RTTVAR, align 4
  %24 = call i64 @dst_metric_locked(%struct.dst_entry* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* @TCP_METRIC_RTTVAR, align 4
  %28 = shl i32 1, %27
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %33 = load i32, i32* @RTAX_SSTHRESH, align 4
  %34 = call i64 @dst_metric_locked(%struct.dst_entry* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32, i32* @TCP_METRIC_SSTHRESH, align 4
  %38 = shl i32 1, %37
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %43 = load i32, i32* @RTAX_CWND, align 4
  %44 = call i64 @dst_metric_locked(%struct.dst_entry* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32, i32* @TCP_METRIC_CWND, align 4
  %48 = shl i32 1, %47
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %53 = load i32, i32* @RTAX_REORDERING, align 4
  %54 = call i64 @dst_metric_locked(%struct.dst_entry* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i32, i32* @TCP_METRIC_REORDERING, align 4
  %58 = shl i32 1, %57
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %56, %51
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %4, align 8
  %64 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %66 = load i32, i32* @RTAX_RTT, align 4
  %67 = call i8* @dst_metric_raw(%struct.dst_entry* %65, i32 %66)
  %68 = ptrtoint i8* %67 to i32
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @USEC_PER_MSEC, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %4, align 8
  %73 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* @TCP_METRIC_RTT, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  %78 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %79 = load i32, i32* @RTAX_RTTVAR, align 4
  %80 = call i8* @dst_metric_raw(%struct.dst_entry* %78, i32 %79)
  %81 = ptrtoint i8* %80 to i32
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @USEC_PER_MSEC, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %4, align 8
  %86 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* @TCP_METRIC_RTTVAR, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %84, i32* %90, align 4
  %91 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %92 = load i32, i32* @RTAX_SSTHRESH, align 4
  %93 = call i8* @dst_metric_raw(%struct.dst_entry* %91, i32 %92)
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %4, align 8
  %96 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* @TCP_METRIC_SSTHRESH, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %94, i32* %100, align 4
  %101 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %102 = load i32, i32* @RTAX_CWND, align 4
  %103 = call i8* @dst_metric_raw(%struct.dst_entry* %101, i32 %102)
  %104 = ptrtoint i8* %103 to i32
  %105 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %4, align 8
  %106 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* @TCP_METRIC_CWND, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %104, i32* %110, align 4
  %111 = load %struct.dst_entry*, %struct.dst_entry** %5, align 8
  %112 = load i32, i32* @RTAX_REORDERING, align 4
  %113 = call i8* @dst_metric_raw(%struct.dst_entry* %111, i32 %112)
  %114 = ptrtoint i8* %113 to i32
  %115 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %4, align 8
  %116 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* @TCP_METRIC_REORDERING, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %114, i32* %120, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %141

123:                                              ; preds = %61
  %124 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %4, align 8
  %125 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 3
  store i64 0, i64* %126, align 8
  %127 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %4, align 8
  %128 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  store i64 0, i64* %129, align 8
  %130 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %4, align 8
  %131 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  store i64 0, i64* %132, align 8
  %133 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %4, align 8
  %134 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  store i32 0, i32* %136, align 8
  %137 = load %struct.tcp_metrics_block*, %struct.tcp_metrics_block** %4, align 8
  %138 = getelementptr inbounds %struct.tcp_metrics_block, %struct.tcp_metrics_block* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  store i64 0, i64* %140, align 8
  br label %141

141:                                              ; preds = %123, %61
  ret void
}

declare dso_local i64 @dst_metric_locked(%struct.dst_entry*, i32) #1

declare dso_local i8* @dst_metric_raw(%struct.dst_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
