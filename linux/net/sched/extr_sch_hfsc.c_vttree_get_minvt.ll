; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_vttree_get_minvt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_vttree_get_minvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfsc_class = type { i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hfsc_class* (%struct.hfsc_class*, i64)* @vttree_get_minvt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hfsc_class* @vttree_get_minvt(%struct.hfsc_class* %0, i64 %1) #0 {
  %3 = alloca %struct.hfsc_class*, align 8
  %4 = alloca %struct.hfsc_class*, align 8
  %5 = alloca i64, align 8
  store %struct.hfsc_class* %0, %struct.hfsc_class** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  %7 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.hfsc_class* null, %struct.hfsc_class** %3, align 8
  br label %46

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %43, %12
  %14 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  %15 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %13
  %19 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call %struct.hfsc_class* @vttree_firstfit(%struct.hfsc_class* %19, i64 %20)
  store %struct.hfsc_class* %21, %struct.hfsc_class** %4, align 8
  %22 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  %23 = icmp eq %struct.hfsc_class* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store %struct.hfsc_class* null, %struct.hfsc_class** %3, align 8
  br label %46

25:                                               ; preds = %18
  %26 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  %27 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  %32 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %25
  %36 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  %37 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  %40 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i64 %38, i64* %42, align 8
  br label %43

43:                                               ; preds = %35, %25
  br label %13

44:                                               ; preds = %13
  %45 = load %struct.hfsc_class*, %struct.hfsc_class** %4, align 8
  store %struct.hfsc_class* %45, %struct.hfsc_class** %3, align 8
  br label %46

46:                                               ; preds = %44, %24, %11
  %47 = load %struct.hfsc_class*, %struct.hfsc_class** %3, align 8
  ret %struct.hfsc_class* %47
}

declare dso_local %struct.hfsc_class* @vttree_firstfit(%struct.hfsc_class*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
