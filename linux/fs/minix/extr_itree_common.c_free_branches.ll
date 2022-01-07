; ModuleID = '/home/carl/AnghaBench/linux/fs/minix/extr_itree_common.c_free_branches.c'
source_filename = "/home/carl/AnghaBench/linux/fs/minix/extr_itree_common.c_free_branches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i64*, i64*, i32)* @free_branches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_branches(%struct.inode* %0, i64* %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %8, align 4
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %14, label %56

14:                                               ; preds = %4
  br label %15

15:                                               ; preds = %52, %14
  %16 = load i64*, i64** %6, align 8
  %17 = load i64*, i64** %7, align 8
  %18 = icmp ult i64* %16, %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %15
  %20 = load i64*, i64** %6, align 8
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @block_to_cpu(i64 %21)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %52

26:                                               ; preds = %19
  %27 = load i64*, i64** %6, align 8
  store i64 0, i64* %27, align 8
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %10, align 8
  %32 = call %struct.buffer_head* @sb_bread(i32 %30, i64 %31)
  store %struct.buffer_head* %32, %struct.buffer_head** %9, align 8
  %33 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %34 = icmp ne %struct.buffer_head* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  br label %52

36:                                               ; preds = %26
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %39 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i64*
  %42 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %43 = call i64* @block_end(%struct.buffer_head* %42)
  %44 = load i32, i32* %8, align 4
  call void @free_branches(%struct.inode* %37, i64* %41, i64* %43, i32 %44)
  %45 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %46 = call i32 @bforget(%struct.buffer_head* %45)
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @minix_free_block(%struct.inode* %47, i64 %48)
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = call i32 @mark_inode_dirty(%struct.inode* %50)
  br label %52

52:                                               ; preds = %36, %35, %25
  %53 = load i64*, i64** %6, align 8
  %54 = getelementptr inbounds i64, i64* %53, i32 1
  store i64* %54, i64** %6, align 8
  br label %15

55:                                               ; preds = %15
  br label %61

56:                                               ; preds = %4
  %57 = load %struct.inode*, %struct.inode** %5, align 8
  %58 = load i64*, i64** %6, align 8
  %59 = load i64*, i64** %7, align 8
  %60 = call i32 @free_data(%struct.inode* %57, i64* %58, i64* %59)
  br label %61

61:                                               ; preds = %56, %55
  ret void
}

declare dso_local i64 @block_to_cpu(i64) #1

declare dso_local %struct.buffer_head* @sb_bread(i32, i64) #1

declare dso_local i64* @block_end(%struct.buffer_head*) #1

declare dso_local i32 @bforget(%struct.buffer_head*) #1

declare dso_local i32 @minix_free_block(%struct.inode*, i64) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @free_data(%struct.inode*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
