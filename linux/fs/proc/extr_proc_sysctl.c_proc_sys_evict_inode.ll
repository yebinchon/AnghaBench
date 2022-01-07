; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_proc_sys_evict_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_proc_sys_evict_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ctl_table_header = type { i32 }
%struct.TYPE_2__ = type { i32 }

@sysctl_lock = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_sys_evict_inode(%struct.inode* %0, %struct.ctl_table_header* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ctl_table_header*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.ctl_table_header* %1, %struct.ctl_table_header** %4, align 8
  %5 = call i32 @spin_lock(i32* @sysctl_lock)
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call %struct.TYPE_2__* @PROC_I(%struct.inode* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @hlist_del_init_rcu(i32* %8)
  %10 = load %struct.ctl_table_header*, %struct.ctl_table_header** %4, align 8
  %11 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %11, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load %struct.ctl_table_header*, %struct.ctl_table_header** %4, align 8
  %17 = load i32, i32* @rcu, align 4
  %18 = call i32 @kfree_rcu(%struct.ctl_table_header* %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %2
  %20 = call i32 @spin_unlock(i32* @sysctl_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hlist_del_init_rcu(i32*) #1

declare dso_local %struct.TYPE_2__* @PROC_I(%struct.inode*) #1

declare dso_local i32 @kfree_rcu(%struct.ctl_table_header*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
