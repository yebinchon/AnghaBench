; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c_iucv_block_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_iucv.c_iucv_block_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.iucv_param = type { i32 }

@iucv_param_irq = common dso_local global %union.iucv_param** null, align 8
@IUCV_SETMASK = common dso_local global i32 0, align 4
@iucv_irq_cpumask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @iucv_block_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iucv_block_cpu(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.iucv_param*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i32 (...) @smp_processor_id()
  store i32 %5, i32* %3, align 4
  %6 = load %union.iucv_param**, %union.iucv_param*** @iucv_param_irq, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %union.iucv_param*, %union.iucv_param** %6, i64 %8
  %10 = load %union.iucv_param*, %union.iucv_param** %9, align 8
  store %union.iucv_param* %10, %union.iucv_param** %4, align 8
  %11 = load %union.iucv_param*, %union.iucv_param** %4, align 8
  %12 = call i32 @memset(%union.iucv_param* %11, i32 0, i32 4)
  %13 = load i32, i32* @IUCV_SETMASK, align 4
  %14 = load %union.iucv_param*, %union.iucv_param** %4, align 8
  %15 = call i32 @iucv_call_b2f0(i32 %13, %union.iucv_param* %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @cpumask_clear_cpu(i32 %16, i32* @iucv_irq_cpumask)
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @memset(%union.iucv_param*, i32, i32) #1

declare dso_local i32 @iucv_call_b2f0(i32, %union.iucv_param*) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
