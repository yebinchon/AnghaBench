; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_vdso.c_machine__thread_dso_type.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_vdso.c_machine__thread_dso_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }
%struct.thread = type { i32 }
%struct.map = type { %struct.dso* }
%struct.dso = type { i8* }

@DSO__TYPE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.machine*, %struct.thread*)* @machine__thread_dso_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @machine__thread_dso_type(%struct.machine* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.machine*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.map*, align 8
  %7 = alloca %struct.dso*, align 8
  store %struct.machine* %0, %struct.machine** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %8 = load i32, i32* @DSO__TYPE_UNKNOWN, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.thread*, %struct.thread** %4, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.map* @map_groups__first(i32 %11)
  store %struct.map* %12, %struct.map** %6, align 8
  br label %13

13:                                               ; preds = %40, %2
  %14 = load %struct.map*, %struct.map** %6, align 8
  %15 = icmp ne %struct.map* %14, null
  br i1 %15, label %16, label %43

16:                                               ; preds = %13
  %17 = load %struct.map*, %struct.map** %6, align 8
  %18 = getelementptr inbounds %struct.map, %struct.map* %17, i32 0, i32 0
  %19 = load %struct.dso*, %struct.dso** %18, align 8
  store %struct.dso* %19, %struct.dso** %7, align 8
  %20 = load %struct.dso*, %struct.dso** %7, align 8
  %21 = icmp ne %struct.dso* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load %struct.dso*, %struct.dso** %7, align 8
  %24 = getelementptr inbounds %struct.dso, %struct.dso* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 47
  br i1 %29, label %30, label %31

30:                                               ; preds = %22, %16
  br label %40

31:                                               ; preds = %22
  %32 = load %struct.dso*, %struct.dso** %7, align 8
  %33 = load %struct.machine*, %struct.machine** %3, align 8
  %34 = call i32 @dso__type(%struct.dso* %32, %struct.machine* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @DSO__TYPE_UNKNOWN, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %43

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %30
  %41 = load %struct.map*, %struct.map** %6, align 8
  %42 = call %struct.map* @map_groups__next(%struct.map* %41)
  store %struct.map* %42, %struct.map** %6, align 8
  br label %13

43:                                               ; preds = %38, %13
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.map* @map_groups__first(i32) #1

declare dso_local i32 @dso__type(%struct.dso*, %struct.machine*) #1

declare dso_local %struct.map* @map_groups__next(%struct.map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
