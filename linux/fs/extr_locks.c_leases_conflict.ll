; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_locks.c_leases_conflict.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_locks.c_leases_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i32 }

@FL_LAYOUT = common dso_local global i32 0, align 4
@FL_DELEG = common dso_local global i32 0, align 4
@FL_LEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file_lock*, %struct.file_lock*)* @leases_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @leases_conflict(%struct.file_lock* %0, %struct.file_lock* %1) #0 {
  %3 = alloca %struct.file_lock*, align 8
  %4 = alloca %struct.file_lock*, align 8
  %5 = alloca i32, align 4
  store %struct.file_lock* %0, %struct.file_lock** %3, align 8
  store %struct.file_lock* %1, %struct.file_lock** %4, align 8
  %6 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %7 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @FL_LAYOUT, align 4
  %10 = and i32 %8, %9
  %11 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %12 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FL_LAYOUT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %10, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %37

18:                                               ; preds = %2
  %19 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %20 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FL_DELEG, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %27 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @FL_LEASE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %37

33:                                               ; preds = %25, %18
  %34 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %35 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %36 = call i32 @locks_conflict(%struct.file_lock* %34, %struct.file_lock* %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %33, %32, %17
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %40 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %41 = call i32 @trace_leases_conflict(i32 %38, %struct.file_lock* %39, %struct.file_lock* %40)
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @locks_conflict(%struct.file_lock*, %struct.file_lock*) #1

declare dso_local i32 @trace_leases_conflict(i32, %struct.file_lock*, %struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
