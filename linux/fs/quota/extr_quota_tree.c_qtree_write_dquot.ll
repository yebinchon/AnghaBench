; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota_tree.c_qtree_write_dquot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota_tree.c_qtree_write_dquot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtree_mem_dqinfo = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i8*, %struct.dquot*)* }
%struct.dquot = type { i32, i32, %struct.super_block*, %struct.TYPE_4__ }
%struct.super_block = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.super_block*, i32, i8*, i32, i32)* }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Error %zd occurred while creating quota\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"dquota write failed\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@DQST_WRITES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtree_write_dquot(%struct.qtree_mem_dqinfo* %0, %struct.dquot* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qtree_mem_dqinfo*, align 8
  %5 = alloca %struct.dquot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.qtree_mem_dqinfo* %0, %struct.qtree_mem_dqinfo** %4, align 8
  store %struct.dquot* %1, %struct.dquot** %5, align 8
  %10 = load %struct.dquot*, %struct.dquot** %5, align 8
  %11 = getelementptr inbounds %struct.dquot, %struct.dquot* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.dquot*, %struct.dquot** %5, align 8
  %15 = getelementptr inbounds %struct.dquot, %struct.dquot* %14, i32 0, i32 2
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %7, align 8
  %17 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %4, align 8
  %18 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i8* @getdqbuf(i32 %19)
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %96

26:                                               ; preds = %2
  %27 = load %struct.dquot*, %struct.dquot** %5, align 8
  %28 = getelementptr inbounds %struct.dquot, %struct.dquot* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %26
  %32 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %4, align 8
  %33 = load %struct.dquot*, %struct.dquot** %5, align 8
  %34 = call i32 @dq_insert_tree(%struct.qtree_mem_dqinfo* %32, %struct.dquot* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.super_block*, %struct.super_block** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 (%struct.super_block*, i8*, ...) @quota_error(%struct.super_block* %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @kfree(i8* %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %96

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %26
  %46 = load %struct.dquot*, %struct.dquot** %5, align 8
  %47 = getelementptr inbounds %struct.dquot, %struct.dquot* %46, i32 0, i32 1
  %48 = call i32 @spin_lock(i32* %47)
  %49 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %4, align 8
  %50 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32 (i8*, %struct.dquot*)*, i32 (i8*, %struct.dquot*)** %52, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load %struct.dquot*, %struct.dquot** %5, align 8
  %56 = call i32 %53(i8* %54, %struct.dquot* %55)
  %57 = load %struct.dquot*, %struct.dquot** %5, align 8
  %58 = getelementptr inbounds %struct.dquot, %struct.dquot* %57, i32 0, i32 1
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load %struct.super_block*, %struct.super_block** %7, align 8
  %61 = getelementptr inbounds %struct.super_block, %struct.super_block* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32 (%struct.super_block*, i32, i8*, i32, i32)*, i32 (%struct.super_block*, i32, i8*, i32, i32)** %63, align 8
  %65 = load %struct.super_block*, %struct.super_block** %7, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i8*, i8** %9, align 8
  %68 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %4, align 8
  %69 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.dquot*, %struct.dquot** %5, align 8
  %72 = getelementptr inbounds %struct.dquot, %struct.dquot* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 %64(%struct.super_block* %65, i32 %66, i8* %67, i32 %70, i32 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %4, align 8
  %77 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %75, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %45
  %81 = load %struct.super_block*, %struct.super_block** %7, align 8
  %82 = call i32 (%struct.super_block*, i8*, ...) @quota_error(%struct.super_block* %81, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* %8, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* @ENOSPC, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %85, %80
  br label %90

89:                                               ; preds = %45
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %89, %88
  %91 = load i32, i32* @DQST_WRITES, align 4
  %92 = call i32 @dqstats_inc(i32 %91)
  %93 = load i8*, i8** %9, align 8
  %94 = call i32 @kfree(i8* %93)
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %90, %37, %23
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i8* @getdqbuf(i32) #1

declare dso_local i32 @dq_insert_tree(%struct.qtree_mem_dqinfo*, %struct.dquot*) #1

declare dso_local i32 @quota_error(%struct.super_block*, i8*, ...) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dqstats_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
