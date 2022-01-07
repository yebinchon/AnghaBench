; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmlock.c_dlm_send_remote_lock_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmlock.c_dlm_send_remote_lock_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, i32 }
%struct.dlm_lock_resource = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.dlm_lock = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dlm_create_lock = type { i32, i32, i32, i32, i32, i32 }

@DLM_CREATE_LOCK_MSG = common dso_local global i32 0, align 4
@DLM_REJECTED = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"%s: res %.*s, Stale lockres no longer owned by node %u. That node is coming back up currently.\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"%s: res %.*s, Error %d send CREATE LOCK to node %u\0A\00", align 1
@DLM_RECOVERING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*, i32)* @dlm_send_remote_lock_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_send_remote_lock_request(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, %struct.dlm_lock* %2, i32 %3) #0 {
  %5 = alloca %struct.dlm_ctxt*, align 8
  %6 = alloca %struct.dlm_lock_resource*, align 8
  %7 = alloca %struct.dlm_lock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dlm_create_lock, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %5, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %6, align 8
  store %struct.dlm_lock* %2, %struct.dlm_lock** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %13 = call i32 @memset(%struct.dlm_create_lock* %9, i32 0, i32 24)
  %14 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %15 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %9, i32 0, i32 5
  store i32 %16, i32* %17, align 4
  %18 = load %struct.dlm_lock*, %struct.dlm_lock** %7, align 8
  %19 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %9, i32 0, i32 4
  store i32 %21, i32* %22, align 4
  %23 = load %struct.dlm_lock*, %struct.dlm_lock** %7, align 8
  %24 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %9, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %29 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %9, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @cpu_to_be32(i32 %33)
  %35 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %9, i32 0, i32 2
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %9, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %39 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %9, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcpy(i32 %37, i32 %41, i32 %43)
  %45 = load i32, i32* @DLM_CREATE_LOCK_MSG, align 4
  %46 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %47 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %50 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @o2net_send_message(i32 %45, i32 %48, %struct.dlm_create_lock* %9, i32 24, i32 %51, i32* %11)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %4
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @DLM_REJECTED, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %55
  %61 = load i32, i32* @ML_ERROR, align 4
  %62 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %63 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %9, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %9, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %70 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @mlog(i32 %61, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %66, i32 %68, i32 %71)
  %73 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %74 = call i32 @dlm_print_one_lock_resource(%struct.dlm_lock_resource* %73)
  %75 = call i32 (...) @BUG()
  br label %76

76:                                               ; preds = %60, %55
  br label %100

77:                                               ; preds = %4
  %78 = load i32, i32* @ML_ERROR, align 4
  %79 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %5, align 8
  %80 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %9, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.dlm_create_lock, %struct.dlm_create_lock* %9, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %6, align 8
  %88 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32, i8*, i32, i32, i32, i32, ...) @mlog(i32 %78, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %83, i32 %85, i32 %86, i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = call i64 @dlm_is_host_down(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %77
  %95 = load i32, i32* @DLM_RECOVERING, align 4
  store i32 %95, i32* %12, align 4
  br label %99

96:                                               ; preds = %77
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @dlm_err_to_dlm_status(i32 %97)
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %96, %94
  br label %100

100:                                              ; preds = %99, %76
  %101 = load i32, i32* %12, align 4
  ret i32 %101
}

declare dso_local i32 @memset(%struct.dlm_create_lock*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @o2net_send_message(i32, i32, %struct.dlm_create_lock*, i32, i32, i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @dlm_print_one_lock_resource(%struct.dlm_lock_resource*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @dlm_is_host_down(i32) #1

declare dso_local i32 @dlm_err_to_dlm_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
