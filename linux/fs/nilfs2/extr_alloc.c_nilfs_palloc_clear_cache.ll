; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_alloc.c_nilfs_palloc_clear_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_alloc.c_nilfs_palloc_clear_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.nilfs_palloc_cache = type { i32, %struct.TYPE_5__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { %struct.nilfs_palloc_cache* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_palloc_clear_cache(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.nilfs_palloc_cache*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = call %struct.TYPE_8__* @NILFS_MDT(%struct.inode* %4)
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load %struct.nilfs_palloc_cache*, %struct.nilfs_palloc_cache** %6, align 8
  store %struct.nilfs_palloc_cache* %7, %struct.nilfs_palloc_cache** %3, align 8
  %8 = load %struct.nilfs_palloc_cache*, %struct.nilfs_palloc_cache** %3, align 8
  %9 = getelementptr inbounds %struct.nilfs_palloc_cache, %struct.nilfs_palloc_cache* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.nilfs_palloc_cache*, %struct.nilfs_palloc_cache** %3, align 8
  %12 = getelementptr inbounds %struct.nilfs_palloc_cache, %struct.nilfs_palloc_cache* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @brelse(i32* %14)
  %16 = load %struct.nilfs_palloc_cache*, %struct.nilfs_palloc_cache** %3, align 8
  %17 = getelementptr inbounds %struct.nilfs_palloc_cache, %struct.nilfs_palloc_cache* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @brelse(i32* %19)
  %21 = load %struct.nilfs_palloc_cache*, %struct.nilfs_palloc_cache** %3, align 8
  %22 = getelementptr inbounds %struct.nilfs_palloc_cache, %struct.nilfs_palloc_cache* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @brelse(i32* %24)
  %26 = load %struct.nilfs_palloc_cache*, %struct.nilfs_palloc_cache** %3, align 8
  %27 = getelementptr inbounds %struct.nilfs_palloc_cache, %struct.nilfs_palloc_cache* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load %struct.nilfs_palloc_cache*, %struct.nilfs_palloc_cache** %3, align 8
  %30 = getelementptr inbounds %struct.nilfs_palloc_cache, %struct.nilfs_palloc_cache* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  %32 = load %struct.nilfs_palloc_cache*, %struct.nilfs_palloc_cache** %3, align 8
  %33 = getelementptr inbounds %struct.nilfs_palloc_cache, %struct.nilfs_palloc_cache* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  %35 = load %struct.nilfs_palloc_cache*, %struct.nilfs_palloc_cache** %3, align 8
  %36 = getelementptr inbounds %struct.nilfs_palloc_cache, %struct.nilfs_palloc_cache* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  ret void
}

declare dso_local %struct.TYPE_8__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @brelse(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
