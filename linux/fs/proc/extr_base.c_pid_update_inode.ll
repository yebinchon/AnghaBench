; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_pid_update_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_pid_update_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.inode = type { i32, i32, i32 }

@S_ISUID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pid_update_inode(%struct.task_struct* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %6 = load %struct.inode*, %struct.inode** %4, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 2
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 1
  %13 = call i32 @task_dump_owner(%struct.task_struct* %5, i32 %8, i32* %10, i32* %12)
  %14 = load i32, i32* @S_ISUID, align 4
  %15 = load i32, i32* @S_ISGID, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call i32 @security_task_to_inode(%struct.task_struct* %22, %struct.inode* %23)
  ret void
}

declare dso_local i32 @task_dump_owner(%struct.task_struct*, i32, i32*, i32*) #1

declare dso_local i32 @security_task_to_inode(%struct.task_struct*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
