; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_bpf.c___cls_bpf_delete.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_bpf.c___cls_bpf_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.cls_bpf_prog = type { i32, i32, i32, i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.cls_bpf_head = type { i32 }

@cls_bpf_delete_prog_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, %struct.cls_bpf_prog*, %struct.netlink_ext_ack*)* @__cls_bpf_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cls_bpf_delete(%struct.tcf_proto* %0, %struct.cls_bpf_prog* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca %struct.cls_bpf_prog*, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.cls_bpf_head*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store %struct.cls_bpf_prog* %1, %struct.cls_bpf_prog** %5, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %8 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %9 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.cls_bpf_head* @rtnl_dereference(i32 %10)
  store %struct.cls_bpf_head* %11, %struct.cls_bpf_head** %7, align 8
  %12 = load %struct.cls_bpf_head*, %struct.cls_bpf_head** %7, align 8
  %13 = getelementptr inbounds %struct.cls_bpf_head, %struct.cls_bpf_head* %12, i32 0, i32 0
  %14 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %5, align 8
  %15 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @idr_remove(i32* %13, i32 %16)
  %18 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %19 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %5, align 8
  %20 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %21 = call i32 @cls_bpf_stop_offload(%struct.tcf_proto* %18, %struct.cls_bpf_prog* %19, %struct.netlink_ext_ack* %20)
  %22 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %5, align 8
  %23 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %22, i32 0, i32 3
  %24 = call i32 @list_del_rcu(i32* %23)
  %25 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %26 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %5, align 8
  %27 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %26, i32 0, i32 2
  %28 = call i32 @tcf_unbind_filter(%struct.tcf_proto* %25, i32* %27)
  %29 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %5, align 8
  %30 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %29, i32 0, i32 1
  %31 = call i64 @tcf_exts_get_net(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %3
  %34 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %5, align 8
  %35 = getelementptr inbounds %struct.cls_bpf_prog, %struct.cls_bpf_prog* %34, i32 0, i32 0
  %36 = load i32, i32* @cls_bpf_delete_prog_work, align 4
  %37 = call i32 @tcf_queue_work(i32* %35, i32 %36)
  br label %41

38:                                               ; preds = %3
  %39 = load %struct.cls_bpf_prog*, %struct.cls_bpf_prog** %5, align 8
  %40 = call i32 @__cls_bpf_delete_prog(%struct.cls_bpf_prog* %39)
  br label %41

41:                                               ; preds = %38, %33
  ret void
}

declare dso_local %struct.cls_bpf_head* @rtnl_dereference(i32) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @cls_bpf_stop_offload(%struct.tcf_proto*, %struct.cls_bpf_prog*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @tcf_unbind_filter(%struct.tcf_proto*, i32*) #1

declare dso_local i64 @tcf_exts_get_net(i32*) #1

declare dso_local i32 @tcf_queue_work(i32*, i32) #1

declare dso_local i32 @__cls_bpf_delete_prog(%struct.cls_bpf_prog*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
