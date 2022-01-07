; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_update_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_iext_tree.c_xfs_iext_update_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32 }
%struct.xfs_iext_cursor = type { i64, i32 }
%struct.xfs_bmbt_irec = type { i64 }
%struct.xfs_ifork = type { i32 }

@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_iext_update_extent(%struct.xfs_inode* %0, i32 %1, %struct.xfs_iext_cursor* %2, %struct.xfs_bmbt_irec* %3) #0 {
  %5 = alloca %struct.xfs_inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_iext_cursor*, align 8
  %8 = alloca %struct.xfs_bmbt_irec*, align 8
  %9 = alloca %struct.xfs_ifork*, align 8
  %10 = alloca %struct.xfs_bmbt_irec, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.xfs_iext_cursor* %2, %struct.xfs_iext_cursor** %7, align 8
  store %struct.xfs_bmbt_irec* %3, %struct.xfs_bmbt_irec** %8, align 8
  %11 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.xfs_ifork* @xfs_iext_state_to_fork(%struct.xfs_inode* %11, i32 %12)
  store %struct.xfs_ifork* %13, %struct.xfs_ifork** %9, align 8
  %14 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %15 = call i32 @xfs_iext_inc_seq(%struct.xfs_ifork* %14)
  %16 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %7, align 8
  %17 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %4
  %21 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %7, align 8
  %22 = call i32 @cur_rec(%struct.xfs_iext_cursor* %21)
  %23 = call i32 @xfs_iext_get(%struct.xfs_bmbt_irec* %10, i32 %22)
  %24 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %8, align 8
  %25 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %10, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %20
  %31 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %32 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %10, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %8, align 8
  %35 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %7, align 8
  %38 = getelementptr inbounds %struct.xfs_iext_cursor, %struct.xfs_iext_cursor* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @xfs_iext_update_node(%struct.xfs_ifork* %31, i64 %33, i64 %36, i32 1, i32 %39)
  br label %41

41:                                               ; preds = %30, %20
  br label %42

42:                                               ; preds = %41, %4
  %43 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %44 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %7, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @_RET_IP_, align 4
  %47 = call i32 @trace_xfs_bmap_pre_update(%struct.xfs_inode* %43, %struct.xfs_iext_cursor* %44, i32 %45, i32 %46)
  %48 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %7, align 8
  %49 = call i32 @cur_rec(%struct.xfs_iext_cursor* %48)
  %50 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %8, align 8
  %51 = call i32 @xfs_iext_set(i32 %49, %struct.xfs_bmbt_irec* %50)
  %52 = load %struct.xfs_inode*, %struct.xfs_inode** %5, align 8
  %53 = load %struct.xfs_iext_cursor*, %struct.xfs_iext_cursor** %7, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @_RET_IP_, align 4
  %56 = call i32 @trace_xfs_bmap_post_update(%struct.xfs_inode* %52, %struct.xfs_iext_cursor* %53, i32 %54, i32 %55)
  ret void
}

declare dso_local %struct.xfs_ifork* @xfs_iext_state_to_fork(%struct.xfs_inode*, i32) #1

declare dso_local i32 @xfs_iext_inc_seq(%struct.xfs_ifork*) #1

declare dso_local i32 @xfs_iext_get(%struct.xfs_bmbt_irec*, i32) #1

declare dso_local i32 @cur_rec(%struct.xfs_iext_cursor*) #1

declare dso_local i32 @xfs_iext_update_node(%struct.xfs_ifork*, i64, i64, i32, i32) #1

declare dso_local i32 @trace_xfs_bmap_pre_update(%struct.xfs_inode*, %struct.xfs_iext_cursor*, i32, i32) #1

declare dso_local i32 @xfs_iext_set(i32, %struct.xfs_bmbt_irec*) #1

declare dso_local i32 @trace_xfs_bmap_post_update(%struct.xfs_inode*, %struct.xfs_iext_cursor*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
