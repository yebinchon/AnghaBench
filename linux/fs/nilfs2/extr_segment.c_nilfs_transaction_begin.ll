; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_transaction_begin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_transaction_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.nilfs_transaction_info* }
%struct.nilfs_transaction_info = type { i32, %struct.nilfs_transaction_info*, i32 }
%struct.super_block = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@TRACE_NILFS2_TRANSACTION_BEGIN = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@NILFS_TI_DYNAMIC_ALLOC = common dso_local global i32 0, align 4
@nilfs_transaction_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_transaction_begin(%struct.super_block* %0, %struct.nilfs_transaction_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.nilfs_transaction_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.the_nilfs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nilfs_transaction_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.nilfs_transaction_info* %1, %struct.nilfs_transaction_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %6, align 8
  %13 = call i32 @nilfs_prepare_segment_lock(%struct.super_block* %11, %struct.nilfs_transaction_info* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %96

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %26, align 8
  store %struct.nilfs_transaction_info* %27, %struct.nilfs_transaction_info** %10, align 8
  %28 = load %struct.super_block*, %struct.super_block** %5, align 8
  %29 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %10, align 8
  %30 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %10, align 8
  %31 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %10, align 8
  %34 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @TRACE_NILFS2_TRANSACTION_BEGIN, align 4
  %37 = call i32 @trace_nilfs2_transaction_transition(%struct.super_block* %28, %struct.nilfs_transaction_info* %29, i32 %32, i32 %35, i32 %36)
  store i32 0, i32* %4, align 4
  br label %96

38:                                               ; preds = %21
  %39 = load %struct.super_block*, %struct.super_block** %5, align 8
  %40 = call i32 @sb_start_intwrite(%struct.super_block* %39)
  %41 = load %struct.super_block*, %struct.super_block** %5, align 8
  %42 = getelementptr inbounds %struct.super_block, %struct.super_block* %41, i32 0, i32 0
  %43 = load %struct.the_nilfs*, %struct.the_nilfs** %42, align 8
  store %struct.the_nilfs* %43, %struct.the_nilfs** %8, align 8
  %44 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %45 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %44, i32 0, i32 0
  %46 = call i32 @down_read(i32* %45)
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %38
  %50 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %51 = call i64 @nilfs_near_disk_full(%struct.the_nilfs* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %55 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %54, i32 0, i32 0
  %56 = call i32 @up_read(i32* %55)
  %57 = load i32, i32* @ENOSPC, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %9, align 4
  br label %73

59:                                               ; preds = %49, %38
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %61, align 8
  store %struct.nilfs_transaction_info* %62, %struct.nilfs_transaction_info** %10, align 8
  %63 = load %struct.super_block*, %struct.super_block** %5, align 8
  %64 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %10, align 8
  %65 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %10, align 8
  %66 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %10, align 8
  %69 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @TRACE_NILFS2_TRANSACTION_BEGIN, align 4
  %72 = call i32 @trace_nilfs2_transaction_transition(%struct.super_block* %63, %struct.nilfs_transaction_info* %64, i32 %67, i32 %70, i32 %71)
  store i32 0, i32* %4, align 4
  br label %96

73:                                               ; preds = %53
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %75, align 8
  store %struct.nilfs_transaction_info* %76, %struct.nilfs_transaction_info** %6, align 8
  %77 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %6, align 8
  %78 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %77, i32 0, i32 1
  %79 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %78, align 8
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store %struct.nilfs_transaction_info* %79, %struct.nilfs_transaction_info** %81, align 8
  %82 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %6, align 8
  %83 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @NILFS_TI_DYNAMIC_ALLOC, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %73
  %89 = load i32, i32* @nilfs_transaction_cachep, align 4
  %90 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %6, align 8
  %91 = call i32 @kmem_cache_free(i32 %89, %struct.nilfs_transaction_info* %90)
  br label %92

92:                                               ; preds = %88, %73
  %93 = load %struct.super_block*, %struct.super_block** %5, align 8
  %94 = call i32 @sb_end_intwrite(%struct.super_block* %93)
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %92, %59, %24, %19
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @nilfs_prepare_segment_lock(%struct.super_block*, %struct.nilfs_transaction_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @trace_nilfs2_transaction_transition(%struct.super_block*, %struct.nilfs_transaction_info*, i32, i32, i32) #1

declare dso_local i32 @sb_start_intwrite(%struct.super_block*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @nilfs_near_disk_full(%struct.the_nilfs*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.nilfs_transaction_info*) #1

declare dso_local i32 @sb_end_intwrite(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
