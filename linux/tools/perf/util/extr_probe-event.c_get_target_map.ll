; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_get_target_map.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_get_target_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nsinfo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.map* @get_target_map(i8* %0, %struct.nsinfo* %1, i32 %2) #0 {
  %4 = alloca %struct.map*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nsinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.map*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.nsinfo* %1, %struct.nsinfo** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.map* @dso__new_map(i8* %12)
  store %struct.map* %13, %struct.map** %8, align 8
  %14 = load %struct.map*, %struct.map** %8, align 8
  %15 = icmp ne %struct.map* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = load %struct.map*, %struct.map** %8, align 8
  %18 = getelementptr inbounds %struct.map, %struct.map* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.nsinfo*, %struct.nsinfo** %6, align 8
  %23 = call i32 @nsinfo__get(%struct.nsinfo* %22)
  %24 = load %struct.map*, %struct.map** %8, align 8
  %25 = getelementptr inbounds %struct.map, %struct.map* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  br label %28

28:                                               ; preds = %21, %16, %11
  %29 = load %struct.map*, %struct.map** %8, align 8
  store %struct.map* %29, %struct.map** %4, align 8
  br label %33

30:                                               ; preds = %3
  %31 = load i8*, i8** %5, align 8
  %32 = call %struct.map* @kernel_get_module_map(i8* %31)
  store %struct.map* %32, %struct.map** %4, align 8
  br label %33

33:                                               ; preds = %30, %28
  %34 = load %struct.map*, %struct.map** %4, align 8
  ret %struct.map* %34
}

declare dso_local %struct.map* @dso__new_map(i8*) #1

declare dso_local i32 @nsinfo__get(%struct.nsinfo*) #1

declare dso_local %struct.map* @kernel_get_module_map(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
