; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_inode.c_ext2_splice_branch.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_inode.c_ext2_splice_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_4__ = type { i64, i32, i32* }
%struct.ext2_block_alloc_info = type { i64, i8* }
%struct.TYPE_5__ = type { %struct.ext2_block_alloc_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i64, %struct.TYPE_4__*, i32, i32)* @ext2_splice_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext2_splice_branch(%struct.inode* %0, i64 %1, %struct.TYPE_4__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ext2_block_alloc_info*, align 8
  %13 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call %struct.TYPE_5__* @EXT2_I(%struct.inode* %14)
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.ext2_block_alloc_info*, %struct.ext2_block_alloc_info** %16, align 8
  store %struct.ext2_block_alloc_info* %17, %struct.ext2_block_alloc_info** %12, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %5
  %27 = load i32, i32* %10, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %54

29:                                               ; preds = %26
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @le32_to_cpu(i32 %32)
  %34 = getelementptr i8, i8* %33, i64 1
  store i8* %34, i8** %13, align 8
  store i32 1, i32* %11, align 4
  br label %35

35:                                               ; preds = %50, %29
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load i8*, i8** %13, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %13, align 8
  %42 = ptrtoint i8* %40 to i32
  %43 = call i32 @cpu_to_le32(i32 %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %43, i32* %49, align 4
  br label %50

50:                                               ; preds = %39
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %35

53:                                               ; preds = %35
  br label %54

54:                                               ; preds = %53, %26, %5
  %55 = load %struct.ext2_block_alloc_info*, %struct.ext2_block_alloc_info** %12, align 8
  %56 = icmp ne %struct.ext2_block_alloc_info* %55, null
  br i1 %56, label %57, label %78

57:                                               ; preds = %54
  %58 = load i64, i64* %7, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = sub nsw i64 %61, 1
  %63 = load %struct.ext2_block_alloc_info*, %struct.ext2_block_alloc_info** %12, align 8
  %64 = getelementptr inbounds %struct.ext2_block_alloc_info, %struct.ext2_block_alloc_info* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i8* @le32_to_cpu(i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr i8, i8* %71, i64 %73
  %75 = getelementptr i8, i8* %74, i64 -1
  %76 = load %struct.ext2_block_alloc_info*, %struct.ext2_block_alloc_info** %12, align 8
  %77 = getelementptr inbounds %struct.ext2_block_alloc_info, %struct.ext2_block_alloc_info* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %57, %54
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.inode*, %struct.inode** %6, align 8
  %88 = call i32 @mark_buffer_dirty_inode(i64 %86, %struct.inode* %87)
  br label %89

89:                                               ; preds = %83, %78
  %90 = load %struct.inode*, %struct.inode** %6, align 8
  %91 = call i32 @current_time(%struct.inode* %90)
  %92 = load %struct.inode*, %struct.inode** %6, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.inode*, %struct.inode** %6, align 8
  %95 = call i32 @mark_inode_dirty(%struct.inode* %94)
  ret void
}

declare dso_local %struct.TYPE_5__* @EXT2_I(%struct.inode*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mark_buffer_dirty_inode(i64, %struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
