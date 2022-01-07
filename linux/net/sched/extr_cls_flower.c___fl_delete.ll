; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c___fl_delete.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c___fl_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.cls_fl_filter = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.cls_fl_head = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*, %struct.cls_fl_filter*, i32*, i32, %struct.netlink_ext_ack*)* @__fl_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__fl_delete(%struct.tcf_proto* %0, %struct.cls_fl_filter* %1, i32* %2, i32 %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcf_proto*, align 8
  %8 = alloca %struct.cls_fl_filter*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.cls_fl_head*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %7, align 8
  store %struct.cls_fl_filter* %1, %struct.cls_fl_filter** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %13 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %14 = call %struct.cls_fl_head* @fl_head_dereference(%struct.tcf_proto* %13)
  store %struct.cls_fl_head* %14, %struct.cls_fl_head** %12, align 8
  %15 = load i32*, i32** %9, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %17 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %8, align 8
  %20 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %5
  %24 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %25 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %80

29:                                               ; preds = %5
  %30 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %8, align 8
  %31 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %8, align 8
  %33 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %8, align 8
  %37 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %36, i32 0, i32 6
  %38 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %8, align 8
  %39 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @rhashtable_remove_fast(i32* %35, i32* %37, i32 %42)
  %44 = load %struct.cls_fl_head*, %struct.cls_fl_head** %12, align 8
  %45 = getelementptr inbounds %struct.cls_fl_head, %struct.cls_fl_head* %44, i32 0, i32 0
  %46 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %8, align 8
  %47 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @idr_remove(i32* %45, i32 %48)
  %50 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %8, align 8
  %51 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %50, i32 0, i32 4
  %52 = call i32 @list_del_rcu(i32* %51)
  %53 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %54 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock(i32* %54)
  %56 = load %struct.cls_fl_head*, %struct.cls_fl_head** %12, align 8
  %57 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %8, align 8
  %58 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %57, i32 0, i32 3
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = call i32 @fl_mask_put(%struct.cls_fl_head* %56, %struct.TYPE_2__* %59)
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  %62 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %8, align 8
  %63 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @tc_skip_hw(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %29
  %68 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %69 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %8, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %72 = call i32 @fl_hw_destroy_filter(%struct.tcf_proto* %68, %struct.cls_fl_filter* %69, i32 %70, %struct.netlink_ext_ack* %71)
  br label %73

73:                                               ; preds = %67, %29
  %74 = load %struct.tcf_proto*, %struct.tcf_proto** %7, align 8
  %75 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %8, align 8
  %76 = getelementptr inbounds %struct.cls_fl_filter, %struct.cls_fl_filter* %75, i32 0, i32 1
  %77 = call i32 @tcf_unbind_filter(%struct.tcf_proto* %74, i32* %76)
  %78 = load %struct.cls_fl_filter*, %struct.cls_fl_filter** %8, align 8
  %79 = call i32 @__fl_put(%struct.cls_fl_filter* %78)
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %73, %23
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local %struct.cls_fl_head* @fl_head_dereference(%struct.tcf_proto*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @fl_mask_put(%struct.cls_fl_head*, %struct.TYPE_2__*) #1

declare dso_local i32 @tc_skip_hw(i32) #1

declare dso_local i32 @fl_hw_destroy_filter(%struct.tcf_proto*, %struct.cls_fl_filter*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @tcf_unbind_filter(%struct.tcf_proto*, i32*) #1

declare dso_local i32 @__fl_put(%struct.cls_fl_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
