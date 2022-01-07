; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_cpudeadline.c_cpudl_heapify.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_cpudeadline.c_cpudl_heapify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpudl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpudl*, i32)* @cpudl_heapify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpudl_heapify(%struct.cpudl* %0, i32 %1) #0 {
  %3 = alloca %struct.cpudl*, align 8
  %4 = alloca i32, align 4
  store %struct.cpudl* %0, %struct.cpudl** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %2
  %8 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %9 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @parent(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %17 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @dl_time_before(i32 %15, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %7
  %27 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @cpudl_heapify_up(%struct.cpudl* %27, i32 %28)
  br label %34

30:                                               ; preds = %7, %2
  %31 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @cpudl_heapify_down(%struct.cpudl* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %26
  ret void
}

declare dso_local i64 @dl_time_before(i32, i32) #1

declare dso_local i64 @parent(i32) #1

declare dso_local i32 @cpudl_heapify_up(%struct.cpudl*, i32) #1

declare dso_local i32 @cpudl_heapify_down(%struct.cpudl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
