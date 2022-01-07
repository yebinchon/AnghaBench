; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_matchall.c_mall_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_matchall.c_mall_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.cls_mall_head = type { i32, i32, i32, i32 }

@mall_destroy_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, i32, %struct.netlink_ext_ack*)* @mall_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mall_destroy(%struct.tcf_proto* %0, i32 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.cls_mall_head*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %8 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %9 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.cls_mall_head* @rtnl_dereference(i32 %10)
  store %struct.cls_mall_head* %11, %struct.cls_mall_head** %7, align 8
  %12 = load %struct.cls_mall_head*, %struct.cls_mall_head** %7, align 8
  %13 = icmp ne %struct.cls_mall_head* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %45

15:                                               ; preds = %3
  %16 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %17 = load %struct.cls_mall_head*, %struct.cls_mall_head** %7, align 8
  %18 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %17, i32 0, i32 3
  %19 = call i32 @tcf_unbind_filter(%struct.tcf_proto* %16, i32* %18)
  %20 = load %struct.cls_mall_head*, %struct.cls_mall_head** %7, align 8
  %21 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @tc_skip_hw(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %15
  %26 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %27 = load %struct.cls_mall_head*, %struct.cls_mall_head** %7, align 8
  %28 = load %struct.cls_mall_head*, %struct.cls_mall_head** %7, align 8
  %29 = ptrtoint %struct.cls_mall_head* %28 to i64
  %30 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %31 = call i32 @mall_destroy_hw_filter(%struct.tcf_proto* %26, %struct.cls_mall_head* %27, i64 %29, %struct.netlink_ext_ack* %30)
  br label %32

32:                                               ; preds = %25, %15
  %33 = load %struct.cls_mall_head*, %struct.cls_mall_head** %7, align 8
  %34 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %33, i32 0, i32 1
  %35 = call i64 @tcf_exts_get_net(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.cls_mall_head*, %struct.cls_mall_head** %7, align 8
  %39 = getelementptr inbounds %struct.cls_mall_head, %struct.cls_mall_head* %38, i32 0, i32 0
  %40 = load i32, i32* @mall_destroy_work, align 4
  %41 = call i32 @tcf_queue_work(i32* %39, i32 %40)
  br label %45

42:                                               ; preds = %32
  %43 = load %struct.cls_mall_head*, %struct.cls_mall_head** %7, align 8
  %44 = call i32 @__mall_destroy(%struct.cls_mall_head* %43)
  br label %45

45:                                               ; preds = %14, %42, %37
  ret void
}

declare dso_local %struct.cls_mall_head* @rtnl_dereference(i32) #1

declare dso_local i32 @tcf_unbind_filter(%struct.tcf_proto*, i32*) #1

declare dso_local i32 @tc_skip_hw(i32) #1

declare dso_local i32 @mall_destroy_hw_filter(%struct.tcf_proto*, %struct.cls_mall_head*, i64, %struct.netlink_ext_ack*) #1

declare dso_local i64 @tcf_exts_get_net(i32*) #1

declare dso_local i32 @tcf_queue_work(i32*, i32) #1

declare dso_local i32 @__mall_destroy(%struct.cls_mall_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
