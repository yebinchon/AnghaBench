; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmast.c_dlm_send_proxy_ast_msg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmast.c_dlm_send_proxy_ast_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, i32 }
%struct.dlm_lock_resource = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.dlm_lock = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.dlm_proxy_ast* }
%struct.dlm_proxy_ast = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.kvec = type { i32, %struct.dlm_proxy_ast* }

@.str = private unnamed_addr constant [47 x i8] c"%s: res %.*s, to %u, type %d, blocked_type %d\0A\00", align 1
@DLM_LKSB_GET_LVB = common dso_local global i32 0, align 4
@LKM_GET_LVB = common dso_local global i32 0, align 4
@DLM_LVB_LEN = common dso_local global i32 0, align 4
@DLM_PROXY_AST_MSG = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"%s: res %.*s, error %d send AST to node %u\0A\00", align 1
@DLM_RECOVERING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"sent AST to node %u, it thinks this node is dead!\0A\00", align 1
@DLM_MIGRATING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"sent AST to node %u, it returned DLM_MIGRATING!\0A\00", align 1
@DLM_NORMAL = common dso_local global i32 0, align 4
@DLM_IVLOCKID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"AST to node %u returned %d!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_send_proxy_ast_msg(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, %struct.dlm_lock* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.dlm_ctxt*, align 8
  %8 = alloca %struct.dlm_lock_resource*, align 8
  %9 = alloca %struct.dlm_lock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.dlm_proxy_ast, align 4
  %15 = alloca [2 x %struct.kvec], align 16
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %7, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %8, align 8
  store %struct.dlm_lock* %2, %struct.dlm_lock** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i64 1, i64* %16, align 8
  %18 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %19 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %8, align 8
  %22 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %8, align 8
  %26 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dlm_lock*, %struct.dlm_lock** %9, align 8
  %30 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24, i32 %28, i32 %32, i32 %33, i32 %34)
  %36 = call i32 @memset(%struct.dlm_proxy_ast* %14, i32 0, i32 28)
  %37 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %38 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.dlm_proxy_ast, %struct.dlm_proxy_ast* %14, i32 0, i32 6
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %10, align 4
  %42 = getelementptr inbounds %struct.dlm_proxy_ast, %struct.dlm_proxy_ast* %14, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = getelementptr inbounds %struct.dlm_proxy_ast, %struct.dlm_proxy_ast* %14, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %8, align 8
  %46 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.dlm_proxy_ast, %struct.dlm_proxy_ast* %14, i32 0, i32 4
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.dlm_proxy_ast, %struct.dlm_proxy_ast* %14, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %8, align 8
  %53 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.dlm_proxy_ast, %struct.dlm_proxy_ast* %14, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @memcpy(i32 %51, i32 %55, i32 %57)
  %59 = load %struct.dlm_lock*, %struct.dlm_lock** %9, align 8
  %60 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.dlm_proxy_ast, %struct.dlm_proxy_ast* %14, i32 0, i32 3
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %15, i64 0, i64 0
  %65 = getelementptr inbounds %struct.kvec, %struct.kvec* %64, i32 0, i32 0
  store i32 28, i32* %65, align 16
  %66 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %15, i64 0, i64 0
  %67 = getelementptr inbounds %struct.kvec, %struct.kvec* %66, i32 0, i32 1
  store %struct.dlm_proxy_ast* %14, %struct.dlm_proxy_ast** %67, align 8
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @DLM_LKSB_GET_LVB, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %6
  %73 = getelementptr inbounds %struct.dlm_proxy_ast, %struct.dlm_proxy_ast* %14, i32 0, i32 2
  %74 = load i32, i32* @LKM_GET_LVB, align 4
  %75 = call i32 @be32_add_cpu(i32* %73, i32 %74)
  %76 = load i32, i32* @DLM_LVB_LEN, align 4
  %77 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %15, i64 0, i64 1
  %78 = getelementptr inbounds %struct.kvec, %struct.kvec* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 16
  %79 = load %struct.dlm_lock*, %struct.dlm_lock** %9, align 8
  %80 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.dlm_proxy_ast*, %struct.dlm_proxy_ast** %82, align 8
  %84 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %15, i64 0, i64 1
  %85 = getelementptr inbounds %struct.kvec, %struct.kvec* %84, i32 0, i32 1
  store %struct.dlm_proxy_ast* %83, %struct.dlm_proxy_ast** %85, align 8
  %86 = load i64, i64* %16, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %16, align 8
  br label %88

88:                                               ; preds = %72, %6
  %89 = load i32, i32* @DLM_PROXY_AST_MSG, align 4
  %90 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %91 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %15, i64 0, i64 0
  %94 = load i64, i64* %16, align 8
  %95 = load %struct.dlm_lock*, %struct.dlm_lock** %9, align 8
  %96 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @o2net_send_message_vec(i32 %89, i32 %92, %struct.kvec* %93, i64 %94, i32 %98, i32* %17)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %121

102:                                              ; preds = %88
  %103 = load i32, i32* @ML_ERROR, align 4
  %104 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %7, align 8
  %105 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %8, align 8
  %108 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %8, align 8
  %112 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load %struct.dlm_lock*, %struct.dlm_lock** %9, align 8
  %117 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i32, i8*, i32, ...) @mlog(i32 %103, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %110, i32 %114, i32 %115, i32 %119)
  br label %164

121:                                              ; preds = %88
  %122 = load i32, i32* %17, align 4
  %123 = load i32, i32* @DLM_RECOVERING, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %121
  %126 = load i32, i32* @ML_ERROR, align 4
  %127 = load %struct.dlm_lock*, %struct.dlm_lock** %9, align 8
  %128 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 (i32, i8*, i32, ...) @mlog(i32 %126, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  %132 = call i32 (...) @BUG()
  br label %163

133:                                              ; preds = %121
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* @DLM_MIGRATING, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %133
  %138 = load i32, i32* @ML_ERROR, align 4
  %139 = load %struct.dlm_lock*, %struct.dlm_lock** %9, align 8
  %140 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 (i32, i8*, i32, ...) @mlog(i32 %138, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %142)
  %144 = call i32 (...) @BUG()
  br label %162

145:                                              ; preds = %133
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* @DLM_NORMAL, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %161

149:                                              ; preds = %145
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* @DLM_IVLOCKID, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %149
  %154 = load i32, i32* @ML_ERROR, align 4
  %155 = load %struct.dlm_lock*, %struct.dlm_lock** %9, align 8
  %156 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %17, align 4
  %160 = call i32 (i32, i8*, i32, ...) @mlog(i32 %154, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %153, %149, %145
  br label %162

162:                                              ; preds = %161, %137
  br label %163

163:                                              ; preds = %162, %125
  store i32 0, i32* %13, align 4
  br label %164

164:                                              ; preds = %163, %102
  %165 = load i32, i32* %13, align 4
  ret i32 %165
}

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.dlm_proxy_ast*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @be32_add_cpu(i32*, i32) #1

declare dso_local i32 @o2net_send_message_vec(i32, i32, %struct.kvec*, i64, i32, i32*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
