; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_RATEEST.c_xt_rateest_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_RATEEST.c_xt_rateest_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.xt_rateest = type { i64, i32, i32 }
%struct.xt_rateest_net = type { i32 }

@xt_rateest_id = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xt_rateest_put(%struct.net* %0, %struct.xt_rateest* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.xt_rateest*, align 8
  %5 = alloca %struct.xt_rateest_net*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.xt_rateest* %1, %struct.xt_rateest** %4, align 8
  %6 = load %struct.net*, %struct.net** %3, align 8
  %7 = load i32, i32* @xt_rateest_id, align 4
  %8 = call %struct.xt_rateest_net* @net_generic(%struct.net* %6, i32 %7)
  store %struct.xt_rateest_net* %8, %struct.xt_rateest_net** %5, align 8
  %9 = load %struct.xt_rateest_net*, %struct.xt_rateest_net** %5, align 8
  %10 = getelementptr inbounds %struct.xt_rateest_net, %struct.xt_rateest_net* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.xt_rateest*, %struct.xt_rateest** %4, align 8
  %13 = getelementptr inbounds %struct.xt_rateest, %struct.xt_rateest* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.xt_rateest*, %struct.xt_rateest** %4, align 8
  %19 = getelementptr inbounds %struct.xt_rateest, %struct.xt_rateest* %18, i32 0, i32 2
  %20 = call i32 @hlist_del(i32* %19)
  %21 = load %struct.xt_rateest*, %struct.xt_rateest** %4, align 8
  %22 = getelementptr inbounds %struct.xt_rateest, %struct.xt_rateest* %21, i32 0, i32 1
  %23 = call i32 @gen_kill_estimator(i32* %22)
  %24 = load %struct.xt_rateest*, %struct.xt_rateest** %4, align 8
  %25 = load i32, i32* @rcu, align 4
  %26 = call i32 @kfree_rcu(%struct.xt_rateest* %24, i32 %25)
  br label %27

27:                                               ; preds = %17, %2
  %28 = load %struct.xt_rateest_net*, %struct.xt_rateest_net** %5, align 8
  %29 = getelementptr inbounds %struct.xt_rateest_net, %struct.xt_rateest_net* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  ret void
}

declare dso_local %struct.xt_rateest_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @gen_kill_estimator(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.xt_rateest*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
