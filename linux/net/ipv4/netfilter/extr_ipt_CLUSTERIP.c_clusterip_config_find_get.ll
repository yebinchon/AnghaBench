; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ipt_CLUSTERIP.c_clusterip_config_find_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/netfilter/extr_ipt_CLUSTERIP.c_clusterip_config_find_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clusterip_config = type { i32, i32, i32 }
%struct.net = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clusterip_config* (%struct.net*, i32, i32)* @clusterip_config_find_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clusterip_config* @clusterip_config_find_get(%struct.net* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.clusterip_config*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i32 (...) @rcu_read_lock_bh()
  %9 = load %struct.net*, %struct.net** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.clusterip_config* @__clusterip_config_find(%struct.net* %9, i32 %10)
  store %struct.clusterip_config* %11, %struct.clusterip_config** %7, align 8
  %12 = load %struct.clusterip_config*, %struct.clusterip_config** %7, align 8
  %13 = icmp ne %struct.clusterip_config* %12, null
  br i1 %13, label %14, label %42

14:                                               ; preds = %3
  %15 = load %struct.clusterip_config*, %struct.clusterip_config** %7, align 8
  %16 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %15, i32 0, i32 1
  %17 = call i32 @refcount_inc_not_zero(i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store %struct.clusterip_config* null, %struct.clusterip_config** %7, align 8
  br label %41

24:                                               ; preds = %14
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load %struct.clusterip_config*, %struct.clusterip_config** %7, align 8
  %29 = getelementptr inbounds %struct.clusterip_config, %struct.clusterip_config* %28, i32 0, i32 0
  %30 = call i32 @refcount_inc_not_zero(i32* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.clusterip_config*, %struct.clusterip_config** %7, align 8
  %38 = call i32 @clusterip_config_put(%struct.clusterip_config* %37)
  store %struct.clusterip_config* null, %struct.clusterip_config** %7, align 8
  br label %39

39:                                               ; preds = %36, %27
  br label %40

40:                                               ; preds = %39, %24
  br label %41

41:                                               ; preds = %40, %23
  br label %42

42:                                               ; preds = %41, %3
  %43 = call i32 (...) @rcu_read_unlock_bh()
  %44 = load %struct.clusterip_config*, %struct.clusterip_config** %7, align 8
  ret %struct.clusterip_config* %44
}

declare dso_local i32 @rcu_read_lock_bh(...) #1

declare dso_local %struct.clusterip_config* @__clusterip_config_find(%struct.net*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @refcount_inc_not_zero(i32*) #1

declare dso_local i32 @clusterip_config_put(%struct.clusterip_config*) #1

declare dso_local i32 @rcu_read_unlock_bh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
