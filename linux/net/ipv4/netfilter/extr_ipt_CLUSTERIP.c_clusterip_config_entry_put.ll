; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ipt_CLUSTERIP.c_clusterip_config_entry_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ipt_CLUSTERIP.c_clusterip_config_entry_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clusterip_config = type { i32, i32, i32, i32 }
%struct.clusterip_net = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clusterip_config*)* @clusterip_config_entry_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clusterip_config_entry_put(%struct.clusterip_config* %0) #0 {
  %2 = alloca %struct.clusterip_config*, align 8
  %3 = alloca %struct.clusterip_net*, align 8
  store %struct.clusterip_config* %0, %struct.clusterip_config** %2, align 8
  %4 = load %struct.clusterip_config*, %struct.clusterip_config** %2, align 8
  %5 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.clusterip_net* @clusterip_pernet(i32 %6)
  store %struct.clusterip_net* %7, %struct.clusterip_net** %3, align 8
  %8 = call i32 (...) @local_bh_disable()
  %9 = load %struct.clusterip_config*, %struct.clusterip_config** %2, align 8
  %10 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %9, i32 0, i32 2
  %11 = load %struct.clusterip_net*, %struct.clusterip_net** %3, align 8
  %12 = getelementptr inbounds %struct.clusterip_net, %struct.clusterip_net* %11, i32 0, i32 2
  %13 = call i64 @refcount_dec_and_lock(i32* %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.clusterip_config*, %struct.clusterip_config** %2, align 8
  %17 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %16, i32 0, i32 1
  %18 = call i32 @list_del_rcu(i32* %17)
  %19 = load %struct.clusterip_net*, %struct.clusterip_net** %3, align 8
  %20 = getelementptr inbounds %struct.clusterip_net, %struct.clusterip_net* %19, i32 0, i32 2
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = call i32 (...) @local_bh_enable()
  br label %25

23:                                               ; preds = %1
  %24 = call i32 (...) @local_bh_enable()
  br label %25

25:                                               ; preds = %23, %15
  ret void
}

declare dso_local %struct.clusterip_net* @clusterip_pernet(i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i64 @refcount_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
