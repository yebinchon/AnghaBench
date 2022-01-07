; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_clear_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_api.c_qdisc_clear_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32, i32*, i32* }

@TCQ_F_NOLOCK = common dso_local global i32 0, align 4
@TCQ_F_CPUSTATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*)* @qdisc_clear_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qdisc_clear_nolock(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %3 = load i32, i32* @TCQ_F_NOLOCK, align 4
  %4 = xor i32 %3, -1
  %5 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %6 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = and i32 %7, %4
  store i32 %8, i32* %6, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %10 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @TCQ_F_CPUSTATS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %35

16:                                               ; preds = %1
  %17 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %18 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @free_percpu(i32* %19)
  %21 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %22 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @free_percpu(i32* %23)
  %25 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %26 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %28 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = load i32, i32* @TCQ_F_CPUSTATS, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %32 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @free_percpu(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
