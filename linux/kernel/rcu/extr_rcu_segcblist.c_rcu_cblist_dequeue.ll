; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_rcu_segcblist.c_rcu_cblist_dequeue.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_rcu_segcblist.c_rcu_cblist_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_head = type { %struct.rcu_head* }
%struct.rcu_cblist = type { %struct.rcu_head*, %struct.rcu_head**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rcu_head* @rcu_cblist_dequeue(%struct.rcu_cblist* %0) #0 {
  %2 = alloca %struct.rcu_head*, align 8
  %3 = alloca %struct.rcu_cblist*, align 8
  %4 = alloca %struct.rcu_head*, align 8
  store %struct.rcu_cblist* %0, %struct.rcu_cblist** %3, align 8
  %5 = load %struct.rcu_cblist*, %struct.rcu_cblist** %3, align 8
  %6 = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %5, i32 0, i32 0
  %7 = load %struct.rcu_head*, %struct.rcu_head** %6, align 8
  store %struct.rcu_head* %7, %struct.rcu_head** %4, align 8
  %8 = load %struct.rcu_head*, %struct.rcu_head** %4, align 8
  %9 = icmp ne %struct.rcu_head* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.rcu_head* null, %struct.rcu_head** %2, align 8
  br label %32

11:                                               ; preds = %1
  %12 = load %struct.rcu_cblist*, %struct.rcu_cblist** %3, align 8
  %13 = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %13, align 8
  %16 = load %struct.rcu_head*, %struct.rcu_head** %4, align 8
  %17 = getelementptr inbounds %struct.rcu_head, %struct.rcu_head* %16, i32 0, i32 0
  %18 = load %struct.rcu_head*, %struct.rcu_head** %17, align 8
  %19 = load %struct.rcu_cblist*, %struct.rcu_cblist** %3, align 8
  %20 = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %19, i32 0, i32 0
  store %struct.rcu_head* %18, %struct.rcu_head** %20, align 8
  %21 = load %struct.rcu_cblist*, %struct.rcu_cblist** %3, align 8
  %22 = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %21, i32 0, i32 0
  %23 = load %struct.rcu_head*, %struct.rcu_head** %22, align 8
  %24 = icmp ne %struct.rcu_head* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %11
  %26 = load %struct.rcu_cblist*, %struct.rcu_cblist** %3, align 8
  %27 = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %26, i32 0, i32 0
  %28 = load %struct.rcu_cblist*, %struct.rcu_cblist** %3, align 8
  %29 = getelementptr inbounds %struct.rcu_cblist, %struct.rcu_cblist* %28, i32 0, i32 1
  store %struct.rcu_head** %27, %struct.rcu_head*** %29, align 8
  br label %30

30:                                               ; preds = %25, %11
  %31 = load %struct.rcu_head*, %struct.rcu_head** %4, align 8
  store %struct.rcu_head* %31, %struct.rcu_head** %2, align 8
  br label %32

32:                                               ; preds = %30, %10
  %33 = load %struct.rcu_head*, %struct.rcu_head** %2, align 8
  ret %struct.rcu_head* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
