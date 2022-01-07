; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_remove_inode_dquot_ref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_dquot.c_remove_inode_dquot_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.list_head = type { i32 }
%struct.dquot = type { i32 }

@dq_list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32, %struct.list_head*)* @remove_inode_dquot_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_inode_dquot_ref(%struct.inode* %0, i32 %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.dquot**, align 8
  %8 = alloca %struct.dquot*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.dquot** @i_dquot(%struct.inode* %9)
  store %struct.dquot** %10, %struct.dquot*** %7, align 8
  %11 = load %struct.dquot**, %struct.dquot*** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.dquot*, %struct.dquot** %11, i64 %13
  %15 = load %struct.dquot*, %struct.dquot** %14, align 8
  store %struct.dquot* %15, %struct.dquot** %8, align 8
  %16 = load %struct.dquot*, %struct.dquot** %8, align 8
  %17 = icmp ne %struct.dquot* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %38

19:                                               ; preds = %3
  %20 = load %struct.dquot**, %struct.dquot*** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.dquot*, %struct.dquot** %20, i64 %22
  store %struct.dquot* null, %struct.dquot** %23, align 8
  %24 = load %struct.dquot*, %struct.dquot** %8, align 8
  %25 = getelementptr inbounds %struct.dquot, %struct.dquot* %24, i32 0, i32 0
  %26 = call i64 @list_empty(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = call i32 @spin_lock(i32* @dq_list_lock)
  %30 = load %struct.dquot*, %struct.dquot** %8, align 8
  %31 = getelementptr inbounds %struct.dquot, %struct.dquot* %30, i32 0, i32 0
  %32 = load %struct.list_head*, %struct.list_head** %6, align 8
  %33 = call i32 @list_add(i32* %31, %struct.list_head* %32)
  %34 = call i32 @spin_unlock(i32* @dq_list_lock)
  br label %38

35:                                               ; preds = %19
  %36 = load %struct.dquot*, %struct.dquot** %8, align 8
  %37 = call i32 @dqput(%struct.dquot* %36)
  br label %38

38:                                               ; preds = %18, %35, %28
  ret void
}

declare dso_local %struct.dquot** @i_dquot(%struct.inode*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dqput(%struct.dquot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
