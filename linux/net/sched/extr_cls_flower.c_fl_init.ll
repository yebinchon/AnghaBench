; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_flower.c_fl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.cls_fl_head = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@mask_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*)* @fl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fl_init(%struct.tcf_proto* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcf_proto*, align 8
  %4 = alloca %struct.cls_fl_head*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.cls_fl_head* @kzalloc(i32 20, i32 %5)
  store %struct.cls_fl_head* %6, %struct.cls_fl_head** %4, align 8
  %7 = load %struct.cls_fl_head*, %struct.cls_fl_head** %4, align 8
  %8 = icmp ne %struct.cls_fl_head* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOBUFS, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %33

12:                                               ; preds = %1
  %13 = load %struct.cls_fl_head*, %struct.cls_fl_head** %4, align 8
  %14 = getelementptr inbounds %struct.cls_fl_head, %struct.cls_fl_head* %13, i32 0, i32 4
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.cls_fl_head*, %struct.cls_fl_head** %4, align 8
  %17 = getelementptr inbounds %struct.cls_fl_head, %struct.cls_fl_head* %16, i32 0, i32 3
  %18 = call i32 @INIT_LIST_HEAD_RCU(i32* %17)
  %19 = load %struct.cls_fl_head*, %struct.cls_fl_head** %4, align 8
  %20 = getelementptr inbounds %struct.cls_fl_head, %struct.cls_fl_head* %19, i32 0, i32 2
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %23 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.cls_fl_head*, %struct.cls_fl_head** %4, align 8
  %26 = call i32 @rcu_assign_pointer(i32 %24, %struct.cls_fl_head* %25)
  %27 = load %struct.cls_fl_head*, %struct.cls_fl_head** %4, align 8
  %28 = getelementptr inbounds %struct.cls_fl_head, %struct.cls_fl_head* %27, i32 0, i32 1
  %29 = call i32 @idr_init(i32* %28)
  %30 = load %struct.cls_fl_head*, %struct.cls_fl_head** %4, align 8
  %31 = getelementptr inbounds %struct.cls_fl_head, %struct.cls_fl_head* %30, i32 0, i32 0
  %32 = call i32 @rhashtable_init(i32* %31, i32* @mask_ht_params)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %12, %9
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.cls_fl_head* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD_RCU(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.cls_fl_head*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @rhashtable_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
