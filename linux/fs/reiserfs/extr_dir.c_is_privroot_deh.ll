; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_dir.c_is_privroot_deh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_dir.c_is_privroot_deh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.reiserfs_de_head = type { i64 }
%struct.dentry = type { i32 }
%struct.TYPE_3__ = type { %struct.dentry* }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.reiserfs_de_head*)* @is_privroot_deh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_privroot_deh(%struct.inode* %0, %struct.reiserfs_de_head* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.reiserfs_de_head*, align 8
  %5 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.reiserfs_de_head* %1, %struct.reiserfs_de_head** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.TYPE_3__* @REISERFS_SB(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %11, %struct.dentry** %5, align 8
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = call i64 @d_really_is_positive(%struct.dentry* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %4, align 8
  %17 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.dentry*, %struct.dentry** %5, align 8
  %20 = call i32 @d_inode(%struct.dentry* %19)
  %21 = call %struct.TYPE_4__* @INODE_PKEY(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %18, %23
  br label %25

25:                                               ; preds = %15, %2
  %26 = phi i1 [ false, %2 ], [ %24, %15 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

declare dso_local %struct.TYPE_3__* @REISERFS_SB(i32) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local %struct.TYPE_4__* @INODE_PKEY(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
