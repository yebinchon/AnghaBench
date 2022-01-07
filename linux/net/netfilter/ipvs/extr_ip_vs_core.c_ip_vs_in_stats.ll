; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_in_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_core.c_ip_vs_in_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { %struct.netns_ipvs*, %struct.ip_vs_dest* }
%struct.netns_ipvs = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ip_vs_dest = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ip_vs_cpu_stats = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.ip_vs_service = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@IP_VS_DEST_F_AVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_conn*, %struct.sk_buff*)* @ip_vs_in_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_vs_in_stats(%struct.ip_vs_conn* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ip_vs_conn*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ip_vs_dest*, align 8
  %6 = alloca %struct.netns_ipvs*, align 8
  %7 = alloca %struct.ip_vs_cpu_stats*, align 8
  %8 = alloca %struct.ip_vs_service*, align 8
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %10 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %9, i32 0, i32 1
  %11 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %10, align 8
  store %struct.ip_vs_dest* %11, %struct.ip_vs_dest** %5, align 8
  %12 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %13 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %12, i32 0, i32 0
  %14 = load %struct.netns_ipvs*, %struct.netns_ipvs** %13, align 8
  store %struct.netns_ipvs* %14, %struct.netns_ipvs** %6, align 8
  %15 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %16 = icmp ne %struct.ip_vs_dest* %15, null
  br i1 %16, label %17, label %109

17:                                               ; preds = %2
  %18 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %19 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IP_VS_DEST_F_AVAILABLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %109

24:                                               ; preds = %17
  %25 = call i32 (...) @local_bh_disable()
  %26 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %27 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.ip_vs_cpu_stats* @this_cpu_ptr(i32 %29)
  store %struct.ip_vs_cpu_stats* %30, %struct.ip_vs_cpu_stats** %7, align 8
  %31 = load %struct.ip_vs_cpu_stats*, %struct.ip_vs_cpu_stats** %7, align 8
  %32 = getelementptr inbounds %struct.ip_vs_cpu_stats, %struct.ip_vs_cpu_stats* %31, i32 0, i32 0
  %33 = call i32 @u64_stats_update_begin(i32* %32)
  %34 = load %struct.ip_vs_cpu_stats*, %struct.ip_vs_cpu_stats** %7, align 8
  %35 = getelementptr inbounds %struct.ip_vs_cpu_stats, %struct.ip_vs_cpu_stats* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ip_vs_cpu_stats*, %struct.ip_vs_cpu_stats** %7, align 8
  %43 = getelementptr inbounds %struct.ip_vs_cpu_stats, %struct.ip_vs_cpu_stats* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %41
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 4
  %49 = load %struct.ip_vs_cpu_stats*, %struct.ip_vs_cpu_stats** %7, align 8
  %50 = getelementptr inbounds %struct.ip_vs_cpu_stats, %struct.ip_vs_cpu_stats* %49, i32 0, i32 0
  %51 = call i32 @u64_stats_update_end(i32* %50)
  %52 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %53 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.ip_vs_service* @rcu_dereference(i32 %54)
  store %struct.ip_vs_service* %55, %struct.ip_vs_service** %8, align 8
  %56 = load %struct.ip_vs_service*, %struct.ip_vs_service** %8, align 8
  %57 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.ip_vs_cpu_stats* @this_cpu_ptr(i32 %59)
  store %struct.ip_vs_cpu_stats* %60, %struct.ip_vs_cpu_stats** %7, align 8
  %61 = load %struct.ip_vs_cpu_stats*, %struct.ip_vs_cpu_stats** %7, align 8
  %62 = getelementptr inbounds %struct.ip_vs_cpu_stats, %struct.ip_vs_cpu_stats* %61, i32 0, i32 0
  %63 = call i32 @u64_stats_update_begin(i32* %62)
  %64 = load %struct.ip_vs_cpu_stats*, %struct.ip_vs_cpu_stats** %7, align 8
  %65 = getelementptr inbounds %struct.ip_vs_cpu_stats, %struct.ip_vs_cpu_stats* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.ip_vs_cpu_stats*, %struct.ip_vs_cpu_stats** %7, align 8
  %73 = getelementptr inbounds %struct.ip_vs_cpu_stats, %struct.ip_vs_cpu_stats* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %71
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 4
  %79 = load %struct.ip_vs_cpu_stats*, %struct.ip_vs_cpu_stats** %7, align 8
  %80 = getelementptr inbounds %struct.ip_vs_cpu_stats, %struct.ip_vs_cpu_stats* %79, i32 0, i32 0
  %81 = call i32 @u64_stats_update_end(i32* %80)
  %82 = load %struct.netns_ipvs*, %struct.netns_ipvs** %6, align 8
  %83 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call %struct.ip_vs_cpu_stats* @this_cpu_ptr(i32 %85)
  store %struct.ip_vs_cpu_stats* %86, %struct.ip_vs_cpu_stats** %7, align 8
  %87 = load %struct.ip_vs_cpu_stats*, %struct.ip_vs_cpu_stats** %7, align 8
  %88 = getelementptr inbounds %struct.ip_vs_cpu_stats, %struct.ip_vs_cpu_stats* %87, i32 0, i32 0
  %89 = call i32 @u64_stats_update_begin(i32* %88)
  %90 = load %struct.ip_vs_cpu_stats*, %struct.ip_vs_cpu_stats** %7, align 8
  %91 = getelementptr inbounds %struct.ip_vs_cpu_stats, %struct.ip_vs_cpu_stats* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.ip_vs_cpu_stats*, %struct.ip_vs_cpu_stats** %7, align 8
  %99 = getelementptr inbounds %struct.ip_vs_cpu_stats, %struct.ip_vs_cpu_stats* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %97
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 4
  %105 = load %struct.ip_vs_cpu_stats*, %struct.ip_vs_cpu_stats** %7, align 8
  %106 = getelementptr inbounds %struct.ip_vs_cpu_stats, %struct.ip_vs_cpu_stats* %105, i32 0, i32 0
  %107 = call i32 @u64_stats_update_end(i32* %106)
  %108 = call i32 (...) @local_bh_enable()
  br label %109

109:                                              ; preds = %24, %17, %2
  ret void
}

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local %struct.ip_vs_cpu_stats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local %struct.ip_vs_service* @rcu_dereference(i32) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
