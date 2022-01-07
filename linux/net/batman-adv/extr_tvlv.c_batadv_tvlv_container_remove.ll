; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_tvlv.c_batadv_tvlv_container_remove.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_tvlv.c_batadv_tvlv_container_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.batadv_tvlv_container = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_priv*, %struct.batadv_tvlv_container*)* @batadv_tvlv_container_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_tvlv_container_remove(%struct.batadv_priv* %0, %struct.batadv_tvlv_container* %1) #0 {
  %3 = alloca %struct.batadv_priv*, align 8
  %4 = alloca %struct.batadv_tvlv_container*, align 8
  store %struct.batadv_priv* %0, %struct.batadv_priv** %3, align 8
  store %struct.batadv_tvlv_container* %1, %struct.batadv_tvlv_container** %4, align 8
  %5 = load %struct.batadv_priv*, %struct.batadv_priv** %3, align 8
  %6 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.batadv_tvlv_container*, %struct.batadv_tvlv_container** %4, align 8
  %10 = icmp ne %struct.batadv_tvlv_container* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %20

12:                                               ; preds = %2
  %13 = load %struct.batadv_tvlv_container*, %struct.batadv_tvlv_container** %4, align 8
  %14 = getelementptr inbounds %struct.batadv_tvlv_container, %struct.batadv_tvlv_container* %13, i32 0, i32 0
  %15 = call i32 @hlist_del(i32* %14)
  %16 = load %struct.batadv_tvlv_container*, %struct.batadv_tvlv_container** %4, align 8
  %17 = call i32 @batadv_tvlv_container_put(%struct.batadv_tvlv_container* %16)
  %18 = load %struct.batadv_tvlv_container*, %struct.batadv_tvlv_container** %4, align 8
  %19 = call i32 @batadv_tvlv_container_put(%struct.batadv_tvlv_container* %18)
  br label %20

20:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @batadv_tvlv_container_put(%struct.batadv_tvlv_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
