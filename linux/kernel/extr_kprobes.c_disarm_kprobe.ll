; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kprobes.c_disarm_kprobe.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kprobes.c_disarm_kprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kprobe = type { i32 }

@text_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kprobe*, i32)* @disarm_kprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disarm_kprobe(%struct.kprobe* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kprobe*, align 8
  %5 = alloca i32, align 4
  store %struct.kprobe* %0, %struct.kprobe** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %7 = call i32 @kprobe_ftrace(%struct.kprobe* %6)
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %12 = call i32 @disarm_kprobe_ftrace(%struct.kprobe* %11)
  store i32 %12, i32* %3, align 4
  br label %21

13:                                               ; preds = %2
  %14 = call i32 (...) @cpus_read_lock()
  %15 = call i32 @mutex_lock(i32* @text_mutex)
  %16 = load %struct.kprobe*, %struct.kprobe** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @__disarm_kprobe(%struct.kprobe* %16, i32 %17)
  %19 = call i32 @mutex_unlock(i32* @text_mutex)
  %20 = call i32 (...) @cpus_read_unlock()
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %13, %10
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kprobe_ftrace(%struct.kprobe*) #1

declare dso_local i32 @disarm_kprobe_ftrace(%struct.kprobe*) #1

declare dso_local i32 @cpus_read_lock(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__disarm_kprobe(%struct.kprobe*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cpus_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
