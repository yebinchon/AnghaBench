; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_stree.c_reiserfs_delete_object.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_stree.c_reiserfs_delete_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32, i32 }
%struct.inode = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_delete_object(%struct.reiserfs_transaction_handle* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reiserfs_transaction_handle*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %7 = load %struct.inode*, %struct.inode** %5, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %4, align 8
  %10 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %4, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call i32 @reiserfs_do_truncate(%struct.reiserfs_transaction_handle* %16, %struct.inode* %17, i32* null, i32 0)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %30

23:                                               ; preds = %2
  %24 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %4, align 8
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = call i32 @INODE_PKEY(%struct.inode* %26)
  %28 = call i32 @reiserfs_delete_solid_item(%struct.reiserfs_transaction_handle* %24, %struct.inode* %25, i32 %27)
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %23, %21
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @reiserfs_do_truncate(%struct.reiserfs_transaction_handle*, %struct.inode*, i32*, i32) #1

declare dso_local i32 @reiserfs_delete_solid_item(%struct.reiserfs_transaction_handle*, %struct.inode*, i32) #1

declare dso_local i32 @INODE_PKEY(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
