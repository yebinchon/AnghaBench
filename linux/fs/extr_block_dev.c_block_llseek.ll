; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_block_dev.c_block_llseek.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_block_dev.c_block_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32)* @block_llseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block_llseek(%struct.file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.inode* @bdev_file_inode(%struct.file* %9)
  store %struct.inode* %10, %struct.inode** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %7, align 8
  %12 = call i32 @inode_lock(%struct.inode* %11)
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = call i32 @i_size_read(%struct.inode* %16)
  %18 = call i32 @fixed_size_llseek(%struct.file* %13, i32 %14, i32 %15, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = call i32 @inode_unlock(%struct.inode* %19)
  %21 = load i32, i32* %8, align 4
  ret i32 %21
}

declare dso_local %struct.inode* @bdev_file_inode(%struct.file*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @fixed_size_llseek(%struct.file*, i32, i32, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
