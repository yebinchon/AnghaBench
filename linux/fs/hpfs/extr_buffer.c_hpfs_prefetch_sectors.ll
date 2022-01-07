; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_buffer.c_hpfs_prefetch_sectors.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_buffer.c_hpfs_prefetch_sectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.blk_plug = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_prefetch_sectors(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.blk_plug, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp uge i32 %12, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11, %3
  br label %75

22:                                               ; preds = %11
  %23 = load %struct.super_block*, %struct.super_block** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @hpfs_search_hotfix_map_for_range(%struct.super_block* %23, i32 %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %75

33:                                               ; preds = %22
  %34 = load %struct.super_block*, %struct.super_block** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call %struct.buffer_head* @sb_find_get_block(%struct.super_block* %34, i32 %35)
  store %struct.buffer_head* %36, %struct.buffer_head** %7, align 8
  %37 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %38 = icmp ne %struct.buffer_head* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %33
  %40 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %41 = call i64 @buffer_uptodate(%struct.buffer_head* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %45 = call i32 @brelse(%struct.buffer_head* %44)
  br label %75

46:                                               ; preds = %39
  %47 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %48 = call i32 @brelse(%struct.buffer_head* %47)
  br label %49

49:                                               ; preds = %46, %33
  %50 = call i32 @blk_start_plug(%struct.blk_plug* %8)
  br label %51

51:                                               ; preds = %65, %49
  %52 = load i32, i32* %6, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.super_block*, %struct.super_block** %4, align 8
  %57 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %56)
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp uge i32 %55, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %73

65:                                               ; preds = %54
  %66 = load %struct.super_block*, %struct.super_block** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @sb_breadahead(%struct.super_block* %66, i32 %67)
  %69 = load i32, i32* %5, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %6, align 4
  br label %51

73:                                               ; preds = %64, %51
  %74 = call i32 @blk_finish_plug(%struct.blk_plug* %8)
  br label %75

75:                                               ; preds = %73, %43, %32, %21
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32 @hpfs_search_hotfix_map_for_range(%struct.super_block*, i32, i32) #1

declare dso_local %struct.buffer_head* @sb_find_get_block(%struct.super_block*, i32) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @blk_start_plug(%struct.blk_plug*) #1

declare dso_local i32 @sb_breadahead(%struct.super_block*, i32) #1

declare dso_local i32 @blk_finish_plug(%struct.blk_plug*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
