; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_do_master_requery.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_do_master_requery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32 }
%struct.dlm_lock_resource = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dlm_master_requery = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DLM_LOCK_RES_OWNER_UNKNOWN = common dso_local global i32 0, align 4
@DLM_MASTER_REQUERY_MSG = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Error %d when sending message %u (key 0x%x) to node %u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"node %u responded to master requery with %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_do_master_requery(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.dlm_ctxt*, align 8
  %6 = alloca %struct.dlm_lock_resource*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dlm_master_requery, align 4
  %11 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %5, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @DLM_LOCK_RES_OWNER_UNKNOWN, align 4
  store i32 %14, i32* %11, align 4
  %15 = call i32 @memset(%struct.dlm_master_requery* %10, i32 0, i32 12)
  %16 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %17 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.dlm_master_requery, %struct.dlm_master_requery* %10, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %21 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.dlm_master_requery, %struct.dlm_master_requery* %10, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.dlm_master_requery, %struct.dlm_master_requery* %10, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %28 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %32 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @memcpy(i32 %26, i32 %30, i32 %34)
  br label %36

36:                                               ; preds = %60, %4
  %37 = load i32, i32* @DLM_MASTER_REQUERY_MSG, align 4
  %38 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %39 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @o2net_send_message(i32 %37, i32 %40, %struct.dlm_master_requery* %10, i32 12, i64 %41, i32* %11)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %36
  %46 = load i32, i32* @ML_ERROR, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @DLM_MASTER_REQUERY_MSG, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %51 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %7, align 8
  %54 = call i32 (i32, i8*, i32, i64, ...) @mlog(i32 %46, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %47, i64 %49, i32 %52, i64 %53)
  br label %84

55:                                               ; preds = %36
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @mlog_errno(i32 %61)
  %63 = call i32 @msleep(i32 50)
  br label %36

64:                                               ; preds = %55
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @BUG_ON(i32 %67)
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @DLM_LOCK_RES_OWNER_UNKNOWN, align 4
  %71 = icmp sgt i32 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @BUG_ON(i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = and i32 %74, 255
  %76 = sext i32 %75 to i64
  %77 = load i64*, i64** %8, align 8
  store i64 %76, i64* %77, align 8
  %78 = load i64, i64* %7, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i64*, i64** %8, align 8
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (i32, i8*, i32, i64, ...) @mlog(i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %79, i64 %81)
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %64
  br label %84

84:                                               ; preds = %83, %45
  %85 = load i32, i32* %9, align 4
  ret i32 %85
}

declare dso_local i32 @memset(%struct.dlm_master_requery*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @o2net_send_message(i32, i32, %struct.dlm_master_requery*, i32, i64, i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i64, ...) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
