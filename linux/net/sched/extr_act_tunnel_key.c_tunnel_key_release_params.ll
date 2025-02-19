; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_tunnel_key.c_tunnel_key_release_params.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_tunnel_key.c_tunnel_key_release_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_tunnel_key_params = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TCA_TUNNEL_KEY_ACT_SET = common dso_local global i64 0, align 8
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_tunnel_key_params*)* @tunnel_key_release_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tunnel_key_release_params(%struct.tcf_tunnel_key_params* %0) #0 {
  %2 = alloca %struct.tcf_tunnel_key_params*, align 8
  store %struct.tcf_tunnel_key_params* %0, %struct.tcf_tunnel_key_params** %2, align 8
  %3 = load %struct.tcf_tunnel_key_params*, %struct.tcf_tunnel_key_params** %2, align 8
  %4 = icmp ne %struct.tcf_tunnel_key_params* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %22

6:                                                ; preds = %1
  %7 = load %struct.tcf_tunnel_key_params*, %struct.tcf_tunnel_key_params** %2, align 8
  %8 = getelementptr inbounds %struct.tcf_tunnel_key_params, %struct.tcf_tunnel_key_params* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @TCA_TUNNEL_KEY_ACT_SET, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = load %struct.tcf_tunnel_key_params*, %struct.tcf_tunnel_key_params** %2, align 8
  %14 = getelementptr inbounds %struct.tcf_tunnel_key_params, %struct.tcf_tunnel_key_params* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @dst_release(i32* %16)
  br label %18

18:                                               ; preds = %12, %6
  %19 = load %struct.tcf_tunnel_key_params*, %struct.tcf_tunnel_key_params** %2, align 8
  %20 = load i32, i32* @rcu, align 4
  %21 = call i32 @kfree_rcu(%struct.tcf_tunnel_key_params* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %5
  ret void
}

declare dso_local i32 @dst_release(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.tcf_tunnel_key_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
