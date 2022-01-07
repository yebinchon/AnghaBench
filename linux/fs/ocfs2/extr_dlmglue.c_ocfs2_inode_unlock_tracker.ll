; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_inode_unlock_tracker.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dlmglue.c_ocfs2_inode_unlock_tracker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_lock_holder = type { i32 }
%struct.ocfs2_lock_res = type { i32 }
%struct.TYPE_2__ = type { %struct.ocfs2_lock_res }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_inode_unlock_tracker(%struct.inode* %0, i32 %1, %struct.ocfs2_lock_holder* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_lock_holder*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_lock_res*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ocfs2_lock_holder* %2, %struct.ocfs2_lock_holder** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ocfs2_lock_res* %12, %struct.ocfs2_lock_res** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %4
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = load %struct.ocfs2_lock_holder*, %struct.ocfs2_lock_holder** %7, align 8
  %18 = getelementptr inbounds %struct.ocfs2_lock_holder, %struct.ocfs2_lock_holder* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ocfs2_inode_unlock(%struct.inode* %16, i32 %19)
  %21 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %9, align 8
  %22 = load %struct.ocfs2_lock_holder*, %struct.ocfs2_lock_holder** %7, align 8
  %23 = call i32 @ocfs2_remove_holder(%struct.ocfs2_lock_res* %21, %struct.ocfs2_lock_holder* %22)
  br label %24

24:                                               ; preds = %15, %4
  ret void
}

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_remove_holder(%struct.ocfs2_lock_res*, %struct.ocfs2_lock_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
