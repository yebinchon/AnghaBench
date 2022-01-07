; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kprobes.c_aggr_fault_handler.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kprobes.c_aggr_fault_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kprobe = type { i64 (%struct.kprobe*, %struct.pt_regs*, i32)* }
%struct.pt_regs = type { i32 }

@kprobe_instance = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kprobe*, %struct.pt_regs*, i32)* @aggr_fault_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aggr_fault_handler(%struct.kprobe* %0, %struct.pt_regs* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kprobe*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kprobe*, align 8
  store %struct.kprobe* %0, %struct.kprobe** %5, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @kprobe_instance, align 4
  %10 = call %struct.kprobe* @__this_cpu_read(i32 %9)
  store %struct.kprobe* %10, %struct.kprobe** %8, align 8
  %11 = load %struct.kprobe*, %struct.kprobe** %8, align 8
  %12 = icmp ne %struct.kprobe* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  %14 = load %struct.kprobe*, %struct.kprobe** %8, align 8
  %15 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %14, i32 0, i32 0
  %16 = load i64 (%struct.kprobe*, %struct.pt_regs*, i32)*, i64 (%struct.kprobe*, %struct.pt_regs*, i32)** %15, align 8
  %17 = icmp ne i64 (%struct.kprobe*, %struct.pt_regs*, i32)* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load %struct.kprobe*, %struct.kprobe** %8, align 8
  %20 = getelementptr inbounds %struct.kprobe, %struct.kprobe* %19, i32 0, i32 0
  %21 = load i64 (%struct.kprobe*, %struct.pt_regs*, i32)*, i64 (%struct.kprobe*, %struct.pt_regs*, i32)** %20, align 8
  %22 = load %struct.kprobe*, %struct.kprobe** %8, align 8
  %23 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i64 %21(%struct.kprobe* %22, %struct.pt_regs* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %30

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %13, %3
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %27
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local %struct.kprobe* @__this_cpu_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
