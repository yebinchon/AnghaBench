; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_basic.c_basic_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_basic.c_basic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_proto = type { i32 }
%struct.basic_head = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_proto*)* @basic_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @basic_init(%struct.tcf_proto* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcf_proto*, align 8
  %4 = alloca %struct.basic_head*, align 8
  store %struct.tcf_proto* %0, %struct.tcf_proto** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.basic_head* @kzalloc(i32 8, i32 %5)
  store %struct.basic_head* %6, %struct.basic_head** %4, align 8
  %7 = load %struct.basic_head*, %struct.basic_head** %4, align 8
  %8 = icmp eq %struct.basic_head* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOBUFS, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %24

12:                                               ; preds = %1
  %13 = load %struct.basic_head*, %struct.basic_head** %4, align 8
  %14 = getelementptr inbounds %struct.basic_head, %struct.basic_head* %13, i32 0, i32 1
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.basic_head*, %struct.basic_head** %4, align 8
  %17 = getelementptr inbounds %struct.basic_head, %struct.basic_head* %16, i32 0, i32 0
  %18 = call i32 @idr_init(i32* %17)
  %19 = load %struct.tcf_proto*, %struct.tcf_proto** %3, align 8
  %20 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.basic_head*, %struct.basic_head** %4, align 8
  %23 = call i32 @rcu_assign_pointer(i32 %21, %struct.basic_head* %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %12, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.basic_head* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.basic_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
