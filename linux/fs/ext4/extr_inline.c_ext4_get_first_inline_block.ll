; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_get_first_inline_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_get_first_inline_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32 }
%struct.ext4_dir_entry_2 = type { i32 }
%struct.ext4_iloc = type { %struct.buffer_head* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @ext4_get_first_inline_block(%struct.inode* %0, %struct.ext4_dir_entry_2** %1, i32* %2) #0 {
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_dir_entry_2**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ext4_iloc, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ext4_dir_entry_2** %1, %struct.ext4_dir_entry_2*** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = call i32 @ext4_get_inode_loc(%struct.inode* %9, %struct.ext4_iloc* %8)
  %11 = load i32*, i32** %7, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store %struct.buffer_head* null, %struct.buffer_head** %4, align 8
  br label %24

16:                                               ; preds = %3
  %17 = call %struct.TYPE_2__* @ext4_raw_inode(%struct.ext4_iloc* %8)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.ext4_dir_entry_2*
  %21 = load %struct.ext4_dir_entry_2**, %struct.ext4_dir_entry_2*** %6, align 8
  store %struct.ext4_dir_entry_2* %20, %struct.ext4_dir_entry_2** %21, align 8
  %22 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %8, i32 0, i32 0
  %23 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  store %struct.buffer_head* %23, %struct.buffer_head** %4, align 8
  br label %24

24:                                               ; preds = %16, %15
  %25 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  ret %struct.buffer_head* %25
}

declare dso_local i32 @ext4_get_inode_loc(%struct.inode*, %struct.ext4_iloc*) #1

declare dso_local %struct.TYPE_2__* @ext4_raw_inode(%struct.ext4_iloc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
