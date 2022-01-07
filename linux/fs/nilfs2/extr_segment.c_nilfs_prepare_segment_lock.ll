; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_prepare_segment_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_prepare_segment_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.nilfs_transaction_info* }
%struct.nilfs_transaction_info = type { i64, i32, i8*, i64 }
%struct.super_block = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@NILFS_TI_MAGIC = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"journal info from a different FS\00", align 1
@nilfs_transaction_cachep = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NILFS_TI_DYNAMIC_ALLOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.nilfs_transaction_info*)* @nilfs_prepare_segment_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_prepare_segment_lock(%struct.super_block* %0, %struct.nilfs_transaction_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.nilfs_transaction_info*, align 8
  %6 = alloca %struct.nilfs_transaction_info*, align 8
  %7 = alloca i8*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.nilfs_transaction_info* %1, %struct.nilfs_transaction_info** %5, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %9, align 8
  store %struct.nilfs_transaction_info* %10, %struct.nilfs_transaction_info** %6, align 8
  store i8* null, i8** %7, align 8
  %11 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %6, align 8
  %12 = icmp ne %struct.nilfs_transaction_info* %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %6, align 8
  %15 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NILFS_TI_MAGIC, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %6, align 8
  %21 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  store i32 %23, i32* %3, align 4
  br label %63

24:                                               ; preds = %13
  %25 = load %struct.super_block*, %struct.super_block** %4, align 8
  %26 = load i32, i32* @KERN_WARNING, align 4
  %27 = call i32 @nilfs_msg(%struct.super_block* %25, i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %29, align 8
  %31 = bitcast %struct.nilfs_transaction_info* %30 to i8*
  store i8* %31, i8** %7, align 8
  br label %32

32:                                               ; preds = %24, %2
  %33 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %34 = icmp ne %struct.nilfs_transaction_info* %33, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @nilfs_transaction_cachep, align 4
  %37 = load i32, i32* @GFP_NOFS, align 4
  %38 = call %struct.nilfs_transaction_info* @kmem_cache_alloc(i32 %36, i32 %37)
  store %struct.nilfs_transaction_info* %38, %struct.nilfs_transaction_info** %5, align 8
  %39 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %40 = icmp ne %struct.nilfs_transaction_info* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %63

44:                                               ; preds = %35
  %45 = load i64, i64* @NILFS_TI_DYNAMIC_ALLOC, align 8
  %46 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %47 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %46, i32 0, i32 3
  store i64 %45, i64* %47, align 8
  br label %51

48:                                               ; preds = %32
  %49 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %50 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %48, %44
  %52 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %53 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %52, i32 0, i32 1
  store i32 0, i32* %53, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %56 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load i64, i64* @NILFS_TI_MAGIC, align 8
  %58 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %59 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store %struct.nilfs_transaction_info* %60, %struct.nilfs_transaction_info** %62, align 8
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %51, %41, %19
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @nilfs_msg(%struct.super_block*, i32, i8*) #1

declare dso_local %struct.nilfs_transaction_info* @kmem_cache_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
