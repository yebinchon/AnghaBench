; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c_lockdep_reset.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c_lockdep_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@MAX_LOCK_DEPTH = common dso_local global i32 0, align 4
@nr_hardirq_chains = common dso_local global i64 0, align 8
@nr_softirq_chains = common dso_local global i64 0, align 8
@nr_process_chains = common dso_local global i64 0, align 8
@debug_locks = common dso_local global i32 0, align 4
@CHAINHASH_SIZE = common dso_local global i32 0, align 4
@chainhash_table = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lockdep_reset() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* %1, align 8
  %4 = call i32 @raw_local_irq_save(i64 %3)
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %6 = call i32 @lockdep_init_task(%struct.TYPE_3__* %5)
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MAX_LOCK_DEPTH, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = call i32 @memset(i32 %9, i32 0, i32 %13)
  store i64 0, i64* @nr_hardirq_chains, align 8
  store i64 0, i64* @nr_softirq_chains, align 8
  store i64 0, i64* @nr_process_chains, align 8
  store i32 1, i32* @debug_locks, align 4
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %25, %0
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @CHAINHASH_SIZE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load i64, i64* @chainhash_table, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = call i32 @INIT_HLIST_HEAD(i64 %23)
  br label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %15

28:                                               ; preds = %15
  %29 = load i64, i64* %1, align 8
  %30 = call i32 @raw_local_irq_restore(i64 %29)
  ret void
}

declare dso_local i32 @raw_local_irq_save(i64) #1

declare dso_local i32 @lockdep_init_task(%struct.TYPE_3__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i64) #1

declare dso_local i32 @raw_local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
