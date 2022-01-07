; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_indirect.c_ext4_find_near.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_indirect.c_ext4_find_near.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i64* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.ext4_inode_info = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.TYPE_5__*)* @ext4_find_near to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_find_near(%struct.inode* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.ext4_inode_info*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.ext4_inode_info* @EXT4_I(%struct.inode* %9)
  store %struct.ext4_inode_info* %10, %struct.ext4_inode_info** %6, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i64*
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.ext4_inode_info*, %struct.ext4_inode_info** %6, align 8
  %24 = getelementptr inbounds %struct.ext4_inode_info, %struct.ext4_inode_info* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  br label %26

26:                                               ; preds = %22, %15
  %27 = phi i64* [ %21, %15 ], [ %25, %22 ]
  store i64* %27, i64** %7, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 -1
  store i64* %31, i64** %8, align 8
  br label %32

32:                                               ; preds = %45, %26
  %33 = load i64*, i64** %8, align 8
  %34 = load i64*, i64** %7, align 8
  %35 = icmp uge i64* %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load i64*, i64** %8, align 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i64*, i64** %8, align 8
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @le32_to_cpu(i64 %42)
  store i32 %43, i32* %3, align 4
  br label %62

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44
  %46 = load i64*, i64** %8, align 8
  %47 = getelementptr inbounds i64, i64* %46, i32 -1
  store i64* %47, i64** %8, align 8
  br label %32

48:                                               ; preds = %32
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = icmp ne %struct.TYPE_4__* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %3, align 4
  br label %62

59:                                               ; preds = %48
  %60 = load %struct.inode*, %struct.inode** %4, align 8
  %61 = call i32 @ext4_inode_to_goal_block(%struct.inode* %60)
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %59, %53, %40
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.ext4_inode_info* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @ext4_inode_to_goal_block(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
