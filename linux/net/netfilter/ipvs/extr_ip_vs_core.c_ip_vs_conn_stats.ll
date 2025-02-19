; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_conn_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_conn_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ip_vs_service = type { %struct.TYPE_8__, %struct.netns_ipvs* }
%struct.TYPE_8__ = type { i32 }
%struct.netns_ipvs = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ip_vs_cpu_stats = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_conn*, %struct.ip_vs_service*)* @ip_vs_conn_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_vs_conn_stats(%struct.ip_vs_conn* %0, %struct.ip_vs_service* %1) #0 {
  %3 = alloca %struct.ip_vs_conn*, align 8
  %4 = alloca %struct.ip_vs_service*, align 8
  %5 = alloca %struct.netns_ipvs*, align 8
  %6 = alloca %struct.ip_vs_cpu_stats*, align 8
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %3, align 8
  store %struct.ip_vs_service* %1, %struct.ip_vs_service** %4, align 8
  %7 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %8 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %7, i32 0, i32 1
  %9 = load %struct.netns_ipvs*, %struct.netns_ipvs** %8, align 8
  store %struct.netns_ipvs* %9, %struct.netns_ipvs** %5, align 8
  %10 = call i32 (...) @local_bh_disable()
  %11 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %12 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.ip_vs_cpu_stats* @this_cpu_ptr(i32 %16)
  store %struct.ip_vs_cpu_stats* %17, %struct.ip_vs_cpu_stats** %6, align 8
  %18 = load %struct.ip_vs_cpu_stats*, %struct.ip_vs_cpu_stats** %6, align 8
  %19 = getelementptr inbounds %struct.ip_vs_cpu_stats, %struct.ip_vs_cpu_stats* %18, i32 0, i32 0
  %20 = call i32 @u64_stats_update_begin(i32* %19)
  %21 = load %struct.ip_vs_cpu_stats*, %struct.ip_vs_cpu_stats** %6, align 8
  %22 = getelementptr inbounds %struct.ip_vs_cpu_stats, %struct.ip_vs_cpu_stats* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.ip_vs_cpu_stats*, %struct.ip_vs_cpu_stats** %6, align 8
  %27 = getelementptr inbounds %struct.ip_vs_cpu_stats, %struct.ip_vs_cpu_stats* %26, i32 0, i32 0
  %28 = call i32 @u64_stats_update_end(i32* %27)
  %29 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %30 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.ip_vs_cpu_stats* @this_cpu_ptr(i32 %32)
  store %struct.ip_vs_cpu_stats* %33, %struct.ip_vs_cpu_stats** %6, align 8
  %34 = load %struct.ip_vs_cpu_stats*, %struct.ip_vs_cpu_stats** %6, align 8
  %35 = getelementptr inbounds %struct.ip_vs_cpu_stats, %struct.ip_vs_cpu_stats* %34, i32 0, i32 0
  %36 = call i32 @u64_stats_update_begin(i32* %35)
  %37 = load %struct.ip_vs_cpu_stats*, %struct.ip_vs_cpu_stats** %6, align 8
  %38 = getelementptr inbounds %struct.ip_vs_cpu_stats, %struct.ip_vs_cpu_stats* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.ip_vs_cpu_stats*, %struct.ip_vs_cpu_stats** %6, align 8
  %43 = getelementptr inbounds %struct.ip_vs_cpu_stats, %struct.ip_vs_cpu_stats* %42, i32 0, i32 0
  %44 = call i32 @u64_stats_update_end(i32* %43)
  %45 = load %struct.netns_ipvs*, %struct.netns_ipvs** %5, align 8
  %46 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.ip_vs_cpu_stats* @this_cpu_ptr(i32 %48)
  store %struct.ip_vs_cpu_stats* %49, %struct.ip_vs_cpu_stats** %6, align 8
  %50 = load %struct.ip_vs_cpu_stats*, %struct.ip_vs_cpu_stats** %6, align 8
  %51 = getelementptr inbounds %struct.ip_vs_cpu_stats, %struct.ip_vs_cpu_stats* %50, i32 0, i32 0
  %52 = call i32 @u64_stats_update_begin(i32* %51)
  %53 = load %struct.ip_vs_cpu_stats*, %struct.ip_vs_cpu_stats** %6, align 8
  %54 = getelementptr inbounds %struct.ip_vs_cpu_stats, %struct.ip_vs_cpu_stats* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.ip_vs_cpu_stats*, %struct.ip_vs_cpu_stats** %6, align 8
  %59 = getelementptr inbounds %struct.ip_vs_cpu_stats, %struct.ip_vs_cpu_stats* %58, i32 0, i32 0
  %60 = call i32 @u64_stats_update_end(i32* %59)
  %61 = call i32 (...) @local_bh_enable()
  ret void
}

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local %struct.ip_vs_cpu_stats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
