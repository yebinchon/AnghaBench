; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_hash_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_hash_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@TC_H_ROOT = common dso_local global i64 0, align 8
@TCQ_F_INGRESS = common dso_local global i32 0, align 4
@TCQ_F_INVISIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qdisc_hash_add(%struct.Qdisc* %0, i32 %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %6 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @TC_H_ROOT, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %38

10:                                               ; preds = %2
  %11 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %12 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @TCQ_F_INGRESS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %10
  %18 = call i32 (...) @ASSERT_RTNL()
  %19 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %20 = call %struct.TYPE_2__* @qdisc_dev(%struct.Qdisc* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %24 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %23, i32 0, i32 3
  %25 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %26 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @hash_add_rcu(i32 %22, i32* %24, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %17
  %32 = load i32, i32* @TCQ_F_INVISIBLE, align 4
  %33 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %34 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %31, %17
  br label %38

38:                                               ; preds = %37, %10, %2
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @hash_add_rcu(i32, i32*, i32) #1

declare dso_local %struct.TYPE_2__* @qdisc_dev(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
