; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_ext4_get_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_ext4_get_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.super_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.super_block*, i32)* @ext4_get_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @ext4_get_bitmap(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.super_block*, %struct.super_block** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %7, i32 %8)
  store %struct.buffer_head* %9, %struct.buffer_head** %6, align 8
  %10 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %11 = icmp ne %struct.buffer_head* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.buffer_head* null, %struct.buffer_head** %3, align 8
  br label %31

17:                                               ; preds = %2
  %18 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %19 = call i32 @bh_uptodate_or_lock(%struct.buffer_head* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %23 = call i64 @bh_submit_read(%struct.buffer_head* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %27 = call i32 @brelse(%struct.buffer_head* %26)
  store %struct.buffer_head* null, %struct.buffer_head** %3, align 8
  br label %31

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %17
  %30 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* %30, %struct.buffer_head** %3, align 8
  br label %31

31:                                               ; preds = %29, %25, %16
  %32 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  ret %struct.buffer_head* %32
}

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bh_uptodate_or_lock(%struct.buffer_head*) #1

declare dso_local i64 @bh_submit_read(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
