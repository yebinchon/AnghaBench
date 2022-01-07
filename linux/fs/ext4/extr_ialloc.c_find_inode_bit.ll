; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_ialloc.c_find_inode_bit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_ialloc.c_find_inode_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, %struct.buffer_head*, i64*)* @find_inode_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_inode_bit(%struct.super_block* %0, i32 %1, %struct.buffer_head* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i64*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i64* %3, i64** %9, align 8
  br label %10

10:                                               ; preds = %50, %4
  %11 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %12 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i64*
  %15 = load %struct.super_block*, %struct.super_block** %6, align 8
  %16 = call i64 @EXT4_INODES_PER_GROUP(%struct.super_block* %15)
  %17 = load i64*, i64** %9, align 8
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @ext4_find_next_zero_bit(i64* %14, i64 %16, i64 %18)
  %20 = load i64*, i64** %9, align 8
  store i64 %19, i64* %20, align 8
  %21 = load i64*, i64** %9, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.super_block*, %struct.super_block** %6, align 8
  %24 = call i64 @EXT4_INODES_PER_GROUP(%struct.super_block* %23)
  %25 = icmp uge i64 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  br label %53

27:                                               ; preds = %10
  %28 = load %struct.super_block*, %struct.super_block** %6, align 8
  %29 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %52

33:                                               ; preds = %27
  %34 = load %struct.super_block*, %struct.super_block** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i64*, i64** %9, align 8
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @recently_deleted(%struct.super_block* %34, i32 %35, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = load i64*, i64** %9, align 8
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, 1
  %44 = load i64*, i64** %9, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i64*, i64** %9, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.super_block*, %struct.super_block** %6, align 8
  %48 = call i64 @EXT4_INODES_PER_GROUP(%struct.super_block* %47)
  %49 = icmp ult i64 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %10

51:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %53

52:                                               ; preds = %33, %27
  store i32 1, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %51, %26
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @ext4_find_next_zero_bit(i64*, i64, i64) #1

declare dso_local i64 @EXT4_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local %struct.TYPE_2__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i64 @recently_deleted(%struct.super_block*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
