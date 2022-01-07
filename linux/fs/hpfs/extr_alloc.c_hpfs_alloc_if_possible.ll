; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_alloc.c_hpfs_alloc_if_possible.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_alloc.c_hpfs_alloc_if_possible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.quad_buffer_head = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"aip\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpfs_alloc_if_possible(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.quad_buffer_head, align 4
  %7 = alloca i32*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = ashr i32 %9, 14
  %11 = call i32* @hpfs_map_bitmap(%struct.super_block* %8, i32 %10, %struct.quad_buffer_head* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %49

14:                                               ; preds = %2
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 16383
  %18 = ashr i32 %17, 5
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %15, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 31
  %25 = shl i32 1, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %14
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 31
  %31 = shl i32 1, %30
  %32 = xor i32 %31, -1
  %33 = call i32 @cpu_to_le32(i32 %32)
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, 16383
  %37 = ashr i32 %36, 5
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, %33
  store i32 %41, i32* %39, align 4
  %42 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %6)
  %43 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %6)
  %44 = load %struct.super_block*, %struct.super_block** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @hpfs_claim_alloc(%struct.super_block* %44, i32 %45)
  store i32 1, i32* %3, align 4
  br label %50

47:                                               ; preds = %14
  %48 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %6)
  br label %49

49:                                               ; preds = %47, %13
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %28
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32* @hpfs_map_bitmap(%struct.super_block*, i32, %struct.quad_buffer_head*, i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_claim_alloc(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
