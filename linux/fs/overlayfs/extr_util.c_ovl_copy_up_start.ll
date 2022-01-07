; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_util.c_ovl_copy_up_start.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_util.c_ovl_copy_up_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovl_copy_up_start(%struct.dentry* %0, i32 %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = call %struct.inode* @d_inode(%struct.dentry* %7)
  store %struct.inode* %8, %struct.inode** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = call i32 @ovl_inode_lock(%struct.inode* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load %struct.dentry*, %struct.dentry** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @ovl_already_copied_up_locked(%struct.dentry* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  store i32 1, i32* %6, align 4
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = call i32 @ovl_inode_unlock(%struct.inode* %19)
  br label %21

21:                                               ; preds = %18, %13, %2
  %22 = load i32, i32* %6, align 4
  ret i32 %22
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @ovl_inode_lock(%struct.inode*) #1

declare dso_local i64 @ovl_already_copied_up_locked(%struct.dentry*, i32) #1

declare dso_local i32 @ovl_inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
