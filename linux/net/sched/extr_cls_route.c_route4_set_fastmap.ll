; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_route.c_route4_set_fastmap.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_route.c_route4_set_fastmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.route4_head = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.route4_filter*, i32 }
%struct.route4_filter = type { i32 }

@fastmap_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.route4_head*, i32, i32, %struct.route4_filter*)* @route4_set_fastmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @route4_set_fastmap(%struct.route4_head* %0, i32 %1, i32 %2, %struct.route4_filter* %3) #0 {
  %5 = alloca %struct.route4_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.route4_filter*, align 8
  %9 = alloca i32, align 4
  store %struct.route4_head* %0, %struct.route4_head** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.route4_filter* %3, %struct.route4_filter** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @route4_fastmap_hash(i32 %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = call i32 @spin_lock_bh(i32* @fastmap_lock)
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.route4_head*, %struct.route4_head** %5, align 8
  %16 = getelementptr inbounds %struct.route4_head, %struct.route4_head* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i32 %14, i32* %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.route4_head*, %struct.route4_head** %5, align 8
  %24 = getelementptr inbounds %struct.route4_head, %struct.route4_head* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %22, i32* %29, align 8
  %30 = load %struct.route4_filter*, %struct.route4_filter** %8, align 8
  %31 = load %struct.route4_head*, %struct.route4_head** %5, align 8
  %32 = getelementptr inbounds %struct.route4_head, %struct.route4_head* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store %struct.route4_filter* %30, %struct.route4_filter** %37, align 8
  %38 = call i32 @spin_unlock_bh(i32* @fastmap_lock)
  ret void
}

declare dso_local i32 @route4_fastmap_hash(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
