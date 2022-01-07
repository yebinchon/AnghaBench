; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_tbf.c_psched_ns_t2l.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_tbf.c_psched_ns_t2l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psched_ratecfg = type { i32, i64, i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@TC_LINKLAYER_ATM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psched_ratecfg*, i32)* @psched_ns_t2l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psched_ns_t2l(%struct.psched_ratecfg* %0, i32 %1) #0 {
  %3 = alloca %struct.psched_ratecfg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.psched_ratecfg* %0, %struct.psched_ratecfg** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.psched_ratecfg*, %struct.psched_ratecfg** %3, align 8
  %8 = getelementptr inbounds %struct.psched_ratecfg, %struct.psched_ratecfg* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = mul nsw i32 %6, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @NSEC_PER_SEC, align 4
  %13 = call i32 @do_div(i32 %11, i32 %12)
  %14 = load %struct.psched_ratecfg*, %struct.psched_ratecfg** %3, align 8
  %15 = getelementptr inbounds %struct.psched_ratecfg, %struct.psched_ratecfg* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TC_LINKLAYER_ATM, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @do_div(i32 %23, i32 53)
  %25 = load i32, i32* %5, align 4
  %26 = mul nsw i32 %25, 48
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %22, %2
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.psched_ratecfg*, %struct.psched_ratecfg** %3, align 8
  %30 = getelementptr inbounds %struct.psched_ratecfg, %struct.psched_ratecfg* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %28, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.psched_ratecfg*, %struct.psched_ratecfg** %3, align 8
  %35 = getelementptr inbounds %struct.psched_ratecfg, %struct.psched_ratecfg* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %40

39:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %33
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
