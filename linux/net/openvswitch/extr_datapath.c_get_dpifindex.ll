; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_get_dpifindex.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_get_dpifindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datapath = type { i32 }
%struct.vport = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@OVSP_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.datapath*)* @get_dpifindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dpifindex(%struct.datapath* %0) #0 {
  %2 = alloca %struct.datapath*, align 8
  %3 = alloca %struct.vport*, align 8
  %4 = alloca i32, align 4
  store %struct.datapath* %0, %struct.datapath** %2, align 8
  %5 = call i32 (...) @rcu_read_lock()
  %6 = load %struct.datapath*, %struct.datapath** %2, align 8
  %7 = load i32, i32* @OVSP_LOCAL, align 4
  %8 = call %struct.vport* @ovs_vport_rcu(%struct.datapath* %6, i32 %7)
  store %struct.vport* %8, %struct.vport** %3, align 8
  %9 = load %struct.vport*, %struct.vport** %3, align 8
  %10 = icmp ne %struct.vport* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.vport*, %struct.vport** %3, align 8
  %13 = getelementptr inbounds %struct.vport, %struct.vport* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  br label %18

17:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %17, %11
  %19 = call i32 (...) @rcu_read_unlock()
  %20 = load i32, i32* %4, align 4
  ret i32 %20
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.vport* @ovs_vport_rcu(%struct.datapath*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
