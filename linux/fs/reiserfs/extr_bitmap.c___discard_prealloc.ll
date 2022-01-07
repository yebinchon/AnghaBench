; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_bitmap.c___discard_prealloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_bitmap.c___discard_prealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32, i32 }
%struct.reiserfs_inode_info = type { i64, i64, i32, %struct.inode }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.reiserfs_transaction_handle*, %struct.reiserfs_inode_info*)* @__discard_prealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__discard_prealloc(%struct.reiserfs_transaction_handle* %0, %struct.reiserfs_inode_info* %1) #0 {
  %3 = alloca %struct.reiserfs_transaction_handle*, align 8
  %4 = alloca %struct.reiserfs_inode_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %3, align 8
  store %struct.reiserfs_inode_info* %1, %struct.reiserfs_inode_info** %4, align 8
  %9 = load %struct.reiserfs_inode_info*, %struct.reiserfs_inode_info** %4, align 8
  %10 = getelementptr inbounds %struct.reiserfs_inode_info, %struct.reiserfs_inode_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.reiserfs_inode_info*, %struct.reiserfs_inode_info** %4, align 8
  %13 = getelementptr inbounds %struct.reiserfs_inode_info, %struct.reiserfs_inode_info* %12, i32 0, i32 3
  store %struct.inode* %13, %struct.inode** %7, align 8
  %14 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %3, align 8
  %15 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  br label %21

21:                                               ; preds = %26, %2
  %22 = load %struct.reiserfs_inode_info*, %struct.reiserfs_inode_info** %4, align 8
  %23 = getelementptr inbounds %struct.reiserfs_inode_info, %struct.reiserfs_inode_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load %struct.reiserfs_inode_info*, %struct.reiserfs_inode_info** %4, align 8
  %28 = getelementptr inbounds %struct.reiserfs_inode_info, %struct.reiserfs_inode_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %28, align 8
  %31 = trunc i64 %29 to i32
  store i32 %31, i32* %8, align 4
  %32 = load %struct.reiserfs_inode_info*, %struct.reiserfs_inode_info** %4, align 8
  %33 = getelementptr inbounds %struct.reiserfs_inode_info, %struct.reiserfs_inode_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %3, align 8
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @reiserfs_free_prealloc_block(%struct.reiserfs_transaction_handle* %36, %struct.inode* %37, i32 %38)
  store i32 1, i32* %6, align 4
  br label %21

40:                                               ; preds = %21
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %3, align 8
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %44, %struct.inode* %45)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.reiserfs_inode_info*, %struct.reiserfs_inode_info** %4, align 8
  %50 = getelementptr inbounds %struct.reiserfs_inode_info, %struct.reiserfs_inode_info* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.reiserfs_inode_info*, %struct.reiserfs_inode_info** %4, align 8
  %52 = getelementptr inbounds %struct.reiserfs_inode_info, %struct.reiserfs_inode_info* %51, i32 0, i32 2
  %53 = call i32 @list_del_init(i32* %52)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @reiserfs_free_prealloc_block(%struct.reiserfs_transaction_handle*, %struct.inode*, i32) #1

declare dso_local i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
