; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_inode.c_proc_evict_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_inode.c_proc_evict_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.proc_dir_entry = type { i32 }
%struct.ctl_table_header = type { i32 }
%struct.TYPE_2__ = type { %struct.ctl_table_header*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @proc_evict_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proc_evict_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.proc_dir_entry*, align 8
  %4 = alloca %struct.ctl_table_header*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 0
  %7 = call i32 @truncate_inode_pages_final(i32* %6)
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = call i32 @clear_inode(%struct.inode* %8)
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = call %struct.TYPE_2__* @PROC_I(%struct.inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @put_pid(i32 %13)
  %15 = load %struct.inode*, %struct.inode** %2, align 8
  %16 = call %struct.proc_dir_entry* @PDE(%struct.inode* %15)
  store %struct.proc_dir_entry* %16, %struct.proc_dir_entry** %3, align 8
  %17 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %18 = icmp ne %struct.proc_dir_entry* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %3, align 8
  %21 = call i32 @pde_put(%struct.proc_dir_entry* %20)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.inode*, %struct.inode** %2, align 8
  %24 = call %struct.TYPE_2__* @PROC_I(%struct.inode* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.ctl_table_header*, %struct.ctl_table_header** %25, align 8
  store %struct.ctl_table_header* %26, %struct.ctl_table_header** %4, align 8
  %27 = load %struct.ctl_table_header*, %struct.ctl_table_header** %4, align 8
  %28 = icmp ne %struct.ctl_table_header* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load %struct.inode*, %struct.inode** %2, align 8
  %31 = call %struct.TYPE_2__* @PROC_I(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.ctl_table_header*, %struct.ctl_table_header** %32, align 8
  %34 = call i32 @RCU_INIT_POINTER(%struct.ctl_table_header* %33, i32* null)
  %35 = load %struct.inode*, %struct.inode** %2, align 8
  %36 = load %struct.ctl_table_header*, %struct.ctl_table_header** %4, align 8
  %37 = call i32 @proc_sys_evict_inode(%struct.inode* %35, %struct.ctl_table_header* %36)
  br label %38

38:                                               ; preds = %29, %22
  ret void
}

declare dso_local i32 @truncate_inode_pages_final(i32*) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

declare dso_local i32 @put_pid(i32) #1

declare dso_local %struct.TYPE_2__* @PROC_I(%struct.inode*) #1

declare dso_local %struct.proc_dir_entry* @PDE(%struct.inode*) #1

declare dso_local i32 @pde_put(%struct.proc_dir_entry*) #1

declare dso_local i32 @RCU_INIT_POINTER(%struct.ctl_table_header*, i32*) #1

declare dso_local i32 @proc_sys_evict_inode(%struct.inode*, %struct.ctl_table_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
