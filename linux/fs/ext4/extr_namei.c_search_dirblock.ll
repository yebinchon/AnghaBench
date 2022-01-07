; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_search_dirblock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_search_dirblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ext4_filename = type { i32 }
%struct.ext4_dir_entry_2 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer_head*, %struct.inode*, %struct.ext4_filename*, i32, %struct.ext4_dir_entry_2**)* @search_dirblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @search_dirblock(%struct.buffer_head* %0, %struct.inode* %1, %struct.ext4_filename* %2, i32 %3, %struct.ext4_dir_entry_2** %4) #0 {
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ext4_filename*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext4_dir_entry_2**, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.ext4_filename* %2, %struct.ext4_filename** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.ext4_dir_entry_2** %4, %struct.ext4_dir_entry_2*** %10, align 8
  %11 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %12 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %13 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = load %struct.ext4_filename*, %struct.ext4_filename** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.ext4_dir_entry_2**, %struct.ext4_dir_entry_2*** %10, align 8
  %24 = call i32 @ext4_search_dir(%struct.buffer_head* %11, i32 %14, i32 %19, %struct.inode* %20, %struct.ext4_filename* %21, i32 %22, %struct.ext4_dir_entry_2** %23)
  ret i32 %24
}

declare dso_local i32 @ext4_search_dir(%struct.buffer_head*, i32, i32, %struct.inode*, %struct.ext4_filename*, i32, %struct.ext4_dir_entry_2**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
