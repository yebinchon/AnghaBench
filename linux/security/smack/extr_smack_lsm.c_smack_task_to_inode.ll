; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_task_to_inode.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_task_to_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.inode = type { i32 }
%struct.inode_smack = type { i32, %struct.smack_known* }
%struct.smack_known = type { i32 }

@SMK_INODE_INSTANT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, %struct.inode*)* @smack_task_to_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smack_task_to_inode(%struct.task_struct* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode_smack*, align 8
  %6 = alloca %struct.smack_known*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = call %struct.inode_smack* @smack_inode(%struct.inode* %7)
  store %struct.inode_smack* %8, %struct.inode_smack** %5, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = call %struct.smack_known* @smk_of_task_struct(%struct.task_struct* %9)
  store %struct.smack_known* %10, %struct.smack_known** %6, align 8
  %11 = load %struct.smack_known*, %struct.smack_known** %6, align 8
  %12 = load %struct.inode_smack*, %struct.inode_smack** %5, align 8
  %13 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %12, i32 0, i32 1
  store %struct.smack_known* %11, %struct.smack_known** %13, align 8
  %14 = load i32, i32* @SMK_INODE_INSTANT, align 4
  %15 = load %struct.inode_smack*, %struct.inode_smack** %5, align 8
  %16 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 8
  ret void
}

declare dso_local %struct.inode_smack* @smack_inode(%struct.inode*) #1

declare dso_local %struct.smack_known* @smk_of_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
