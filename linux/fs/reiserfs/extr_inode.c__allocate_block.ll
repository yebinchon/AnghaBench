; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c__allocate_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_inode.c__allocate_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32 }
%struct.inode = type { i32 }
%struct.treepath = type { i32 }

@GET_BLOCK_NO_IMUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reiserfs_transaction_handle*, i32, %struct.inode*, i32*, %struct.treepath*, i32)* @_allocate_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_allocate_block(%struct.reiserfs_transaction_handle* %0, i32 %1, %struct.inode* %2, i32* %3, %struct.treepath* %4, i32 %5) #0 {
  %7 = alloca %struct.reiserfs_transaction_handle*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.treepath*, align 8
  %12 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.inode* %2, %struct.inode** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.treepath* %4, %struct.treepath** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %7, align 8
  %14 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %7, align 8
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load %struct.treepath*, %struct.treepath** %11, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @reiserfs_new_unf_blocknrs(%struct.reiserfs_transaction_handle* %20, %struct.inode* %21, i32* %22, %struct.treepath* %23, i32 %24)
  ret i32 %25
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @reiserfs_new_unf_blocknrs(%struct.reiserfs_transaction_handle*, %struct.inode*, i32*, %struct.treepath*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
