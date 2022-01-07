; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_transaction_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_transaction_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.nilfs_transaction_info* }
%struct.nilfs_transaction_info = type { i64, i32, i64, %struct.nilfs_transaction_info* }
%struct.super_block = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32, i32, %struct.nilfs_sc_info* }
%struct.nilfs_sc_info = type { i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@NILFS_TI_MAGIC = common dso_local global i64 0, align 8
@NILFS_TI_COMMIT = common dso_local global i32 0, align 4
@TRACE_NILFS2_TRANSACTION_COMMIT = common dso_local global i32 0, align 4
@NILFS_TI_SYNC = common dso_local global i32 0, align 4
@NILFS_TI_DYNAMIC_ALLOC = common dso_local global i32 0, align 4
@nilfs_transaction_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_transaction_commit(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.nilfs_transaction_info*, align 8
  %5 = alloca %struct.the_nilfs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nilfs_sc_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %9, align 8
  store %struct.nilfs_transaction_info* %10, %struct.nilfs_transaction_info** %4, align 8
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 0
  %13 = load %struct.the_nilfs*, %struct.the_nilfs** %12, align 8
  store %struct.the_nilfs* %13, %struct.the_nilfs** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %15 = icmp eq %struct.nilfs_transaction_info* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %18 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NILFS_TI_MAGIC, align 8
  %21 = icmp ne i64 %19, %20
  br label %22

22:                                               ; preds = %16, %1
  %23 = phi i1 [ true, %1 ], [ %21, %16 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load i32, i32* @NILFS_TI_COMMIT, align 4
  %27 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %28 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %32 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %22
  %36 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %37 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.super_block*, %struct.super_block** %3, align 8
  %41 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %42 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %43 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %46 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @TRACE_NILFS2_TRANSACTION_COMMIT, align 4
  %49 = call i32 @trace_nilfs2_transaction_transition(%struct.super_block* %40, %struct.nilfs_transaction_info* %41, i64 %44, i32 %47, i32 %48)
  store i32 0, i32* %2, align 4
  br label %123

50:                                               ; preds = %22
  %51 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %52 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %51, i32 0, i32 2
  %53 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %52, align 8
  %54 = icmp ne %struct.nilfs_sc_info* %53, null
  br i1 %54, label %55, label %80

55:                                               ; preds = %50
  %56 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %57 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %56, i32 0, i32 2
  %58 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %57, align 8
  store %struct.nilfs_sc_info* %58, %struct.nilfs_sc_info** %7, align 8
  %59 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %60 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @NILFS_TI_COMMIT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %7, align 8
  %67 = call i32 @nilfs_segctor_start_timer(%struct.nilfs_sc_info* %66)
  br label %68

68:                                               ; preds = %65, %55
  %69 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %70 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %69, i32 0, i32 1
  %71 = call i64 @atomic_read(i32* %70)
  %72 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %7, align 8
  %73 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %7, align 8
  %78 = call i32 @nilfs_segctor_do_flush(%struct.nilfs_sc_info* %77, i32 0)
  br label %79

79:                                               ; preds = %76, %68
  br label %80

80:                                               ; preds = %79, %50
  %81 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %82 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %81, i32 0, i32 0
  %83 = call i32 @up_read(i32* %82)
  %84 = load %struct.super_block*, %struct.super_block** %3, align 8
  %85 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %86 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %87 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %90 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @TRACE_NILFS2_TRANSACTION_COMMIT, align 4
  %93 = call i32 @trace_nilfs2_transaction_transition(%struct.super_block* %84, %struct.nilfs_transaction_info* %85, i64 %88, i32 %91, i32 %92)
  %94 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %95 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %94, i32 0, i32 3
  %96 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %95, align 8
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  store %struct.nilfs_transaction_info* %96, %struct.nilfs_transaction_info** %98, align 8
  %99 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %100 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @NILFS_TI_SYNC, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %80
  %106 = load %struct.super_block*, %struct.super_block** %3, align 8
  %107 = call i32 @nilfs_construct_segment(%struct.super_block* %106)
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %105, %80
  %109 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %110 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @NILFS_TI_DYNAMIC_ALLOC, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load i32, i32* @nilfs_transaction_cachep, align 4
  %117 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %4, align 8
  %118 = call i32 @kmem_cache_free(i32 %116, %struct.nilfs_transaction_info* %117)
  br label %119

119:                                              ; preds = %115, %108
  %120 = load %struct.super_block*, %struct.super_block** %3, align 8
  %121 = call i32 @sb_end_intwrite(%struct.super_block* %120)
  %122 = load i32, i32* %6, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %119, %35
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @trace_nilfs2_transaction_transition(%struct.super_block*, %struct.nilfs_transaction_info*, i64, i32, i32) #1

declare dso_local i32 @nilfs_segctor_start_timer(%struct.nilfs_sc_info*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @nilfs_segctor_do_flush(%struct.nilfs_sc_info*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @nilfs_construct_segment(%struct.super_block*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.nilfs_transaction_info*) #1

declare dso_local i32 @sb_end_intwrite(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
