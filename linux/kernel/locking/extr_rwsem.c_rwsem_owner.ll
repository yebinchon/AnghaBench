; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_rwsem.c_rwsem_owner.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_rwsem.c_rwsem_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.rw_semaphore = type { i32 }

@RWSEM_OWNER_FLAGS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.task_struct* (%struct.rw_semaphore*)* @rwsem_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.task_struct* @rwsem_owner(%struct.rw_semaphore* %0) #0 {
  %2 = alloca %struct.rw_semaphore*, align 8
  store %struct.rw_semaphore* %0, %struct.rw_semaphore** %2, align 8
  %3 = load %struct.rw_semaphore*, %struct.rw_semaphore** %2, align 8
  %4 = getelementptr inbounds %struct.rw_semaphore, %struct.rw_semaphore* %3, i32 0, i32 0
  %5 = call i32 @atomic_long_read(i32* %4)
  %6 = load i32, i32* @RWSEM_OWNER_FLAGS_MASK, align 4
  %7 = xor i32 %6, -1
  %8 = and i32 %5, %7
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to %struct.task_struct*
  ret %struct.task_struct* %10
}

declare dso_local i32 @atomic_long_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
