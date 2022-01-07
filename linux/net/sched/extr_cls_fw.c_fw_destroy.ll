; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_fw.c_fw_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_fw.c_fw_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.fw_head = type { i32* }
%struct.fw_filter = type { i32, i32, i32, i32 }

@HTSIZE = common dso_local global i32 0, align 4
@fw_delete_filter_work = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_proto*, i32, %struct.netlink_ext_ack*)* @fw_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fw_destroy(%struct.tcf_proto* %0, i32 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.tcf_proto*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.fw_head*, align 8
  %8 = alloca %struct.fw_filter*, align 8
  %9 = alloca i32, align 4
  store %struct.tcf_proto* %0, %struct.tcf_proto** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %10 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %11 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @rtnl_dereference(i32 %12)
  %14 = bitcast i8* %13 to %struct.fw_head*
  store %struct.fw_head* %14, %struct.fw_head** %7, align 8
  %15 = load %struct.fw_head*, %struct.fw_head** %7, align 8
  %16 = icmp eq %struct.fw_head* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %73

18:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %66, %18
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @HTSIZE, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %69

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %64, %23
  %25 = load %struct.fw_head*, %struct.fw_head** %7, align 8
  %26 = getelementptr inbounds %struct.fw_head, %struct.fw_head* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @rtnl_dereference(i32 %31)
  %33 = bitcast i8* %32 to %struct.fw_filter*
  store %struct.fw_filter* %33, %struct.fw_filter** %8, align 8
  %34 = icmp ne %struct.fw_filter* %33, null
  br i1 %34, label %35, label %65

35:                                               ; preds = %24
  %36 = load %struct.fw_head*, %struct.fw_head** %7, align 8
  %37 = getelementptr inbounds %struct.fw_head, %struct.fw_head* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.fw_filter*, %struct.fw_filter** %8, align 8
  %44 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @rtnl_dereference(i32 %45)
  %47 = call i32 @RCU_INIT_POINTER(i32 %42, i8* %46)
  %48 = load %struct.tcf_proto*, %struct.tcf_proto** %4, align 8
  %49 = load %struct.fw_filter*, %struct.fw_filter** %8, align 8
  %50 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %49, i32 0, i32 2
  %51 = call i32 @tcf_unbind_filter(%struct.tcf_proto* %48, i32* %50)
  %52 = load %struct.fw_filter*, %struct.fw_filter** %8, align 8
  %53 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %52, i32 0, i32 1
  %54 = call i64 @tcf_exts_get_net(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %35
  %57 = load %struct.fw_filter*, %struct.fw_filter** %8, align 8
  %58 = getelementptr inbounds %struct.fw_filter, %struct.fw_filter* %57, i32 0, i32 0
  %59 = load i32, i32* @fw_delete_filter_work, align 4
  %60 = call i32 @tcf_queue_work(i32* %58, i32 %59)
  br label %64

61:                                               ; preds = %35
  %62 = load %struct.fw_filter*, %struct.fw_filter** %8, align 8
  %63 = call i32 @__fw_delete_filter(%struct.fw_filter* %62)
  br label %64

64:                                               ; preds = %61, %56
  br label %24

65:                                               ; preds = %24
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %19

69:                                               ; preds = %19
  %70 = load %struct.fw_head*, %struct.fw_head** %7, align 8
  %71 = load i32, i32* @rcu, align 4
  %72 = call i32 @kfree_rcu(%struct.fw_head* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %17
  ret void
}

declare dso_local i8* @rtnl_dereference(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i8*) #1

declare dso_local i32 @tcf_unbind_filter(%struct.tcf_proto*, i32*) #1

declare dso_local i64 @tcf_exts_get_net(i32*) #1

declare dso_local i32 @tcf_queue_work(i32*, i32) #1

declare dso_local i32 @__fw_delete_filter(%struct.fw_filter*) #1

declare dso_local i32 @kfree_rcu(%struct.fw_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
