; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_log.c_instance_lookup_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_log.c_instance_lookup_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfulnl_instance = type { i32 }
%struct.nfnl_log_net = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfulnl_instance* (%struct.nfnl_log_net*, i32)* @instance_lookup_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfulnl_instance* @instance_lookup_get(%struct.nfnl_log_net* %0, i32 %1) #0 {
  %3 = alloca %struct.nfnl_log_net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfulnl_instance*, align 8
  store %struct.nfnl_log_net* %0, %struct.nfnl_log_net** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @rcu_read_lock_bh()
  %7 = load %struct.nfnl_log_net*, %struct.nfnl_log_net** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.nfulnl_instance* @__instance_lookup(%struct.nfnl_log_net* %7, i32 %8)
  store %struct.nfulnl_instance* %9, %struct.nfulnl_instance** %5, align 8
  %10 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %5, align 8
  %11 = icmp ne %struct.nfulnl_instance* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %5, align 8
  %14 = getelementptr inbounds %struct.nfulnl_instance, %struct.nfulnl_instance* %13, i32 0, i32 0
  %15 = call i32 @refcount_inc_not_zero(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store %struct.nfulnl_instance* null, %struct.nfulnl_instance** %5, align 8
  br label %18

18:                                               ; preds = %17, %12, %2
  %19 = call i32 (...) @rcu_read_unlock_bh()
  %20 = load %struct.nfulnl_instance*, %struct.nfulnl_instance** %5, align 8
  ret %struct.nfulnl_instance* %20
}

declare dso_local i32 @rcu_read_lock_bh(...) #1

declare dso_local %struct.nfulnl_instance* @__instance_lookup(%struct.nfnl_log_net*, i32) #1

declare dso_local i32 @refcount_inc_not_zero(i32*) #1

declare dso_local i32 @rcu_read_unlock_bh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
