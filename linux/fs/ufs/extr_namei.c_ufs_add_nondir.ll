; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_namei.c_ufs_add_nondir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_namei.c_ufs_add_nondir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*)* @ufs_add_nondir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_add_nondir(%struct.dentry* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %7 = load %struct.dentry*, %struct.dentry** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %5, align 8
  %9 = call i32 @ufs_add_link(%struct.dentry* %7, %struct.inode* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = call i32 @d_instantiate_new(%struct.dentry* %13, %struct.inode* %14)
  store i32 0, i32* %3, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call i32 @inode_dec_link_count(%struct.inode* %17)
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = call i32 @discard_new_inode(%struct.inode* %19)
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %16, %12
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @ufs_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @d_instantiate_new(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @discard_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
