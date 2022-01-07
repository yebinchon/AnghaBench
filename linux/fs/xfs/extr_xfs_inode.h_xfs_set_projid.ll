; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.h_xfs_set_projid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.h_xfs_set_projid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_inode*, i32)* @xfs_set_projid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_set_projid(%struct.xfs_inode* %0, i32 %1) #0 {
  %3 = alloca %struct.xfs_inode*, align 8
  %4 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = ashr i32 %5, 16
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to i8*
  %9 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %10 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i8* %8, i8** %11, align 8
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 65535
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %17 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i8* %15, i8** %18, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
