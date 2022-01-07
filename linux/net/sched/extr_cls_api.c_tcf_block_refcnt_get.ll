; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_block_refcnt_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_block_refcnt_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_block = type { i32 }
%struct.net = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcf_block* (%struct.net*, i32)* @tcf_block_refcnt_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcf_block* @tcf_block_refcnt_get(%struct.net* %0, i32 %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcf_block*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @rcu_read_lock()
  %7 = load %struct.net*, %struct.net** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.tcf_block* @tcf_block_lookup(%struct.net* %7, i32 %8)
  store %struct.tcf_block* %9, %struct.tcf_block** %5, align 8
  %10 = load %struct.tcf_block*, %struct.tcf_block** %5, align 8
  %11 = icmp ne %struct.tcf_block* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.tcf_block*, %struct.tcf_block** %5, align 8
  %14 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %13, i32 0, i32 0
  %15 = call i32 @refcount_inc_not_zero(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store %struct.tcf_block* null, %struct.tcf_block** %5, align 8
  br label %18

18:                                               ; preds = %17, %12, %2
  %19 = call i32 (...) @rcu_read_unlock()
  %20 = load %struct.tcf_block*, %struct.tcf_block** %5, align 8
  ret %struct.tcf_block* %20
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tcf_block* @tcf_block_lookup(%struct.net*, i32) #1

declare dso_local i32 @refcount_inc_not_zero(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
