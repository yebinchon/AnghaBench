; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_rwsem_is_wrlocked.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_rwsem_is_wrlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rw_semaphore = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rw_semaphore*)* @rwsem_is_wrlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rwsem_is_wrlocked(%struct.rw_semaphore* %0) #0 {
  %2 = alloca %struct.rw_semaphore*, align 8
  %3 = alloca i32, align 4
  store %struct.rw_semaphore* %0, %struct.rw_semaphore** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct.rw_semaphore*, %struct.rw_semaphore** %2, align 8
  %5 = call i32 @down_read_trylock(%struct.rw_semaphore* %4)
  %6 = call i64 @unlikely(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  %9 = load %struct.rw_semaphore*, %struct.rw_semaphore** %2, align 8
  %10 = call i32 @up_read(%struct.rw_semaphore* %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* %3, align 4
  ret i32 %12
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @down_read_trylock(%struct.rw_semaphore*) #1

declare dso_local i32 @up_read(%struct.rw_semaphore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
