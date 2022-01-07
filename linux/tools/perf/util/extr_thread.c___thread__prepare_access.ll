; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread.c___thread__prepare_access.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread.c___thread__prepare_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.maps }
%struct.maps = type { i32 }
%struct.map = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*)* @__thread__prepare_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__thread__prepare_access(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.maps*, align 8
  %6 = alloca %struct.map*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load %struct.thread*, %struct.thread** %2, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.maps* %10, %struct.maps** %5, align 8
  %11 = load %struct.maps*, %struct.maps** %5, align 8
  %12 = getelementptr inbounds %struct.maps, %struct.maps* %11, i32 0, i32 0
  %13 = call i32 @down_read(i32* %12)
  %14 = load %struct.maps*, %struct.maps** %5, align 8
  %15 = call %struct.map* @maps__first(%struct.maps* %14)
  store %struct.map* %15, %struct.map** %6, align 8
  br label %16

16:                                               ; preds = %32, %1
  %17 = load %struct.map*, %struct.map** %6, align 8
  %18 = icmp ne %struct.map* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %16
  %20 = load %struct.thread*, %struct.thread** %2, align 8
  %21 = getelementptr inbounds %struct.thread, %struct.thread* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load %struct.map*, %struct.map** %6, align 8
  %24 = call i32 @unwind__prepare_access(%struct.TYPE_2__* %22, %struct.map* %23, i32* %3)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %19
  br label %35

31:                                               ; preds = %27
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.map*, %struct.map** %6, align 8
  %34 = call %struct.map* @map__next(%struct.map* %33)
  store %struct.map* %34, %struct.map** %6, align 8
  br label %16

35:                                               ; preds = %30, %16
  %36 = load %struct.maps*, %struct.maps** %5, align 8
  %37 = getelementptr inbounds %struct.maps, %struct.maps* %36, i32 0, i32 0
  %38 = call i32 @up_read(i32* %37)
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.map* @maps__first(%struct.maps*) #1

declare dso_local i32 @unwind__prepare_access(%struct.TYPE_2__*, %struct.map*, i32*) #1

declare dso_local %struct.map* @map__next(%struct.map*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
