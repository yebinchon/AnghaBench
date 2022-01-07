; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_file.c_ext4_overwrite_io.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_file.c_ext4_overwrite_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_map_blocks = type { i32, i32, i64 }

@EXT4_MAP_MAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i64)* @ext4_overwrite_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_overwrite_io(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ext4_map_blocks, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = add nsw i64 %15, %16
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = call i64 @i_size_read(%struct.inode* %18)
  %20 = icmp sgt i64 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

22:                                               ; preds = %3
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = ashr i64 %23, %25
  %27 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %8, i32 0, i32 2
  store i64 %26, i64* %27, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @EXT4_MAX_BLOCKS(i64 %28, i64 %29, i32 %30)
  %32 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %8, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %11, align 4
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = call i32 @ext4_map_blocks(i32* null, %struct.inode* %35, %struct.ext4_map_blocks* %8, i32 0)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %22
  %41 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %8, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @EXT4_MAP_MAPPED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %40, %22
  %47 = phi i1 [ false, %22 ], [ %45, %40 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %46, %21
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @EXT4_MAX_BLOCKS(i64, i64, i32) #1

declare dso_local i32 @ext4_map_blocks(i32*, %struct.inode*, %struct.ext4_map_blocks*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
