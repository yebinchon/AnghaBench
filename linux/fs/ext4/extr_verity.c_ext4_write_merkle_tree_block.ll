; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_verity.c_ext4_write_merkle_tree_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_verity.c_ext4_write_merkle_tree_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i32, i32)* @ext4_write_merkle_tree_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_write_merkle_tree_block(%struct.inode* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call i64 @ext4_verity_metadata_pos(%struct.inode* %10)
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = shl i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %11, %15
  store i64 %16, i64* %9, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = shl i32 1, %19
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @pagecache_write(%struct.inode* %17, i8* %18, i32 %20, i64 %21)
  ret i32 %22
}

declare dso_local i64 @ext4_verity_metadata_pos(%struct.inode*) #1

declare dso_local i32 @pagecache_write(%struct.inode*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
