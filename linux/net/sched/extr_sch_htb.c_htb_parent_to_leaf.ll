; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_parent_to_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_parent_to_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.htb_sched = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.htb_class = type { i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i64, %struct.htb_class* }
%struct.TYPE_4__ = type { %struct.Qdisc* }

@HTB_CAN_SEND = common dso_local global i64 0, align 8
@noop_qdisc = common dso_local global %struct.Qdisc zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htb_sched*, %struct.htb_class*, %struct.Qdisc*)* @htb_parent_to_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htb_parent_to_leaf(%struct.htb_sched* %0, %struct.htb_class* %1, %struct.Qdisc* %2) #0 {
  %4 = alloca %struct.htb_sched*, align 8
  %5 = alloca %struct.htb_class*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.htb_class*, align 8
  store %struct.htb_sched* %0, %struct.htb_sched** %4, align 8
  store %struct.htb_class* %1, %struct.htb_class** %5, align 8
  store %struct.Qdisc* %2, %struct.Qdisc** %6, align 8
  %8 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %9 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %8, i32 0, i32 11
  %10 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  store %struct.htb_class* %10, %struct.htb_class** %7, align 8
  %11 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %12 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %3
  %16 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %17 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %16, i32 0, i32 7
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %20 = icmp ne %struct.Qdisc* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %23 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %22, i32 0, i32 10
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %21, %15, %3
  %27 = phi i1 [ true, %15 ], [ true, %3 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %31 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @HTB_CAN_SEND, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %26
  %36 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %37 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %36, i32 0, i32 9
  %38 = load %struct.htb_sched*, %struct.htb_sched** %4, align 8
  %39 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %42 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @htb_safe_rb_erase(i32* %37, i32* %45)
  br label %47

47:                                               ; preds = %35, %26
  %48 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %49 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %51 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %50, i32 0, i32 8
  %52 = call i32 @memset(i32* %51, i32 0, i32 4)
  %53 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %54 = icmp ne %struct.Qdisc* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  br label %58

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi %struct.Qdisc* [ %56, %55 ], [ @noop_qdisc, %57 ]
  %60 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %61 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %60, i32 0, i32 7
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store %struct.Qdisc* %59, %struct.Qdisc** %62, align 8
  %63 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %64 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %67 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 8
  %68 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %69 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %72 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = call i32 (...) @ktime_get_ns()
  %74 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %75 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load i64, i64* @HTB_CAN_SEND, align 8
  %77 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %78 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @htb_safe_rb_erase(i32*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ktime_get_ns(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
