; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmunlock.c_dlm_send_remote_unlock_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmunlock.c_dlm_send_remote_unlock_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i64, i32 }
%struct.dlm_lock_resource = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.dlm_lock = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.dlm_unlock_lock* }
%struct.dlm_unlock_lock = type { i32, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.dlm_lockstatus = type { i32 }
%struct.kvec = type { i32, %struct.dlm_unlock_lock* }

@.str = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"%s:%.*s: this node became the master due to a migration, re-evaluate now\0A\00", align 1
@DLM_FORWARD = common dso_local global i32 0, align 4
@LKM_PUT_LVB = common dso_local global i32 0, align 4
@DLM_LVB_LEN = common dso_local global i32 0, align 4
@DLM_UNLOCK_LOCK_MSG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"master was in-progress.  retry\0A\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Error %d when sending message %u (key 0x%x) to node %u\0A\00", align 1
@DLM_NORMAL = common dso_local global i32 0, align 4
@DLM_NOLOCKMGR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*, %struct.dlm_lockstatus*, i32, i64)* @dlm_send_remote_unlock_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_send_remote_unlock_request(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, %struct.dlm_lock* %2, %struct.dlm_lockstatus* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dlm_ctxt*, align 8
  %9 = alloca %struct.dlm_lock_resource*, align 8
  %10 = alloca %struct.dlm_lock*, align 8
  %11 = alloca %struct.dlm_lockstatus*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.dlm_unlock_lock, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [2 x %struct.kvec], align 16
  %19 = alloca i64, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %8, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %9, align 8
  store %struct.dlm_lock* %2, %struct.dlm_lock** %10, align 8
  store %struct.dlm_lockstatus* %3, %struct.dlm_lockstatus** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %17, align 4
  store i64 1, i64* %19, align 8
  %20 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %9, align 8
  %21 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %9, align 8
  %25 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %27)
  %29 = load i64, i64* %13, align 8
  %30 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  %31 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %6
  %35 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  %36 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %9, align 8
  %39 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %9, align 8
  %43 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %41, i32 %45)
  %47 = load i32, i32* @DLM_FORWARD, align 4
  store i32 %47, i32* %7, align 4
  br label %144

48:                                               ; preds = %6
  %49 = call i32 @memset(%struct.dlm_unlock_lock* %14, i32 0, i32 24)
  %50 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  %51 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.dlm_unlock_lock, %struct.dlm_unlock_lock* %14, i32 0, i32 4
  store i64 %52, i64* %53, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @cpu_to_be32(i32 %54)
  %56 = getelementptr inbounds %struct.dlm_unlock_lock, %struct.dlm_unlock_lock* %14, i32 0, i32 3
  store i32 %55, i32* %56, align 4
  %57 = load %struct.dlm_lock*, %struct.dlm_lock** %10, align 8
  %58 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.dlm_unlock_lock, %struct.dlm_unlock_lock* %14, i32 0, i32 2
  store i32 %60, i32* %61, align 8
  %62 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %9, align 8
  %63 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.dlm_unlock_lock, %struct.dlm_unlock_lock* %14, i32 0, i32 0
  store i32 %65, i32* %66, align 8
  %67 = getelementptr inbounds %struct.dlm_unlock_lock, %struct.dlm_unlock_lock* %14, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %9, align 8
  %70 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.dlm_unlock_lock, %struct.dlm_unlock_lock* %14, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @memcpy(i32 %68, i32 %72, i32 %74)
  %76 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %18, i64 0, i64 0
  %77 = getelementptr inbounds %struct.kvec, %struct.kvec* %76, i32 0, i32 0
  store i32 24, i32* %77, align 16
  %78 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %18, i64 0, i64 0
  %79 = getelementptr inbounds %struct.kvec, %struct.kvec* %78, i32 0, i32 1
  store %struct.dlm_unlock_lock* %14, %struct.dlm_unlock_lock** %79, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @LKM_PUT_LVB, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %48
  %85 = load i32, i32* @DLM_LVB_LEN, align 4
  %86 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %18, i64 0, i64 1
  %87 = getelementptr inbounds %struct.kvec, %struct.kvec* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 16
  %88 = load %struct.dlm_lock*, %struct.dlm_lock** %10, align 8
  %89 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load %struct.dlm_unlock_lock*, %struct.dlm_unlock_lock** %91, align 8
  %93 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %18, i64 0, i64 1
  %94 = getelementptr inbounds %struct.kvec, %struct.kvec* %93, i32 0, i32 1
  store %struct.dlm_unlock_lock* %92, %struct.dlm_unlock_lock** %94, align 8
  %95 = load i64, i64* %19, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %19, align 8
  br label %97

97:                                               ; preds = %84, %48
  %98 = load i32, i32* @DLM_UNLOCK_LOCK_MSG, align 4
  %99 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  %100 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %18, i64 0, i64 0
  %103 = load i64, i64* %19, align 8
  %104 = load i64, i64* %13, align 8
  %105 = call i32 @o2net_send_message_vec(i32 %98, i32 %101, %struct.kvec* %102, i64 %103, i64 %104, i32* %17)
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %15, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %97
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* @DLM_FORWARD, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %108
  %115 = load i32, i32* %17, align 4
  store i32 %115, i32* %16, align 4
  br label %142

116:                                              ; preds = %97
  %117 = load i32, i32* @ML_ERROR, align 4
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* @DLM_UNLOCK_LOCK_MSG, align 4
  %120 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  %121 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i64, i64* %13, align 8
  %124 = call i32 (i32, i8*, ...) @mlog(i32 %117, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %118, i32 %119, i32 %122, i64 %123)
  %125 = load i32, i32* %15, align 4
  %126 = call i64 @dlm_is_host_down(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %116
  %129 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %8, align 8
  %130 = load i64, i64* %13, align 8
  %131 = call i64 @dlm_is_node_dead(%struct.dlm_ctxt* %129, i64 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = load i32, i32* @DLM_NORMAL, align 4
  store i32 %134, i32* %16, align 4
  br label %137

135:                                              ; preds = %128
  %136 = load i32, i32* @DLM_NOLOCKMGR, align 4
  store i32 %136, i32* %16, align 4
  br label %137

137:                                              ; preds = %135, %133
  br label %141

138:                                              ; preds = %116
  %139 = load i32, i32* %15, align 4
  %140 = call i32 @dlm_err_to_dlm_status(i32 %139)
  store i32 %140, i32* %16, align 4
  br label %141

141:                                              ; preds = %138, %137
  br label %142

142:                                              ; preds = %141, %114
  %143 = load i32, i32* %16, align 4
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %142, %34
  %145 = load i32, i32* %7, align 4
  ret i32 %145
}

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.dlm_unlock_lock*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @o2net_send_message_vec(i32, i32, %struct.kvec*, i64, i64, i32*) #1

declare dso_local i64 @dlm_is_host_down(i32) #1

declare dso_local i64 @dlm_is_node_dead(%struct.dlm_ctxt*, i64) #1

declare dso_local i32 @dlm_err_to_dlm_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
