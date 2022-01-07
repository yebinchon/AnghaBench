; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machine__find_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machine__find_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.machine = type { i32 }
%struct.threads = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.thread* @machine__find_thread(%struct.machine* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.machine*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.threads*, align 8
  %8 = alloca %struct.thread*, align 8
  store %struct.machine* %0, %struct.machine** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.machine*, %struct.machine** %4, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.threads* @machine__threads(%struct.machine* %9, i32 %10)
  store %struct.threads* %11, %struct.threads** %7, align 8
  %12 = load %struct.threads*, %struct.threads** %7, align 8
  %13 = getelementptr inbounds %struct.threads, %struct.threads* %12, i32 0, i32 0
  %14 = call i32 @down_read(i32* %13)
  %15 = load %struct.machine*, %struct.machine** %4, align 8
  %16 = load %struct.threads*, %struct.threads** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.thread* @____machine__findnew_thread(%struct.machine* %15, %struct.threads* %16, i32 %17, i32 %18, i32 0)
  store %struct.thread* %19, %struct.thread** %8, align 8
  %20 = load %struct.threads*, %struct.threads** %7, align 8
  %21 = getelementptr inbounds %struct.threads, %struct.threads* %20, i32 0, i32 0
  %22 = call i32 @up_read(i32* %21)
  %23 = load %struct.thread*, %struct.thread** %8, align 8
  ret %struct.thread* %23
}

declare dso_local %struct.threads* @machine__threads(%struct.machine*, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.thread* @____machine__findnew_thread(%struct.machine*, %struct.threads*, i32, i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
