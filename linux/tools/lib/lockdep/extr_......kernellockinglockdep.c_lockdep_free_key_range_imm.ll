; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c_lockdep_free_key_range_imm.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_......kernellockinglockdep.c_lockdep_free_key_range_imm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.pending_free* }
%struct.pending_free = type { i32 }

@delayed_free = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@lockdep_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @lockdep_free_key_range_imm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lockdep_free_key_range_imm(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pending_free*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.pending_free*, %struct.pending_free** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @delayed_free, i32 0, i32 0), align 8
  store %struct.pending_free* %7, %struct.pending_free** %5, align 8
  %8 = call i32 (...) @init_data_structures_once()
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @raw_local_irq_save(i64 %9)
  %11 = call i32 @arch_spin_lock(i32* @lockdep_lock)
  %12 = load %struct.pending_free*, %struct.pending_free** %5, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @__lockdep_free_key_range(%struct.pending_free* %12, i8* %13, i64 %14)
  %16 = load %struct.pending_free*, %struct.pending_free** %5, align 8
  %17 = call i32 @__free_zapped_classes(%struct.pending_free* %16)
  %18 = call i32 @arch_spin_unlock(i32* @lockdep_lock)
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @raw_local_irq_restore(i64 %19)
  ret void
}

declare dso_local i32 @init_data_structures_once(...) #1

declare dso_local i32 @raw_local_irq_save(i64) #1

declare dso_local i32 @arch_spin_lock(i32*) #1

declare dso_local i32 @__lockdep_free_key_range(%struct.pending_free*, i8*, i64) #1

declare dso_local i32 @__free_zapped_classes(%struct.pending_free*) #1

declare dso_local i32 @arch_spin_unlock(i32*) #1

declare dso_local i32 @raw_local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
