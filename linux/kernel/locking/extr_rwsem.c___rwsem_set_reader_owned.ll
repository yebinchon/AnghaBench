; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_rwsem.c___rwsem_set_reader_owned.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_rwsem.c___rwsem_set_reader_owned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rw_semaphore = type { i32 }
%struct.task_struct = type { i32 }

@RWSEM_READER_OWNED = common dso_local global i64 0, align 8
@RWSEM_RD_NONSPINNABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rw_semaphore*, %struct.task_struct*)* @__rwsem_set_reader_owned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rwsem_set_reader_owned(%struct.rw_semaphore* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.rw_semaphore*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  store %struct.rw_semaphore* %0, %struct.rw_semaphore** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %6 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %7 = ptrtoint %struct.task_struct* %6 to i64
  %8 = load i64, i64* @RWSEM_READER_OWNED, align 8
  %9 = or i64 %7, %8
  %10 = load %struct.rw_semaphore*, %struct.rw_semaphore** %3, align 8
  %11 = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %10, i32 0, i32 0
  %12 = call i64 @atomic_long_read(i32* %11)
  %13 = load i64, i64* @RWSEM_RD_NONSPINNABLE, align 8
  %14 = and i64 %12, %13
  %15 = or i64 %9, %14
  store i64 %15, i64* %5, align 8
  %16 = load %struct.rw_semaphore*, %struct.rw_semaphore** %3, align 8
  %17 = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %16, i32 0, i32 0
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @atomic_long_set(i32* %17, i64 %18)
  ret void
}

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i32 @atomic_long_set(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
