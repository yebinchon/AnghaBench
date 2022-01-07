; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_map.c_hpfs_load_bitmap_directory.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_map.c_hpfs_load_bitmap_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"can't allocate memory for bitmap directory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @hpfs_load_bitmap_directory(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 2097152
  %16 = sub nsw i32 %15, 1
  %17 = ashr i32 %16, 21
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32* @kmalloc_array(i32 %18, i32 512, i32 %19)
  store i32* %20, i32** %9, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %61

24:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %56, %24
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %25
  %30 = load %struct.super_block*, %struct.super_block** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sub nsw i32 %37, 1
  %39 = call i32* @hpfs_map_sector(%struct.super_block* %30, i64 %34, %struct.buffer_head** %6, i32 %38)
  store i32* %39, i32** %10, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %29
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @kfree(i32* %43)
  store i32* null, i32** %3, align 8
  br label %61

45:                                               ; preds = %29
  %46 = load i32*, i32** %9, align 8
  %47 = bitcast i32* %46 to i8*
  %48 = load i32, i32* %8, align 4
  %49 = mul nsw i32 512, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @memcpy(i8* %51, i32* %52, i32 512)
  %54 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %55 = call i32 @brelse(%struct.buffer_head* %54)
  br label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %25

59:                                               ; preds = %25
  %60 = load i32*, i32** %9, align 8
  store i32* %60, i32** %3, align 8
  br label %61

61:                                               ; preds = %59, %42, %22
  %62 = load i32*, i32** %3, align 8
  ret i32* %62
}

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32* @hpfs_map_sector(%struct.super_block*, i64, %struct.buffer_head**, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
