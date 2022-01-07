; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_stree.c_maybe_indirect_to_direct.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_stree.c_maybe_indirect_to_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32 }
%struct.inode = type { i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.page = type { i32 }
%struct.treepath = type { i32 }
%struct.cpu_key = type { i32 }
%struct.TYPE_2__ = type { i32 }

@i_nopack_mask = common dso_local global i32 0, align 4
@M_SKIP_BALANCING = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reiserfs_transaction_handle*, %struct.inode*, %struct.page*, %struct.treepath*, %struct.cpu_key*, i32, i8*)* @maybe_indirect_to_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maybe_indirect_to_direct(%struct.reiserfs_transaction_handle* %0, %struct.inode* %1, %struct.page* %2, %struct.treepath* %3, %struct.cpu_key* %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.reiserfs_transaction_handle*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca %struct.treepath*, align 8
  %13 = alloca %struct.cpu_key*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.super_block*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %9, align 8
  store %struct.inode* %1, %struct.inode** %10, align 8
  store %struct.page* %2, %struct.page** %11, align 8
  store %struct.treepath* %3, %struct.treepath** %12, align 8
  store %struct.cpu_key* %4, %struct.cpu_key** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %19 = load %struct.inode*, %struct.inode** %10, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 2
  %21 = load %struct.super_block*, %struct.super_block** %20, align 8
  store %struct.super_block* %21, %struct.super_block** %16, align 8
  %22 = load %struct.super_block*, %struct.super_block** %16, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %17, align 4
  %25 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %9, align 8
  %26 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.inode*, %struct.inode** %10, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUG_ON(i32 %37)
  %39 = load %struct.inode*, %struct.inode** %10, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 1
  %41 = call i32 @atomic_read(i32* %40)
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %58, label %43

43:                                               ; preds = %7
  %44 = load %struct.inode*, %struct.inode** %10, align 8
  %45 = call i32 @tail_has_to_be_packed(%struct.inode* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load %struct.page*, %struct.page** %11, align 8
  %49 = icmp ne %struct.page* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load %struct.inode*, %struct.inode** %10, align 8
  %52 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @i_nopack_mask, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %50, %47, %43, %7
  %59 = load i8, i8* @M_SKIP_BALANCING, align 1
  %60 = load i8*, i8** %15, align 8
  store i8 %59, i8* %60, align 1
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %17, align 4
  %64 = sub nsw i32 %63, 1
  %65 = and i32 %62, %64
  %66 = sub nsw i32 %61, %65
  store i32 %66, i32* %18, align 4
  %67 = load %struct.treepath*, %struct.treepath** %12, align 8
  %68 = call i32 @pathrelse(%struct.treepath* %67)
  %69 = load i32, i32* %18, align 4
  store i32 %69, i32* %8, align 4
  br label %79

70:                                               ; preds = %50
  %71 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %9, align 8
  %72 = load %struct.inode*, %struct.inode** %10, align 8
  %73 = load %struct.page*, %struct.page** %11, align 8
  %74 = load %struct.treepath*, %struct.treepath** %12, align 8
  %75 = load %struct.cpu_key*, %struct.cpu_key** %13, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load i8*, i8** %15, align 8
  %78 = call i32 @indirect2direct(%struct.reiserfs_transaction_handle* %71, %struct.inode* %72, %struct.page* %73, %struct.treepath* %74, %struct.cpu_key* %75, i32 %76, i8* %77)
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %70, %58
  %80 = load i32, i32* %8, align 4
  ret i32 %80
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @tail_has_to_be_packed(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @REISERFS_I(%struct.inode*) #1

declare dso_local i32 @pathrelse(%struct.treepath*) #1

declare dso_local i32 @indirect2direct(%struct.reiserfs_transaction_handle*, %struct.inode*, %struct.page*, %struct.treepath*, %struct.cpu_key*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
