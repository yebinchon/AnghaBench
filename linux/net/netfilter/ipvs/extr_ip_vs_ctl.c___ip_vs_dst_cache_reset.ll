; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c___ip_vs_dst_cache_reset.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c___ip_vs_dst_cache_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_dest = type { i32 }
%struct.ip_vs_dest_dst = type { i32 }

@ip_vs_dest_dst_rcu_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_dest*)* @__ip_vs_dst_cache_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ip_vs_dst_cache_reset(%struct.ip_vs_dest* %0) #0 {
  %2 = alloca %struct.ip_vs_dest*, align 8
  %3 = alloca %struct.ip_vs_dest_dst*, align 8
  store %struct.ip_vs_dest* %0, %struct.ip_vs_dest** %2, align 8
  %4 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %2, align 8
  %5 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.ip_vs_dest_dst* @rcu_dereference_protected(i32 %6, i32 1)
  store %struct.ip_vs_dest_dst* %7, %struct.ip_vs_dest_dst** %3, align 8
  %8 = load %struct.ip_vs_dest_dst*, %struct.ip_vs_dest_dst** %3, align 8
  %9 = icmp ne %struct.ip_vs_dest_dst* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %2, align 8
  %12 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @RCU_INIT_POINTER(i32 %13, i32* null)
  %15 = load %struct.ip_vs_dest_dst*, %struct.ip_vs_dest_dst** %3, align 8
  %16 = getelementptr inbounds %struct.ip_vs_dest_dst, %struct.ip_vs_dest_dst* %15, i32 0, i32 0
  %17 = load i32, i32* @ip_vs_dest_dst_rcu_free, align 4
  %18 = call i32 @call_rcu(i32* %16, i32 %17)
  br label %19

19:                                               ; preds = %10, %1
  ret void
}

declare dso_local %struct.ip_vs_dest_dst* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
