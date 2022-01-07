; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_grow_chain64.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_grow_chain64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_inode_info = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_4__ = type { i64, i64*, %struct.buffer_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_inode_info*, %struct.buffer_head*, i64*, %struct.TYPE_4__*, %struct.TYPE_4__*)* @grow_chain64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grow_chain64(%struct.ufs_inode_info* %0, %struct.buffer_head* %1, i64* %2, %struct.TYPE_4__* %3, %struct.TYPE_4__* %4) #0 {
  %6 = alloca %struct.ufs_inode_info*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  store %struct.ufs_inode_info* %0, %struct.ufs_inode_info** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %10, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  store %struct.buffer_head* %13, %struct.buffer_head** %15, align 8
  br label %16

16:                                               ; preds = %47, %5
  %17 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %18 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %17, i32 0, i32 0
  %19 = call i32 @read_seqbegin(i32* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i64*, i64** %8, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i64* %20, i64** %22, align 8
  %23 = load i64, i64* %20, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %26, %struct.TYPE_4__** %11, align 8
  br label %27

27:                                               ; preds = %43, %16
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %30 = icmp ule %struct.TYPE_4__* %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %34, %38
  br label %40

40:                                               ; preds = %31, %27
  %41 = phi i1 [ false, %27 ], [ %39, %31 ]
  br i1 %41, label %42, label %46

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 1
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %11, align 8
  br label %27

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %49 = getelementptr inbounds %struct.ufs_inode_info, %struct.ufs_inode_info* %48, i32 0, i32 0
  %50 = load i32, i32* %12, align 4
  %51 = call i64 @read_seqretry(i32* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %16, label %53

53:                                               ; preds = %47
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %56 = icmp ugt %struct.TYPE_4__* %54, %55
  %57 = zext i1 %56 to i32
  ret i32 %57
}

declare dso_local i32 @read_seqbegin(i32*) #1

declare dso_local i64 @read_seqretry(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
