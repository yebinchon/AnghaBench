; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_adjust_levels.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_adjust_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbq_class = type { i32, %struct.cbq_class*, %struct.cbq_class*, %struct.cbq_class* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cbq_class*)* @cbq_adjust_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbq_adjust_levels(%struct.cbq_class* %0) #0 {
  %2 = alloca %struct.cbq_class*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cbq_class*, align 8
  store %struct.cbq_class* %0, %struct.cbq_class** %2, align 8
  %5 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %6 = icmp eq %struct.cbq_class* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %46

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %41, %8
  store i32 0, i32* %3, align 4
  %10 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %11 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %10, i32 0, i32 1
  %12 = load %struct.cbq_class*, %struct.cbq_class** %11, align 8
  store %struct.cbq_class* %12, %struct.cbq_class** %4, align 8
  %13 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %14 = icmp ne %struct.cbq_class* %13, null
  br i1 %14, label %15, label %36

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %27, %15
  %17 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %18 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %24 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %16
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %29 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %28, i32 0, i32 2
  %30 = load %struct.cbq_class*, %struct.cbq_class** %29, align 8
  store %struct.cbq_class* %30, %struct.cbq_class** %4, align 8
  %31 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %32 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %31, i32 0, i32 1
  %33 = load %struct.cbq_class*, %struct.cbq_class** %32, align 8
  %34 = icmp ne %struct.cbq_class* %30, %33
  br i1 %34, label %16, label %35

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %9
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  %39 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %40 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %36
  %42 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %43 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %42, i32 0, i32 3
  %44 = load %struct.cbq_class*, %struct.cbq_class** %43, align 8
  store %struct.cbq_class* %44, %struct.cbq_class** %2, align 8
  %45 = icmp ne %struct.cbq_class* %44, null
  br i1 %45, label %9, label %46

46:                                               ; preds = %7, %41
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
