; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_map_groups__clone.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_map_groups__clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.map_groups* }
%struct.map_groups = type { %struct.maps }
%struct.maps = type { i32 }
%struct.map = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @map_groups__clone(%struct.thread* %0, %struct.map_groups* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.map_groups*, align 8
  %5 = alloca %struct.map_groups*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.map*, align 8
  %8 = alloca %struct.maps*, align 8
  %9 = alloca %struct.map*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.map_groups* %1, %struct.map_groups** %4, align 8
  %10 = load %struct.thread*, %struct.thread** %3, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 0
  %12 = load %struct.map_groups*, %struct.map_groups** %11, align 8
  store %struct.map_groups* %12, %struct.map_groups** %5, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.map_groups*, %struct.map_groups** %4, align 8
  %16 = getelementptr inbounds %struct.map_groups, %struct.map_groups* %15, i32 0, i32 0
  store %struct.maps* %16, %struct.maps** %8, align 8
  %17 = load %struct.maps*, %struct.maps** %8, align 8
  %18 = getelementptr inbounds %struct.maps, %struct.maps* %17, i32 0, i32 0
  %19 = call i32 @down_read(i32* %18)
  %20 = load %struct.maps*, %struct.maps** %8, align 8
  %21 = call %struct.map* @maps__first(%struct.maps* %20)
  store %struct.map* %21, %struct.map** %7, align 8
  br label %22

22:                                               ; preds = %44, %2
  %23 = load %struct.map*, %struct.map** %7, align 8
  %24 = icmp ne %struct.map* %23, null
  br i1 %24, label %25, label %47

25:                                               ; preds = %22
  %26 = load %struct.map*, %struct.map** %7, align 8
  %27 = call %struct.map* @map__clone(%struct.map* %26)
  store %struct.map* %27, %struct.map** %9, align 8
  %28 = load %struct.map*, %struct.map** %9, align 8
  %29 = icmp eq %struct.map* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %48

31:                                               ; preds = %25
  %32 = load %struct.map_groups*, %struct.map_groups** %5, align 8
  %33 = load %struct.map*, %struct.map** %9, align 8
  %34 = call i32 @unwind__prepare_access(%struct.map_groups* %32, %struct.map* %33, i32* null)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %48

38:                                               ; preds = %31
  %39 = load %struct.map_groups*, %struct.map_groups** %5, align 8
  %40 = load %struct.map*, %struct.map** %9, align 8
  %41 = call i32 @map_groups__insert(%struct.map_groups* %39, %struct.map* %40)
  %42 = load %struct.map*, %struct.map** %9, align 8
  %43 = call i32 @map__put(%struct.map* %42)
  br label %44

44:                                               ; preds = %38
  %45 = load %struct.map*, %struct.map** %7, align 8
  %46 = call %struct.map* @map__next(%struct.map* %45)
  store %struct.map* %46, %struct.map** %7, align 8
  br label %22

47:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %47, %37, %30
  %49 = load %struct.maps*, %struct.maps** %8, align 8
  %50 = getelementptr inbounds %struct.maps, %struct.maps* %49, i32 0, i32 0
  %51 = call i32 @up_read(i32* %50)
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.map* @maps__first(%struct.maps*) #1

declare dso_local %struct.map* @map__clone(%struct.map*) #1

declare dso_local i32 @unwind__prepare_access(%struct.map_groups*, %struct.map*, i32*) #1

declare dso_local i32 @map_groups__insert(%struct.map_groups*, %struct.map*) #1

declare dso_local i32 @map__put(%struct.map*) #1

declare dso_local %struct.map* @map__next(%struct.map*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
