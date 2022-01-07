; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_delete.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.cls_fl_head = type { i32 }
%struct.cls_fl_filter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, i8*, i32*, i32, %struct.netlink_ext_ack*)* @fl_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl_delete(%struct.tcf_proto* %0, i8* %1, i32* %2, i32 %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.netlink_ext_ack*, align 8
  %11 = alloca %struct.cls_fl_head*, align 8
  %12 = alloca %struct.cls_fl_filter*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %10, align 8
  %15 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %16 = call %struct.cls_fl_head* @fl_head_dereference(%struct.tcf_proto* %15)
  store %struct.cls_fl_head* %16, %struct.cls_fl_head** %11, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.cls_fl_filter*
  store %struct.cls_fl_filter* %18, %struct.cls_fl_filter** %12, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %20 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %12, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %23 = call i32 @__fl_delete(%struct.tcf_proto* %19, %struct.cls_fl_filter* %20, i32* %13, i32 %21, %struct.netlink_ext_ack* %22)
  store i32 %23, i32* %14, align 4
  %24 = load %struct.cls_fl_head*, %struct.cls_fl_head** %11, align 8
  %25 = getelementptr inbounds %struct.cls_fl_head, %struct.cls_fl_head* %24, i32 0, i32 0
  %26 = call i32 @list_empty(i32* %25)
  %27 = load i32*, i32** %8, align 8
  store i32 %26, i32* %27, align 4
  %28 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %12, align 8
  %29 = call i32 @__fl_put(%struct.cls_fl_filter* %28)
  %30 = load i32, i32* %14, align 4
  ret i32 %30
}

declare dso_local %struct.cls_fl_head* @fl_head_dereference(%struct.tcf_proto*) #1

declare dso_local i32 @__fl_delete(%struct.tcf_proto*, %struct.cls_fl_filter*, i32*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @__fl_put(%struct.cls_fl_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
