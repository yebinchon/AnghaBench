; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_get_slot_next.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_get_slot_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netem_sched_data = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netem_sched_data*, i32)* @get_slot_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_slot_next(%struct.netem_sched_data* %0, i32 %1) #0 {
  %3 = alloca %struct.netem_sched_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.netem_sched_data* %0, %struct.netem_sched_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %7 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %2
  %11 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %12 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (...) @prandom_u32()
  %16 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %17 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %21 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %19, %23
  %25 = mul nsw i32 %15, %24
  %26 = ashr i32 %25, 32
  %27 = add nsw i32 %14, %26
  store i32 %27, i32* %5, align 4
  br label %42

28:                                               ; preds = %2
  %29 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %30 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %34 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %39 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @tabledist(i32 %32, i32 %37, i32* null, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %28, %10
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %43, %44
  %46 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %47 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %50 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %54 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 8
  %56 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %57 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %61 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  ret void
}

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i32 @tabledist(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
