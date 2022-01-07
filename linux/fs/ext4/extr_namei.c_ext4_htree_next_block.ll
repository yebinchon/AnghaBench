; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_htree_next_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_htree_next_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dx_frame = type { i64, i64, %struct.buffer_head* }
%struct.buffer_head = type { i64 }
%struct.dx_node = type { i64 }

@INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.dx_frame*, %struct.dx_frame*, i32*)* @ext4_htree_next_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_htree_next_block(%struct.inode* %0, i32 %1, %struct.dx_frame* %2, %struct.dx_frame* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dx_frame*, align 8
  %10 = alloca %struct.dx_frame*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.dx_frame*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.dx_frame* %2, %struct.dx_frame** %9, align 8
  store %struct.dx_frame* %3, %struct.dx_frame** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %14, align 4
  %16 = load %struct.dx_frame*, %struct.dx_frame** %9, align 8
  store %struct.dx_frame* %16, %struct.dx_frame** %12, align 8
  br label %17

17:                                               ; preds = %5, %37
  %18 = load %struct.dx_frame*, %struct.dx_frame** %12, align 8
  %19 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  %22 = load %struct.dx_frame*, %struct.dx_frame** %12, align 8
  %23 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.dx_frame*, %struct.dx_frame** %12, align 8
  %26 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @dx_get_count(i64 %27)
  %29 = add nsw i64 %24, %28
  %30 = icmp slt i64 %21, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  br label %42

32:                                               ; preds = %17
  %33 = load %struct.dx_frame*, %struct.dx_frame** %12, align 8
  %34 = load %struct.dx_frame*, %struct.dx_frame** %10, align 8
  %35 = icmp eq %struct.dx_frame* %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %103

37:                                               ; preds = %32
  %38 = load i32, i32* %14, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %14, align 4
  %40 = load %struct.dx_frame*, %struct.dx_frame** %12, align 8
  %41 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %40, i32 -1
  store %struct.dx_frame* %41, %struct.dx_frame** %12, align 8
  br label %17

42:                                               ; preds = %31
  %43 = load %struct.dx_frame*, %struct.dx_frame** %12, align 8
  %44 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @dx_get_hash(i64 %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* %15, align 4
  %51 = load i32*, i32** %11, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %42
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load i32, i32* %15, align 4
  %58 = and i32 %57, -2
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %103

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %52
  br label %64

64:                                               ; preds = %82, %63
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %14, align 4
  %67 = icmp ne i32 %65, 0
  br i1 %67, label %68, label %102

68:                                               ; preds = %64
  %69 = load %struct.inode*, %struct.inode** %7, align 8
  %70 = load %struct.dx_frame*, %struct.dx_frame** %12, align 8
  %71 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @dx_get_block(i64 %72)
  %74 = load i32, i32* @INDEX, align 4
  %75 = call %struct.buffer_head* @ext4_read_dirblock(%struct.inode* %69, i32 %73, i32 %74)
  store %struct.buffer_head* %75, %struct.buffer_head** %13, align 8
  %76 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %77 = call i64 @IS_ERR(%struct.buffer_head* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %68
  %80 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %81 = call i32 @PTR_ERR(%struct.buffer_head* %80)
  store i32 %81, i32* %6, align 4
  br label %103

82:                                               ; preds = %68
  %83 = load %struct.dx_frame*, %struct.dx_frame** %12, align 8
  %84 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %83, i32 1
  store %struct.dx_frame* %84, %struct.dx_frame** %12, align 8
  %85 = load %struct.dx_frame*, %struct.dx_frame** %12, align 8
  %86 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %85, i32 0, i32 2
  %87 = load %struct.buffer_head*, %struct.buffer_head** %86, align 8
  %88 = call i32 @brelse(%struct.buffer_head* %87)
  %89 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %90 = load %struct.dx_frame*, %struct.dx_frame** %12, align 8
  %91 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %90, i32 0, i32 2
  store %struct.buffer_head* %89, %struct.buffer_head** %91, align 8
  %92 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %93 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to %struct.dx_node*
  %96 = getelementptr inbounds %struct.dx_node, %struct.dx_node* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.dx_frame*, %struct.dx_frame** %12, align 8
  %99 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  %100 = load %struct.dx_frame*, %struct.dx_frame** %12, align 8
  %101 = getelementptr inbounds %struct.dx_frame, %struct.dx_frame* %100, i32 0, i32 0
  store i64 %97, i64* %101, align 8
  br label %64

102:                                              ; preds = %64
  store i32 1, i32* %6, align 4
  br label %103

103:                                              ; preds = %102, %79, %61, %36
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i64 @dx_get_count(i64) #1

declare dso_local i32 @dx_get_hash(i64) #1

declare dso_local %struct.buffer_head* @ext4_read_dirblock(%struct.inode*, i32, i32) #1

declare dso_local i32 @dx_get_block(i64) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
