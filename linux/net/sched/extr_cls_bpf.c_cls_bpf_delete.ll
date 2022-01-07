; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_bpf.c_cls_bpf_delete.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_bpf.c_cls_bpf_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.cls_bpf_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i8*, i32*, i32, %struct.netlink_ext_ack*)* @cls_bpf_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cls_bpf_delete(%struct.tcf_proto* %0, i8* %1, i32* %2, i32 %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.netlink_ext_ack*, align 8
  %11 = alloca %struct.cls_bpf_head*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %10, align 8
  %12 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %13 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.cls_bpf_head* @rtnl_dereference(i32 %14)
  store %struct.cls_bpf_head* %15, %struct.cls_bpf_head** %11, align 8
  %16 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %19 = call i32 @__cls_bpf_delete(%struct.tcf_proto* %16, i8* %17, %struct.netlink_ext_ack* %18)
  %20 = load %struct.cls_bpf_head*, %struct.cls_bpf_head** %11, align 8
  %21 = getelementptr inbounds %struct.cls_bpf_head, %struct.cls_bpf_head* %20, i32 0, i32 0
  %22 = call i32 @list_empty(i32* %21)
  %23 = load i32*, i32** %8, align 8
  store i32 %22, i32* %23, align 4
  ret i32 0
}

declare dso_local %struct.cls_bpf_head* @rtnl_dereference(i32) #1

declare dso_local i32 @__cls_bpf_delete(%struct.tcf_proto*, i8*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
