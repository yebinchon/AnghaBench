; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_namei.c_ext2_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_namei.c_ext2_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @ext2_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = call %struct.inode* @d_inode(%struct.dentry* %10)
  store %struct.inode* %11, %struct.inode** %8, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = call i32 @dquot_initialize(%struct.inode* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %42

18:                                               ; preds = %3
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = call i32 @current_time(%struct.inode* %19)
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.inode*, %struct.inode** %8, align 8
  %24 = call i32 @inode_inc_link_count(%struct.inode* %23)
  %25 = load %struct.inode*, %struct.inode** %8, align 8
  %26 = call i32 @ihold(%struct.inode* %25)
  %27 = load %struct.dentry*, %struct.dentry** %7, align 8
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = call i32 @ext2_add_link(%struct.dentry* %27, %struct.inode* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %18
  %33 = load %struct.dentry*, %struct.dentry** %7, align 8
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = call i32 @d_instantiate(%struct.dentry* %33, %struct.inode* %34)
  store i32 0, i32* %4, align 4
  br label %42

36:                                               ; preds = %18
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = call i32 @inode_dec_link_count(%struct.inode* %37)
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = call i32 @iput(%struct.inode* %39)
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %36, %32, %16
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @inode_inc_link_count(%struct.inode*) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i32 @ext2_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
