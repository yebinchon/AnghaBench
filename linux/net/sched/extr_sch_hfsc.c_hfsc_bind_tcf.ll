; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_hfsc_bind_tcf.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_hfsc_bind_tcf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.hfsc_class = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.Qdisc*, i64, i32)* @hfsc_bind_tcf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hfsc_bind_tcf(%struct.Qdisc* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hfsc_class*, align 8
  %9 = alloca %struct.hfsc_class*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  %11 = inttoptr i64 %10 to %struct.hfsc_class*
  store %struct.hfsc_class* %11, %struct.hfsc_class** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %14 = call %struct.hfsc_class* @hfsc_find_class(i32 %12, %struct.Qdisc* %13)
  store %struct.hfsc_class* %14, %struct.hfsc_class** %9, align 8
  %15 = load %struct.hfsc_class*, %struct.hfsc_class** %9, align 8
  %16 = icmp ne %struct.hfsc_class* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %3
  %18 = load %struct.hfsc_class*, %struct.hfsc_class** %8, align 8
  %19 = icmp ne %struct.hfsc_class* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load %struct.hfsc_class*, %struct.hfsc_class** %8, align 8
  %22 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.hfsc_class*, %struct.hfsc_class** %9, align 8
  %25 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i64 0, i64* %4, align 8
  br label %37

29:                                               ; preds = %20, %17
  %30 = load %struct.hfsc_class*, %struct.hfsc_class** %9, align 8
  %31 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %29, %3
  %35 = load %struct.hfsc_class*, %struct.hfsc_class** %9, align 8
  %36 = ptrtoint %struct.hfsc_class* %35 to i64
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %34, %28
  %38 = load i64, i64* %4, align 8
  ret i64 %38
}

declare dso_local %struct.hfsc_class* @hfsc_find_class(i32, %struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
