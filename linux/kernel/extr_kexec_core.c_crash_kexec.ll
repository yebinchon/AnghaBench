; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kexec_core.c_crash_kexec.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kexec_core.c_crash_kexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@panic_cpu = common dso_local global i32 0, align 4
@PANIC_CPU_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crash_kexec(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %5 = call i32 (...) @raw_smp_processor_id()
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @PANIC_CPU_INVALID, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @atomic_cmpxchg(i32* @panic_cpu, i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @PANIC_CPU_INVALID, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = call i32 (...) @printk_safe_flush_on_panic()
  %14 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %15 = call i32 @__crash_kexec(%struct.pt_regs* %14)
  %16 = load i32, i32* @PANIC_CPU_INVALID, align 4
  %17 = call i32 @atomic_set(i32* @panic_cpu, i32 %16)
  br label %18

18:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @printk_safe_flush_on_panic(...) #1

declare dso_local i32 @__crash_kexec(%struct.pt_regs*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
