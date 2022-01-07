; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_locks.c_target_leasetype.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_locks.c_target_leasetype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i32, i32 }

@FL_UNLOCK_PENDING = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@FL_DOWNGRADE_PENDING = common dso_local global i32 0, align 4
@F_RDLCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_lock*)* @target_leasetype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_leasetype(%struct.file_lock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file_lock*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %3, align 8
  %4 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %5 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @FL_UNLOCK_PENDING, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @F_UNLCK, align 4
  store i32 %11, i32* %2, align 4
  br label %25

12:                                               ; preds = %1
  %13 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %14 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @FL_DOWNGRADE_PENDING, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* @F_RDLCK, align 4
  store i32 %20, i32* %2, align 4
  br label %25

21:                                               ; preds = %12
  %22 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %23 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %21, %19, %10
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
