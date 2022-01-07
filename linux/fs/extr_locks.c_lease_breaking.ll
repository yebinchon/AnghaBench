; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_locks.c_lease_breaking.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_locks.c_lease_breaking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i32 }

@FL_UNLOCK_PENDING = common dso_local global i32 0, align 4
@FL_DOWNGRADE_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_lock*)* @lease_breaking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lease_breaking(%struct.file_lock* %0) #0 {
  %2 = alloca %struct.file_lock*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %2, align 8
  %3 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %4 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @FL_UNLOCK_PENDING, align 4
  %7 = load i32, i32* @FL_DOWNGRADE_PENDING, align 4
  %8 = or i32 %6, %7
  %9 = and i32 %5, %8
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
