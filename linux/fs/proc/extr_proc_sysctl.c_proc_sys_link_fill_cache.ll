; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_proc_sys_link_fill_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_proc_sys_link_fill_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dir_context = type { i32 }
%struct.ctl_table_header = type { i32 }
%struct.ctl_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*, %struct.ctl_table_header*, %struct.ctl_table*)* @proc_sys_link_fill_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_sys_link_fill_cache(%struct.file* %0, %struct.dir_context* %1, %struct.ctl_table_header* %2, %struct.ctl_table* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.dir_context*, align 8
  %8 = alloca %struct.ctl_table_header*, align 8
  %9 = alloca %struct.ctl_table*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.dir_context* %1, %struct.dir_context** %7, align 8
  store %struct.ctl_table_header* %2, %struct.ctl_table_header** %8, align 8
  store %struct.ctl_table* %3, %struct.ctl_table** %9, align 8
  store i32 1, i32* %10, align 4
  %11 = load %struct.ctl_table_header*, %struct.ctl_table_header** %8, align 8
  %12 = call %struct.ctl_table_header* @sysctl_head_grab(%struct.ctl_table_header* %11)
  store %struct.ctl_table_header* %12, %struct.ctl_table_header** %8, align 8
  %13 = load %struct.ctl_table_header*, %struct.ctl_table_header** %8, align 8
  %14 = call i64 @IS_ERR(%struct.ctl_table_header* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %31

17:                                               ; preds = %4
  %18 = call i64 @sysctl_follow_link(%struct.ctl_table_header** %8, %struct.ctl_table** %9)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %27

21:                                               ; preds = %17
  %22 = load %struct.file*, %struct.file** %6, align 8
  %23 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %24 = load %struct.ctl_table_header*, %struct.ctl_table_header** %8, align 8
  %25 = load %struct.ctl_table*, %struct.ctl_table** %9, align 8
  %26 = call i32 @proc_sys_fill_cache(%struct.file* %22, %struct.dir_context* %23, %struct.ctl_table_header* %24, %struct.ctl_table* %25)
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %21, %20
  %28 = load %struct.ctl_table_header*, %struct.ctl_table_header** %8, align 8
  %29 = call i32 @sysctl_head_finish(%struct.ctl_table_header* %28)
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %16
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local %struct.ctl_table_header* @sysctl_head_grab(%struct.ctl_table_header*) #1

declare dso_local i64 @IS_ERR(%struct.ctl_table_header*) #1

declare dso_local i64 @sysctl_follow_link(%struct.ctl_table_header**, %struct.ctl_table**) #1

declare dso_local i32 @proc_sys_fill_cache(%struct.file*, %struct.dir_context*, %struct.ctl_table_header*, %struct.ctl_table*) #1

declare dso_local i32 @sysctl_head_finish(%struct.ctl_table_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
