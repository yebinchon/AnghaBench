; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmconvert.c_dlm_send_remote_convert_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmconvert.c_dlm_send_remote_convert_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32 }
%struct.dlm_lock_resource = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.dlm_lock = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.dlm_convert_lock* }
%struct.dlm_convert_lock = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.kvec = type { i32, %struct.dlm_convert_lock* }

@.str = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1
@LKM_PUT_LVB = common dso_local global i32 0, align 4
@DLM_LVB_LEN = common dso_local global i32 0, align 4
@DLM_CONVERT_LOCK_MSG = common dso_local global i32 0, align 4
@DLM_RECOVERING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"node %u returned DLM_RECOVERING from convert message!\0A\00", align 1
@DLM_MIGRATING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"node %u returned DLM_MIGRATING from convert message!\0A\00", align 1
@DLM_FORWARD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"node %u returned DLM_FORWARD from convert message!\0A\00", align 1
@DLM_NORMAL = common dso_local global i32 0, align 4
@DLM_NOTQUEUED = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"Error %d when sending message %u (key 0x%x) to node %u\0A\00", align 1
@DLM_NODE_DEATH_WAIT_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [64 x i8] c"node %u died so returning DLM_RECOVERING from convert message!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, %struct.dlm_lock_resource*, %struct.dlm_lock*, i32, i32)* @dlm_send_remote_convert_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_send_remote_convert_request(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, %struct.dlm_lock* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dlm_ctxt*, align 8
  %7 = alloca %struct.dlm_lock_resource*, align 8
  %8 = alloca %struct.dlm_lock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dlm_convert_lock, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [2 x %struct.kvec], align 16
  %16 = alloca i64, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %6, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %7, align 8
  store %struct.dlm_lock* %2, %struct.dlm_lock** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %14, align 4
  store i64 1, i64* %16, align 8
  %17 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %18 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %22 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24)
  %26 = call i32 @memset(%struct.dlm_convert_lock* %11, i32 0, i32 24)
  %27 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %28 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.dlm_convert_lock, %struct.dlm_convert_lock* %11, i32 0, i32 5
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %10, align 4
  %32 = getelementptr inbounds %struct.dlm_convert_lock, %struct.dlm_convert_lock* %11, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %34 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.dlm_convert_lock, %struct.dlm_convert_lock* %11, i32 0, i32 4
  store i32 %36, i32* %37, align 4
  %38 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %39 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.dlm_convert_lock, %struct.dlm_convert_lock* %11, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @cpu_to_be32(i32 %43)
  %45 = getelementptr inbounds %struct.dlm_convert_lock, %struct.dlm_convert_lock* %11, i32 0, i32 3
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds %struct.dlm_convert_lock, %struct.dlm_convert_lock* %11, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %49 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.dlm_convert_lock, %struct.dlm_convert_lock* %11, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @memcpy(i32 %47, i32 %51, i32 %53)
  %55 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %15, i64 0, i64 0
  %56 = getelementptr inbounds %struct.kvec, %struct.kvec* %55, i32 0, i32 0
  store i32 24, i32* %56, align 16
  %57 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %15, i64 0, i64 0
  %58 = getelementptr inbounds %struct.kvec, %struct.kvec* %57, i32 0, i32 1
  store %struct.dlm_convert_lock* %11, %struct.dlm_convert_lock** %58, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @LKM_PUT_LVB, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %5
  %64 = load i32, i32* @DLM_LVB_LEN, align 4
  %65 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %15, i64 0, i64 1
  %66 = getelementptr inbounds %struct.kvec, %struct.kvec* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 16
  %67 = load %struct.dlm_lock*, %struct.dlm_lock** %8, align 8
  %68 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load %struct.dlm_convert_lock*, %struct.dlm_convert_lock** %70, align 8
  %72 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %15, i64 0, i64 1
  %73 = getelementptr inbounds %struct.kvec, %struct.kvec* %72, i32 0, i32 1
  store %struct.dlm_convert_lock* %71, %struct.dlm_convert_lock** %73, align 8
  %74 = load i64, i64* %16, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %16, align 8
  br label %76

76:                                               ; preds = %63, %5
  %77 = load i32, i32* @DLM_CONVERT_LOCK_MSG, align 4
  %78 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %79 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %15, i64 0, i64 0
  %82 = load i64, i64* %16, align 8
  %83 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %84 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @o2net_send_message_vec(i32 %77, i32 %80, %struct.kvec* %81, i64 %82, i32 %85, i32* %14)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %132

89:                                               ; preds = %76
  %90 = load i32, i32* %14, align 4
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* @DLM_RECOVERING, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %96 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  br label %131

99:                                               ; preds = %89
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @DLM_MIGRATING, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %105 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  br label %130

108:                                              ; preds = %99
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @DLM_FORWARD, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %114 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %115)
  br label %129

117:                                              ; preds = %108
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* @DLM_NORMAL, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %117
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* @DLM_NOTQUEUED, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @dlm_error(i32 %126)
  br label %128

128:                                              ; preds = %125, %121, %117
  br label %129

129:                                              ; preds = %128, %112
  br label %130

130:                                              ; preds = %129, %103
  br label %131

131:                                              ; preds = %130, %94
  br label %162

132:                                              ; preds = %76
  %133 = load i32, i32* @ML_ERROR, align 4
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* @DLM_CONVERT_LOCK_MSG, align 4
  %136 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %137 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %140 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i32, i8*, i32, ...) @mlog(i32 %133, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %134, i32 %135, i32 %138, i32 %141)
  %143 = load i32, i32* %12, align 4
  %144 = call i64 @dlm_is_host_down(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %132
  %147 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %148 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %149 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @DLM_NODE_DEATH_WAIT_MAX, align 4
  %152 = call i32 @dlm_wait_for_node_death(%struct.dlm_ctxt* %147, i32 %150, i32 %151)
  %153 = load i32, i32* @DLM_RECOVERING, align 4
  store i32 %153, i32* %13, align 4
  %154 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %155 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i32 %156)
  br label %161

158:                                              ; preds = %132
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @dlm_err_to_dlm_status(i32 %159)
  store i32 %160, i32* %13, align 4
  br label %161

161:                                              ; preds = %158, %146
  br label %162

162:                                              ; preds = %161, %131
  %163 = load i32, i32* %13, align 4
  ret i32 %163
}

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.dlm_convert_lock*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @o2net_send_message_vec(i32, i32, %struct.kvec*, i64, i32, i32*) #1

declare dso_local i32 @dlm_error(i32) #1

declare dso_local i64 @dlm_is_host_down(i32) #1

declare dso_local i32 @dlm_wait_for_node_death(%struct.dlm_ctxt*, i32, i32) #1

declare dso_local i32 @dlm_err_to_dlm_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
