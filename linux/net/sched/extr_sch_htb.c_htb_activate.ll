; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_activate.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htb_sched = type { i32 }
%struct.htb_class = type { i32, i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htb_sched*, %struct.htb_class*)* @htb_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htb_activate(%struct.htb_sched* %0, %struct.htb_class* %1) #0 {
  %3 = alloca %struct.htb_sched*, align 8
  %4 = alloca %struct.htb_class*, align 8
  store %struct.htb_sched* %0, %struct.htb_sched** %3, align 8
  store %struct.htb_class* %1, %struct.htb_class** %4, align 8
  %5 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %6 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %11 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %9
  %16 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %17 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %15, %9, %2
  %26 = phi i1 [ true, %9 ], [ true, %2 ], [ %24, %15 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %30 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %25
  %34 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %35 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 1, %36
  %38 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %39 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.htb_sched*, %struct.htb_sched** %3, align 8
  %41 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %42 = call i32 @htb_activate_prios(%struct.htb_sched* %40, %struct.htb_class* %41)
  br label %43

43:                                               ; preds = %33, %25
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @htb_activate_prios(%struct.htb_sched*, %struct.htb_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
