; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_stop_machine.c_stop_one_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_stop_machine.c_stop_one_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_stop_done = type { i32, i32 }
%struct.cpu_stop_work = type { i8*, %struct.cpu_stop_done*, i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stop_one_cpu(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cpu_stop_done, align 4
  %9 = alloca %struct.cpu_stop_work, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %9, i32 0, i32 0
  %11 = load i8*, i8** %7, align 8
  store i8* %11, i8** %10, align 8
  %12 = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %9, i32 0, i32 1
  store %struct.cpu_stop_done* %8, %struct.cpu_stop_done** %12, align 8
  %13 = getelementptr inbounds %struct.cpu_stop_work, %struct.cpu_stop_work* %9, i32 0, i32 2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %13, align 8
  %15 = call i32 @cpu_stop_init_done(%struct.cpu_stop_done* %8, i32 1)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @cpu_stop_queue_work(i32 %16, %struct.cpu_stop_work* %9)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %28

22:                                               ; preds = %3
  %23 = call i32 (...) @cond_resched()
  %24 = getelementptr inbounds %struct.cpu_stop_done, %struct.cpu_stop_done* %8, i32 0, i32 1
  %25 = call i32 @wait_for_completion(i32* %24)
  %26 = getelementptr inbounds %struct.cpu_stop_done, %struct.cpu_stop_done* %8, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %22, %19
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @cpu_stop_init_done(%struct.cpu_stop_done*, i32) #1

declare dso_local i32 @cpu_stop_queue_work(i32, %struct.cpu_stop_work*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
