; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_sysctl_is_seen.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_sysctl_is_seen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_table_header = type { i64, %struct.ctl_table_set* }
%struct.ctl_table_set = type { i32 (%struct.ctl_table_set*)* }

@sysctl_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctl_table_header*)* @sysctl_is_seen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysctl_is_seen(%struct.ctl_table_header* %0) #0 {
  %2 = alloca %struct.ctl_table_header*, align 8
  %3 = alloca %struct.ctl_table_set*, align 8
  %4 = alloca i32, align 4
  store %struct.ctl_table_header* %0, %struct.ctl_table_header** %2, align 8
  %5 = load %struct.ctl_table_header*, %struct.ctl_table_header** %2, align 8
  %6 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %5, i32 0, i32 1
  %7 = load %struct.ctl_table_set*, %struct.ctl_table_set** %6, align 8
  store %struct.ctl_table_set* %7, %struct.ctl_table_set** %3, align 8
  %8 = call i32 @spin_lock(i32* @sysctl_lock)
  %9 = load %struct.ctl_table_header*, %struct.ctl_table_header** %2, align 8
  %10 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %27

14:                                               ; preds = %1
  %15 = load %struct.ctl_table_set*, %struct.ctl_table_set** %3, align 8
  %16 = getelementptr inbounds %struct.ctl_table_set, %struct.ctl_table_set* %15, i32 0, i32 0
  %17 = load i32 (%struct.ctl_table_set*)*, i32 (%struct.ctl_table_set*)** %16, align 8
  %18 = icmp ne i32 (%struct.ctl_table_set*)* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %26

20:                                               ; preds = %14
  %21 = load %struct.ctl_table_set*, %struct.ctl_table_set** %3, align 8
  %22 = getelementptr inbounds %struct.ctl_table_set, %struct.ctl_table_set* %21, i32 0, i32 0
  %23 = load i32 (%struct.ctl_table_set*)*, i32 (%struct.ctl_table_set*)** %22, align 8
  %24 = load %struct.ctl_table_set*, %struct.ctl_table_set** %3, align 8
  %25 = call i32 %23(%struct.ctl_table_set* %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %20, %19
  br label %27

27:                                               ; preds = %26, %13
  %28 = call i32 @spin_unlock(i32* @sysctl_lock)
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
