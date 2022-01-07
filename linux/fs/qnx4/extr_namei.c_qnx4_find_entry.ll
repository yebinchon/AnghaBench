; ModuleID = '/home/carl/AnghaBench/linux/fs/qnx4/extr_namei.c_qnx4_find_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/qnx4/extr_namei.c_qnx4_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64, i64 }
%struct.inode = type { i64, i32 }
%struct.qnx4_inode_entry = type { i32 }

@QNX4_BLOCK_SIZE = common dso_local global i64 0, align 8
@QNX4_INODES_PER_BLOCK = common dso_local global i64 0, align 8
@QNX4_DIR_ENTRY_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (i32, %struct.inode*, i8*, %struct.qnx4_inode_entry**, i32*)* @qnx4_find_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @qnx4_find_entry(i32 %0, %struct.inode* %1, i8* %2, %struct.qnx4_inode_entry** %3, i32* %4) #0 {
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.qnx4_inode_entry**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.buffer_head*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.inode* %1, %struct.inode** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.qnx4_inode_entry** %3, %struct.qnx4_inode_entry*** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.qnx4_inode_entry**, %struct.qnx4_inode_entry*** %10, align 8
  store %struct.qnx4_inode_entry* null, %struct.qnx4_inode_entry** %16, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %17

17:                                               ; preds = %81, %80, %45, %5
  %18 = load i64, i64* %14, align 8
  %19 = load i64, i64* @QNX4_BLOCK_SIZE, align 8
  %20 = mul i64 %18, %19
  %21 = load i64, i64* %13, align 8
  %22 = add i64 %20, %21
  %23 = load %struct.inode*, %struct.inode** %8, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %86

27:                                               ; preds = %17
  %28 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %29 = icmp ne %struct.buffer_head* %28, null
  br i1 %29, label %49, label %30

30:                                               ; preds = %27
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = load i64, i64* %14, align 8
  %33 = call i64 @qnx4_block_map(%struct.inode* %31, i64 %32)
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %12, align 8
  %41 = call %struct.buffer_head* @sb_bread(i32 %39, i64 %40)
  store %struct.buffer_head* %41, %struct.buffer_head** %15, align 8
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %44 = icmp ne %struct.buffer_head* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* %14, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %14, align 8
  br label %17

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %27
  %50 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %51 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %13, align 8
  %54 = add i64 %52, %53
  %55 = inttoptr i64 %54 to %struct.qnx4_inode_entry*
  %56 = load %struct.qnx4_inode_entry**, %struct.qnx4_inode_entry*** %10, align 8
  store %struct.qnx4_inode_entry* %55, %struct.qnx4_inode_entry** %56, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %60 = call i64 @qnx4_match(i32 %57, i8* %58, %struct.buffer_head* %59, i64* %13)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %49
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* @QNX4_INODES_PER_BLOCK, align 8
  %65 = mul i64 %63, %64
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* @QNX4_DIR_ENTRY_SIZE, align 8
  %68 = udiv i64 %66, %67
  %69 = add i64 %65, %68
  %70 = sub i64 %69, 1
  %71 = trunc i64 %70 to i32
  %72 = load i32*, i32** %11, align 8
  store i32 %71, i32* %72, align 4
  %73 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  store %struct.buffer_head* %73, %struct.buffer_head** %6, align 8
  br label %90

74:                                               ; preds = %49
  %75 = load i64, i64* %13, align 8
  %76 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %77 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %17

81:                                               ; preds = %74
  %82 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %83 = call i32 @brelse(%struct.buffer_head* %82)
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  store i64 0, i64* %13, align 8
  %84 = load i64, i64* %14, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %14, align 8
  br label %17

86:                                               ; preds = %17
  %87 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %88 = call i32 @brelse(%struct.buffer_head* %87)
  %89 = load %struct.qnx4_inode_entry**, %struct.qnx4_inode_entry*** %10, align 8
  store %struct.qnx4_inode_entry* null, %struct.qnx4_inode_entry** %89, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  br label %90

90:                                               ; preds = %86, %62
  %91 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  ret %struct.buffer_head* %91
}

declare dso_local i64 @qnx4_block_map(%struct.inode*, i64) #1

declare dso_local %struct.buffer_head* @sb_bread(i32, i64) #1

declare dso_local i64 @qnx4_match(i32, i8*, %struct.buffer_head*, i64*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
