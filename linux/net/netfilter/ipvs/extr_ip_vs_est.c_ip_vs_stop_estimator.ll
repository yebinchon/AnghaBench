; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_est.c_ip_vs_stop_estimator.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_est.c_ip_vs_stop_estimator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { i32 }
%struct.ip_vs_stats = type { %struct.ip_vs_estimator }
%struct.ip_vs_estimator = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_vs_stop_estimator(%struct.netns_ipvs* %0, %struct.ip_vs_stats* %1) #0 {
  %3 = alloca %struct.netns_ipvs*, align 8
  %4 = alloca %struct.ip_vs_stats*, align 8
  %5 = alloca %struct.ip_vs_estimator*, align 8
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %3, align 8
  store %struct.ip_vs_stats* %1, %struct.ip_vs_stats** %4, align 8
  %6 = load %struct.ip_vs_stats*, %struct.ip_vs_stats** %4, align 8
  %7 = getelementptr inbounds %struct.ip_vs_stats, %struct.ip_vs_stats* %6, i32 0, i32 0
  store %struct.ip_vs_estimator* %7, %struct.ip_vs_estimator** %5, align 8
  %8 = load %struct.netns_ipvs*, %struct.netns_ipvs** %3, align 8
  %9 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_bh(i32* %9)
  %11 = load %struct.ip_vs_estimator*, %struct.ip_vs_estimator** %5, align 8
  %12 = getelementptr inbounds %struct.ip_vs_estimator, %struct.ip_vs_estimator* %11, i32 0, i32 0
  %13 = call i32 @list_del(i32* %12)
  %14 = load %struct.netns_ipvs*, %struct.netns_ipvs** %3, align 8
  %15 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %14, i32 0, i32 0
  %16 = call i32 @spin_unlock_bh(i32* %15)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
