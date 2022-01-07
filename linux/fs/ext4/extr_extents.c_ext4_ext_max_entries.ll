; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_max_entries.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_max_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @ext4_ext_max_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_max_entries(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call i32 @ext_depth(%struct.inode* %7)
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = call i32 @ext4_ext_space_root(%struct.inode* %14, i32 1)
  store i32 %15, i32* %5, align 4
  br label %19

16:                                               ; preds = %10
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = call i32 @ext4_ext_space_root_idx(%struct.inode* %17, i32 1)
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %16, %13
  br label %30

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = call i32 @ext4_ext_space_block(%struct.inode* %24, i32 1)
  store i32 %25, i32* %5, align 4
  br label %29

26:                                               ; preds = %20
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = call i32 @ext4_ext_space_block_idx(%struct.inode* %27, i32 1)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %26, %23
  br label %30

30:                                               ; preds = %29, %19
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @ext_depth(%struct.inode*) #1

declare dso_local i32 @ext4_ext_space_root(%struct.inode*, i32) #1

declare dso_local i32 @ext4_ext_space_root_idx(%struct.inode*, i32) #1

declare dso_local i32 @ext4_ext_space_block(%struct.inode*, i32) #1

declare dso_local i32 @ext4_ext_space_block_idx(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
