; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_balloc.c_ext4_read_block_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_balloc.c_ext4_read_block_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.super_block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @ext4_read_block_bitmap(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.buffer_head* @ext4_read_block_bitmap_nowait(%struct.super_block* %8, i32 %9)
  store %struct.buffer_head* %10, %struct.buffer_head** %6, align 8
  %11 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %12 = call i64 @IS_ERR(%struct.buffer_head* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* %15, %struct.buffer_head** %3, align 8
  br label %30

16:                                               ; preds = %2
  %17 = load %struct.super_block*, %struct.super_block** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %20 = call i32 @ext4_wait_block_bitmap(%struct.super_block* %17, i32 %18, %struct.buffer_head* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %25 = call i32 @put_bh(%struct.buffer_head* %24)
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.buffer_head* @ERR_PTR(i32 %26)
  store %struct.buffer_head* %27, %struct.buffer_head** %3, align 8
  br label %30

28:                                               ; preds = %16
  %29 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* %29, %struct.buffer_head** %3, align 8
  br label %30

30:                                               ; preds = %28, %23, %14
  %31 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  ret %struct.buffer_head* %31
}

declare dso_local %struct.buffer_head* @ext4_read_block_bitmap_nowait(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @ext4_wait_block_bitmap(%struct.super_block*, i32, %struct.buffer_head*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
