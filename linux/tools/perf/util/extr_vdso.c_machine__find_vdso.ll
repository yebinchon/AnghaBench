; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_vdso.c_machine__find_vdso.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_vdso.c_machine__find_vdso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i32 }
%struct.machine = type { i32 }
%struct.thread = type { i32 }

@DSO__NAME_VDSO32 = common dso_local global i32 0, align 4
@DSO__NAME_VDSO = common dso_local global i32 0, align 4
@DSO__NAME_VDSOX32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dso* (%struct.machine*, %struct.thread*)* @machine__find_vdso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dso* @machine__find_vdso(%struct.machine* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.machine*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.dso*, align 8
  %6 = alloca i32, align 4
  store %struct.machine* %0, %struct.machine** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  store %struct.dso* null, %struct.dso** %5, align 8
  %7 = load %struct.machine*, %struct.machine** %3, align 8
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = call i32 @machine__thread_dso_type(%struct.machine* %7, %struct.thread* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %40 [
    i32 131, label %11
    i32 128, label %34
    i32 130, label %39
    i32 129, label %39
  ]

11:                                               ; preds = %2
  %12 = load %struct.machine*, %struct.machine** %3, align 8
  %13 = getelementptr inbounds %struct.machine, %struct.machine* %12, i32 0, i32 0
  %14 = load i32, i32* @DSO__NAME_VDSO32, align 4
  %15 = call %struct.dso* @__dsos__find(i32* %13, i32 %14, i32 1)
  store %struct.dso* %15, %struct.dso** %5, align 8
  %16 = load %struct.dso*, %struct.dso** %5, align 8
  %17 = icmp ne %struct.dso* %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %11
  %19 = load %struct.machine*, %struct.machine** %3, align 8
  %20 = getelementptr inbounds %struct.machine, %struct.machine* %19, i32 0, i32 0
  %21 = load i32, i32* @DSO__NAME_VDSO, align 4
  %22 = call %struct.dso* @__dsos__find(i32* %20, i32 %21, i32 1)
  store %struct.dso* %22, %struct.dso** %5, align 8
  %23 = load %struct.dso*, %struct.dso** %5, align 8
  %24 = icmp ne %struct.dso* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.dso*, %struct.dso** %5, align 8
  %28 = load %struct.machine*, %struct.machine** %3, align 8
  %29 = call i32 @dso__type(%struct.dso* %27, %struct.machine* %28)
  %30 = icmp ne i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store %struct.dso* null, %struct.dso** %5, align 8
  br label %32

32:                                               ; preds = %31, %25, %18
  br label %33

33:                                               ; preds = %32, %11
  br label %45

34:                                               ; preds = %2
  %35 = load %struct.machine*, %struct.machine** %3, align 8
  %36 = getelementptr inbounds %struct.machine, %struct.machine* %35, i32 0, i32 0
  %37 = load i32, i32* @DSO__NAME_VDSOX32, align 4
  %38 = call %struct.dso* @__dsos__find(i32* %36, i32 %37, i32 1)
  store %struct.dso* %38, %struct.dso** %5, align 8
  br label %45

39:                                               ; preds = %2, %2
  br label %40

40:                                               ; preds = %2, %39
  %41 = load %struct.machine*, %struct.machine** %3, align 8
  %42 = getelementptr inbounds %struct.machine, %struct.machine* %41, i32 0, i32 0
  %43 = load i32, i32* @DSO__NAME_VDSO, align 4
  %44 = call %struct.dso* @__dsos__find(i32* %42, i32 %43, i32 1)
  store %struct.dso* %44, %struct.dso** %5, align 8
  br label %45

45:                                               ; preds = %40, %34, %33
  %46 = load %struct.dso*, %struct.dso** %5, align 8
  ret %struct.dso* %46
}

declare dso_local i32 @machine__thread_dso_type(%struct.machine*, %struct.thread*) #1

declare dso_local %struct.dso* @__dsos__find(i32*, i32, i32) #1

declare dso_local i32 @dso__type(%struct.dso*, %struct.machine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
