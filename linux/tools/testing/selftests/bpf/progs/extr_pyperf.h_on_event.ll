; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_pyperf.h_on_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_pyperf.h_on_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @on_event(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %6 = call i32 @__on_event(%struct.pt_regs* %5)
  %7 = load i32, i32* %4, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* %4, align 4
  %9 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %10 = call i32 @__on_event(%struct.pt_regs* %9)
  %11 = load i32, i32* %4, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %14 = call i32 @__on_event(%struct.pt_regs* %13)
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %18 = call i32 @__on_event(%struct.pt_regs* %17)
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %22 = call i32 @__on_event(%struct.pt_regs* %21)
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @__on_event(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
