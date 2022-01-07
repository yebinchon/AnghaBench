; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_drop_lockres_ref_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_drop_lockres_ref_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, i32 }
%struct.dlm_lock_resource = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.dlm_deref_lockres_done = type { i32, i32, i32 }

@O2NM_MAX_NAME_LEN = common dso_local global i32 0, align 4
@DLM_DEREF_LOCKRES_DONE = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%s: res %.*s, error %d send DEREF DONE  to node %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"%s: res %.*s, DEREF to node %u got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i32)* @dlm_drop_lockres_ref_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlm_drop_lockres_ref_done(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, i32 %2) #0 {
  %4 = alloca %struct.dlm_ctxt*, align 8
  %5 = alloca %struct.dlm_lock_resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dlm_deref_lockres_done, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %4, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %13 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %10, align 8
  %16 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %17 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @O2NM_MAX_NAME_LEN, align 4
  %22 = icmp ugt i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = call i32 @memset(%struct.dlm_deref_lockres_done* %7, i32 0, i32 12)
  %26 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %27 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.dlm_deref_lockres_done, %struct.dlm_deref_lockres_done* %7, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %11, align 4
  %31 = getelementptr inbounds %struct.dlm_deref_lockres_done, %struct.dlm_deref_lockres_done* %7, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.dlm_deref_lockres_done, %struct.dlm_deref_lockres_done* %7, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @memcpy(i32 %33, i8* %34, i32 %35)
  %37 = load i32, i32* @DLM_DEREF_LOCKRES_DONE, align 4
  %38 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %39 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @o2net_send_message(i32 %37, i32 %40, %struct.dlm_deref_lockres_done* %7, i32 12, i32 %41, i32* %9)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %3
  %46 = load i32, i32* @ML_ERROR, align 4
  %47 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %48 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @mlog(i32 %46, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50, i8* %51, i32 %52, i32 %53)
  br label %71

55:                                               ; preds = %3
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = load i32, i32* @ML_ERROR, align 4
  %60 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %61 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i8*, i8** %10, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @mlog(i32 %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63, i8* %64, i32 %65, i32 %66)
  %68 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %5, align 8
  %69 = call i32 @dlm_print_one_lock_resource(%struct.dlm_lock_resource* %68)
  br label %70

70:                                               ; preds = %58, %55
  br label %71

71:                                               ; preds = %70, %45
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(%struct.dlm_deref_lockres_done*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @o2net_send_message(i32, i32, %struct.dlm_deref_lockres_done*, i32, i32, i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @dlm_print_one_lock_resource(%struct.dlm_lock_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
