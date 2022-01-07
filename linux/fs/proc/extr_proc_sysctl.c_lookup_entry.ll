; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_lookup_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_lookup_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_table = type { i32 }
%struct.ctl_table_header = type { i32 }
%struct.ctl_dir = type { i32 }

@sysctl_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ctl_table* (%struct.ctl_table_header**, %struct.ctl_dir*, i8*, i32)* @lookup_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ctl_table* @lookup_entry(%struct.ctl_table_header** %0, %struct.ctl_dir* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.ctl_table_header**, align 8
  %6 = alloca %struct.ctl_dir*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ctl_table_header*, align 8
  %10 = alloca %struct.ctl_table*, align 8
  store %struct.ctl_table_header** %0, %struct.ctl_table_header*** %5, align 8
  store %struct.ctl_dir* %1, %struct.ctl_dir** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = call i32 @spin_lock(i32* @sysctl_lock)
  %12 = load %struct.ctl_dir*, %struct.ctl_dir** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.ctl_table* @find_entry(%struct.ctl_table_header** %9, %struct.ctl_dir* %12, i8* %13, i32 %14)
  store %struct.ctl_table* %15, %struct.ctl_table** %10, align 8
  %16 = load %struct.ctl_table*, %struct.ctl_table** %10, align 8
  %17 = icmp ne %struct.ctl_table* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load %struct.ctl_table_header*, %struct.ctl_table_header** %9, align 8
  %20 = call i64 @use_table(%struct.ctl_table_header* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.ctl_table_header*, %struct.ctl_table_header** %9, align 8
  %24 = load %struct.ctl_table_header**, %struct.ctl_table_header*** %5, align 8
  store %struct.ctl_table_header* %23, %struct.ctl_table_header** %24, align 8
  br label %26

25:                                               ; preds = %18, %4
  store %struct.ctl_table* null, %struct.ctl_table** %10, align 8
  br label %26

26:                                               ; preds = %25, %22
  %27 = call i32 @spin_unlock(i32* @sysctl_lock)
  %28 = load %struct.ctl_table*, %struct.ctl_table** %10, align 8
  ret %struct.ctl_table* %28
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.ctl_table* @find_entry(%struct.ctl_table_header**, %struct.ctl_dir*, i8*, i32) #1

declare dso_local i64 @use_table(%struct.ctl_table_header*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
