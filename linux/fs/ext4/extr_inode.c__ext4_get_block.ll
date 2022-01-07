; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c__ext4_get_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inode.c__ext4_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ext4_map_blocks = type { i32, i32, i32, i32 }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.buffer_head*, i32)* @_ext4_get_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ext4_get_block(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext4_map_blocks, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = call i64 @ext4_has_inline_data(%struct.inode* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @ERANGE, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %74

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %10, i32 0, i32 3
  store i32 %19, i32* %20, align 4
  %21 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = ashr i32 %23, %26
  %28 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %10, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = call i32 (...) @ext4_journal_current_handle()
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @ext4_map_blocks(i32 %29, %struct.inode* %30, %struct.ext4_map_blocks* %10, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %18
  %36 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %10, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @map_bh(%struct.buffer_head* %36, %struct.TYPE_2__* %39, i32 %41)
  %43 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %44 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %10, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ext4_update_bh_state(%struct.buffer_head* %43, i32 %45)
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %10, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %51, %53
  %55 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %56 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %11, align 4
  br label %72

57:                                               ; preds = %18
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.ext4_map_blocks, %struct.ext4_map_blocks* %10, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %65, %67
  %69 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %70 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %60, %57
  br label %72

72:                                               ; preds = %71, %35
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %15
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i64 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local i32 @ext4_map_blocks(i32, %struct.inode*, %struct.ext4_map_blocks*, i32) #1

declare dso_local i32 @ext4_journal_current_handle(...) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @ext4_update_bh_state(%struct.buffer_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
