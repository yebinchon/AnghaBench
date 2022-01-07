; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_mask_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_mask_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cls_fl_head = type { i32, i32 }
%struct.fl_flow_mask = type { i32, i32, i32, i32 }

@mask_ht_params = common dso_local global i32 0, align 4
@fl_mask_free_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cls_fl_head*, %struct.fl_flow_mask*)* @fl_mask_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl_mask_put(%struct.cls_fl_head* %0, %struct.fl_flow_mask* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cls_fl_head*, align 8
  %5 = alloca %struct.fl_flow_mask*, align 8
  store %struct.cls_fl_head* %0, %struct.cls_fl_head** %4, align 8
  store %struct.fl_flow_mask* %1, %struct.fl_flow_mask** %5, align 8
  %6 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %5, align 8
  %7 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %6, i32 0, i32 3
  %8 = call i32 @refcount_dec_and_test(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

11:                                               ; preds = %2
  %12 = load %struct.cls_fl_head*, %struct.cls_fl_head** %4, align 8
  %13 = getelementptr inbounds %struct.cls_fl_head, %struct.cls_fl_head* %12, i32 0, i32 1
  %14 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %5, align 8
  %15 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %14, i32 0, i32 2
  %16 = load i32, i32* @mask_ht_params, align 4
  %17 = call i32 @rhashtable_remove_fast(i32* %13, i32* %15, i32 %16)
  %18 = load %struct.cls_fl_head*, %struct.cls_fl_head** %4, align 8
  %19 = getelementptr inbounds %struct.cls_fl_head, %struct.cls_fl_head* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %5, align 8
  %22 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %21, i32 0, i32 1
  %23 = call i32 @list_del_rcu(i32* %22)
  %24 = load %struct.cls_fl_head*, %struct.cls_fl_head** %4, align 8
  %25 = getelementptr inbounds %struct.cls_fl_head, %struct.cls_fl_head* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load %struct.fl_flow_mask*, %struct.fl_flow_mask** %5, align 8
  %28 = getelementptr inbounds %struct.fl_flow_mask, %struct.fl_flow_mask* %27, i32 0, i32 0
  %29 = load i32, i32* @fl_mask_free_work, align 4
  %30 = call i32 @tcf_queue_work(i32* %28, i32 %29)
  store i32 1, i32* %3, align 4
  br label %31

31:                                               ; preds = %11, %10
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tcf_queue_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
