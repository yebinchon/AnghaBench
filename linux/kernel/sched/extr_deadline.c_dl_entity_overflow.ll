; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_dl_entity_overflow.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_deadline.c_dl_entity_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_dl_entity = type { i32, i32, i32, i32 }

@DL_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sched_dl_entity*, %struct.sched_dl_entity*, i32)* @dl_entity_overflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dl_entity_overflow(%struct.sched_dl_entity* %0, %struct.sched_dl_entity* %1, i32 %2) #0 {
  %4 = alloca %struct.sched_dl_entity*, align 8
  %5 = alloca %struct.sched_dl_entity*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sched_dl_entity* %0, %struct.sched_dl_entity** %4, align 8
  store %struct.sched_dl_entity* %1, %struct.sched_dl_entity** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %5, align 8
  %10 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @DL_SCALE, align 4
  %13 = ashr i32 %11, %12
  %14 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %4, align 8
  %15 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DL_SCALE, align 4
  %18 = ashr i32 %16, %17
  %19 = mul nsw i32 %13, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %4, align 8
  %21 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %22, %23
  %25 = load i32, i32* @DL_SCALE, align 4
  %26 = ashr i32 %24, %25
  %27 = load %struct.sched_dl_entity*, %struct.sched_dl_entity** %5, align 8
  %28 = getelementptr inbounds %struct.sched_dl_entity, %struct.sched_dl_entity* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DL_SCALE, align 4
  %31 = ashr i32 %29, %30
  %32 = mul nsw i32 %26, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @dl_time_before(i32 %33, i32 %34)
  ret i32 %35
}

declare dso_local i32 @dl_time_before(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
