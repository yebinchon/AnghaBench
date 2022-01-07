; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_proto_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_proto_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 (%struct.tcf_proto*, i32, %struct.netlink_ext_ack*)* }
%struct.netlink_ext_ack = type { i32 }

@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, i32, i32, %struct.netlink_ext_ack*)* @tcf_proto_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcf_proto_destroy(%struct.tcf_proto* %0, i32 %1, i32 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca %struct.tcf_proto*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %8, align 8
  %9 = load %struct.tcf_proto*, %struct.tcf_proto** %5, align 8
  %10 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32 (%struct.tcf_proto*, i32, %struct.netlink_ext_ack*)*, i32 (%struct.tcf_proto*, i32, %struct.netlink_ext_ack*)** %12, align 8
  %14 = load %struct.tcf_proto*, %struct.tcf_proto** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %8, align 8
  %17 = call i32 %13(%struct.tcf_proto* %14, i32 %15, %struct.netlink_ext_ack* %16)
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.tcf_proto*, %struct.tcf_proto** %5, align 8
  %22 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.tcf_proto*, %struct.tcf_proto** %5, align 8
  %25 = call i32 @tcf_proto_signal_destroyed(i32 %23, %struct.tcf_proto* %24)
  br label %26

26:                                               ; preds = %20, %4
  %27 = load %struct.tcf_proto*, %struct.tcf_proto** %5, align 8
  %28 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @tcf_chain_put(i32 %29)
  %31 = load %struct.tcf_proto*, %struct.tcf_proto** %5, align 8
  %32 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @module_put(i32 %35)
  %37 = load %struct.tcf_proto*, %struct.tcf_proto** %5, align 8
  %38 = load i32, i32* @rcu, align 4
  %39 = call i32 @kfree_rcu(%struct.tcf_proto* %37, i32 %38)
  ret void
}

declare dso_local i32 @tcf_proto_signal_destroyed(i32, %struct.tcf_proto*) #1

declare dso_local i32 @tcf_chain_put(i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kfree_rcu(%struct.tcf_proto*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
