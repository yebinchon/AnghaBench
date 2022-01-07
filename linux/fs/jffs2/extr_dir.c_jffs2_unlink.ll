; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_dir.c_jffs2_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_dir.c_jffs2_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.dentry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.jffs2_sb_info = type { i32 }
%struct.jffs2_inode_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @jffs2_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.jffs2_sb_info*, align 8
  %6 = alloca %struct.jffs2_inode_info*, align 8
  %7 = alloca %struct.jffs2_inode_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32 %12)
  store %struct.jffs2_sb_info* %13, %struct.jffs2_sb_info** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = call %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode* %14)
  store %struct.jffs2_inode_info* %15, %struct.jffs2_inode_info** %6, align 8
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = call %struct.inode* @d_inode(%struct.dentry* %16)
  %18 = call %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode* %17)
  store %struct.jffs2_inode_info* %18, %struct.jffs2_inode_info** %7, align 8
  %19 = call i32 (...) @JFFS2_NOW()
  store i32 %19, i32* %9, align 4
  %20 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %21 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %22 = load %struct.dentry*, %struct.dentry** %4, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dentry*, %struct.dentry** %4, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @jffs2_do_unlink(%struct.jffs2_sb_info* %20, %struct.jffs2_inode_info* %21, i32 %25, i32 %29, %struct.jffs2_inode_info* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %7, align 8
  %34 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %2
  %38 = load %struct.dentry*, %struct.dentry** %4, align 8
  %39 = call %struct.inode* @d_inode(%struct.dentry* %38)
  %40 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %7, align 8
  %41 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @set_nlink(%struct.inode* %39, i32 %44)
  br label %46

46:                                               ; preds = %37, %2
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @ITIME(i32 %50)
  %52 = load %struct.inode*, %struct.inode** %3, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.inode*, %struct.inode** %3, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 1
  store i32 %51, i32* %55, align 4
  br label %56

56:                                               ; preds = %49, %46
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32) #1

declare dso_local %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @JFFS2_NOW(...) #1

declare dso_local i32 @jffs2_do_unlink(%struct.jffs2_sb_info*, %struct.jffs2_inode_info*, i32, i32, %struct.jffs2_inode_info*, i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @ITIME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
