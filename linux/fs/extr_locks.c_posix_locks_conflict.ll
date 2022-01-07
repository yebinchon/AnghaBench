; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_locks.c_posix_locks_conflict.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_locks.c_posix_locks_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_lock*, %struct.file_lock*)* @posix_locks_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @posix_locks_conflict(%struct.file_lock* %0, %struct.file_lock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file_lock*, align 8
  %5 = alloca %struct.file_lock*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %4, align 8
  store %struct.file_lock* %1, %struct.file_lock** %5, align 8
  %6 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %7 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %8 = call i64 @posix_same_owner(%struct.file_lock* %6, %struct.file_lock* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %21

11:                                               ; preds = %2
  %12 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %13 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %14 = call i32 @locks_overlap(%struct.file_lock* %12, %struct.file_lock* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %21

17:                                               ; preds = %11
  %18 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %19 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %20 = call i32 @locks_conflict(%struct.file_lock* %18, %struct.file_lock* %19)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %16, %10
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i64 @posix_same_owner(%struct.file_lock*, %struct.file_lock*) #1

declare dso_local i32 @locks_overlap(%struct.file_lock*, %struct.file_lock*) #1

declare dso_local i32 @locks_conflict(%struct.file_lock*, %struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
