; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_reflink.c_xfs_inode_need_cow.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_reflink.c_xfs_inode_need_cow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32 }
%struct.xfs_bmbt_irec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_inode_need_cow(%struct.xfs_inode* %0, %struct.xfs_bmbt_irec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca %struct.xfs_bmbt_irec*, align 8
  %7 = alloca i32*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %5, align 8
  store %struct.xfs_bmbt_irec* %1, %struct.xfs_bmbt_irec** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %9 = call i64 @xfs_is_always_cow_inode(%struct.xfs_inode* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %6, align 8
  %13 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @isnullstartblock(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = load i32*, i32** %7, align 8
  store i32 1, i32* %18, align 4
  store i32 0, i32* %4, align 4
  br label %24

19:                                               ; preds = %11, %3
  %20 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %21 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @xfs_reflink_trim_around_shared(%struct.xfs_inode* %20, %struct.xfs_bmbt_irec* %21, i32* %22)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %19, %17
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i64 @xfs_is_always_cow_inode(%struct.xfs_inode*) #1

declare dso_local i32 @isnullstartblock(i32) #1

declare dso_local i32 @xfs_reflink_trim_around_shared(%struct.xfs_inode*, %struct.xfs_bmbt_irec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
