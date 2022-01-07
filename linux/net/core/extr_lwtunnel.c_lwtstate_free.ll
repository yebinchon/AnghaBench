; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_lwtunnel.c_lwtstate_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_lwtunnel.c_lwtstate_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwtunnel_encap_ops = type { i32, i32 (%struct.lwtunnel_state*)* }
%struct.lwtunnel_state = type { i64 }

@lwtun_encaps = common dso_local global %struct.lwtunnel_encap_ops** null, align 8
@rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwtstate_free(%struct.lwtunnel_state* %0) #0 {
  %2 = alloca %struct.lwtunnel_state*, align 8
  %3 = alloca %struct.lwtunnel_encap_ops*, align 8
  store %struct.lwtunnel_state* %0, %struct.lwtunnel_state** %2, align 8
  %4 = load %struct.lwtunnel_encap_ops**, %struct.lwtunnel_encap_ops*** @lwtun_encaps, align 8
  %5 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %2, align 8
  %6 = getelementptr inbounds %struct.lwtunnel_state, %struct.lwtunnel_state* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.lwtunnel_encap_ops*, %struct.lwtunnel_encap_ops** %4, i64 %7
  %9 = load %struct.lwtunnel_encap_ops*, %struct.lwtunnel_encap_ops** %8, align 8
  store %struct.lwtunnel_encap_ops* %9, %struct.lwtunnel_encap_ops** %3, align 8
  %10 = load %struct.lwtunnel_encap_ops*, %struct.lwtunnel_encap_ops** %3, align 8
  %11 = getelementptr inbounds %struct.lwtunnel_encap_ops, %struct.lwtunnel_encap_ops* %10, i32 0, i32 1
  %12 = load i32 (%struct.lwtunnel_state*)*, i32 (%struct.lwtunnel_state*)** %11, align 8
  %13 = icmp ne i32 (%struct.lwtunnel_state*)* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.lwtunnel_encap_ops*, %struct.lwtunnel_encap_ops** %3, align 8
  %16 = getelementptr inbounds %struct.lwtunnel_encap_ops, %struct.lwtunnel_encap_ops* %15, i32 0, i32 1
  %17 = load i32 (%struct.lwtunnel_state*)*, i32 (%struct.lwtunnel_state*)** %16, align 8
  %18 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %2, align 8
  %19 = call i32 %17(%struct.lwtunnel_state* %18)
  %20 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %2, align 8
  %21 = load i32, i32* @rcu, align 4
  %22 = call i32 @kfree_rcu(%struct.lwtunnel_state* %20, i32 %21)
  br label %26

23:                                               ; preds = %1
  %24 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %2, align 8
  %25 = call i32 @kfree(%struct.lwtunnel_state* %24)
  br label %26

26:                                               ; preds = %23, %14
  %27 = load %struct.lwtunnel_encap_ops*, %struct.lwtunnel_encap_ops** %3, align 8
  %28 = getelementptr inbounds %struct.lwtunnel_encap_ops, %struct.lwtunnel_encap_ops* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @module_put(i32 %29)
  ret void
}

declare dso_local i32 @kfree_rcu(%struct.lwtunnel_state*, i32) #1

declare dso_local i32 @kfree(%struct.lwtunnel_state*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
