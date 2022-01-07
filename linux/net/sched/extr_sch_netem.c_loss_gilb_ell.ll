; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_loss_gilb_ell.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_loss_gilb_ell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netem_sched_data = type { %struct.clgstate }
%struct.clgstate = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netem_sched_data*)* @loss_gilb_ell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loss_gilb_ell(%struct.netem_sched_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netem_sched_data*, align 8
  %4 = alloca %struct.clgstate*, align 8
  store %struct.netem_sched_data* %0, %struct.netem_sched_data** %3, align 8
  %5 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %6 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %5, i32 0, i32 0
  store %struct.clgstate* %6, %struct.clgstate** %4, align 8
  %7 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %8 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %44 [
    i32 128, label %10
    i32 129, label %27
  ]

10:                                               ; preds = %1
  %11 = call i32 (...) @prandom_u32()
  %12 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %13 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %18 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %17, i32 0, i32 0
  store i32 129, i32* %18, align 4
  br label %19

19:                                               ; preds = %16, %10
  %20 = call i32 (...) @prandom_u32()
  %21 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %22 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %45

26:                                               ; preds = %19
  br label %44

27:                                               ; preds = %1
  %28 = call i32 (...) @prandom_u32()
  %29 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %30 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %35 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %34, i32 0, i32 0
  store i32 128, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %27
  %37 = call i32 (...) @prandom_u32()
  %38 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %39 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %45

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %1, %26
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %42, %25
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @prandom_u32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
