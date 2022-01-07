; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segbuf.c_nilfs_segbuf_new.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segbuf.c_nilfs_segbuf_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_segment_buffer = type { i64, i32, i32, i32*, i32, i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }

@nilfs_segbuf_cachep = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nilfs_segment_buffer* @nilfs_segbuf_new(%struct.super_block* %0) #0 {
  %2 = alloca %struct.nilfs_segment_buffer*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.nilfs_segment_buffer*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = load i32, i32* @nilfs_segbuf_cachep, align 4
  %6 = load i32, i32* @GFP_NOFS, align 4
  %7 = call %struct.nilfs_segment_buffer* @kmem_cache_alloc(i32 %5, i32 %6)
  store %struct.nilfs_segment_buffer* %7, %struct.nilfs_segment_buffer** %4, align 8
  %8 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %9 = icmp ne %struct.nilfs_segment_buffer* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.nilfs_segment_buffer* null, %struct.nilfs_segment_buffer** %2, align 8
  br label %39

15:                                               ; preds = %1
  %16 = load %struct.super_block*, %struct.super_block** %3, align 8
  %17 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %17, i32 0, i32 7
  store %struct.super_block* %16, %struct.super_block** %18, align 8
  %19 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %20 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %19, i32 0, i32 6
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %23 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %22, i32 0, i32 5
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %26 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %25, i32 0, i32 4
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %29 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  %30 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %30, i32 0, i32 2
  %32 = call i32 @init_completion(i32* %31)
  %33 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %34 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %33, i32 0, i32 1
  %35 = call i32 @atomic_set(i32* %34, i32 0)
  %36 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  %37 = getelementptr inbounds %struct.nilfs_segment_buffer, %struct.nilfs_segment_buffer* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %4, align 8
  store %struct.nilfs_segment_buffer* %38, %struct.nilfs_segment_buffer** %2, align 8
  br label %39

39:                                               ; preds = %15, %14
  %40 = load %struct.nilfs_segment_buffer*, %struct.nilfs_segment_buffer** %2, align 8
  ret %struct.nilfs_segment_buffer* %40
}

declare dso_local %struct.nilfs_segment_buffer* @kmem_cache_alloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
