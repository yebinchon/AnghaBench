; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_proc_sys_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_proc_sys_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.ctl_table_header = type { i32 }
%struct.ctl_table = type { i64 }
%struct.TYPE_2__ = type { %struct.ctl_table* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @proc_sys_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_sys_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.ctl_table_header*, align 8
  %7 = alloca %struct.ctl_table*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.ctl_table_header* @grab_header(%struct.inode* %8)
  store %struct.ctl_table_header* %9, %struct.ctl_table_header** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.TYPE_2__* @PROC_I(%struct.inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.ctl_table*, %struct.ctl_table** %12, align 8
  store %struct.ctl_table* %13, %struct.ctl_table** %7, align 8
  %14 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %15 = call i64 @IS_ERR(%struct.ctl_table_header* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %19 = call i32 @PTR_ERR(%struct.ctl_table_header* %18)
  store i32 %19, i32* %3, align 4
  br label %35

20:                                               ; preds = %2
  %21 = load %struct.ctl_table*, %struct.ctl_table** %7, align 8
  %22 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.ctl_table*, %struct.ctl_table** %7, align 8
  %27 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @proc_sys_poll_event(i64 %28)
  %30 = load %struct.file*, %struct.file** %5, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %25, %20
  %33 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %34 = call i32 @sysctl_head_finish(%struct.ctl_table_header* %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %17
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.ctl_table_header* @grab_header(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @PROC_I(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.ctl_table_header*) #1

declare dso_local i32 @PTR_ERR(%struct.ctl_table_header*) #1

declare dso_local i32 @proc_sys_poll_event(i64) #1

declare dso_local i32 @sysctl_head_finish(%struct.ctl_table_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
