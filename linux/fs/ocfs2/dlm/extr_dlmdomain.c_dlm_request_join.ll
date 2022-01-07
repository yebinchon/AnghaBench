; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_request_join.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_request_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dlm_query_join_request = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.dlm_query_join_packet = type { i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"querying node %d\0A\00", align 1
@O2NM_MAX_NODES = common dso_local global i32 0, align 4
@DLM_QUERY_JOIN_MSG = common dso_local global i32 0, align 4
@DLM_MOD_KEY = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Error %d when sending message %u (key 0x%x) to node %u\0A\00", align 1
@ML_NOTICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [170 x i8] c"This node requested DLM locking protocol %u.%u and filesystem locking protocol %u.%u.  At least one of the protocol versions on node %d is not compatible, disconnecting\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [88 x i8] c"Node %d responds JOIN_OK with DLM locking protocol %u.%u and fs locking protocol %u.%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"invalid response %d from node %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"status %d, node %d response is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, i32, i32*)* @dlm_request_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_request_join(%struct.dlm_ctxt* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.dlm_ctxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dlm_query_join_request, align 4
  %9 = alloca %struct.dlm_query_join_packet, align 4
  %10 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = call i32 @memset(%struct.dlm_query_join_request* %8, i32 0, i32 32)
  %14 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %15 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %8, i32 0, i32 5
  store i32 %16, i32* %17, align 4
  %18 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %19 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strlen(i32 %20)
  %22 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %8, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %8, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %26 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %8, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcpy(i32 %24, i32 %27, i32 %29)
  %31 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %8, i32 0, i32 2
  %32 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %33 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %32, i32 0, i32 1
  %34 = bitcast %struct.TYPE_3__* %31 to i8*
  %35 = bitcast %struct.TYPE_3__* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 8, i1 false)
  %36 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %8, i32 0, i32 1
  %37 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %38 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %37, i32 0, i32 0
  %39 = bitcast %struct.TYPE_4__* %36 to i8*
  %40 = bitcast %struct.TYPE_4__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 8, i1 false)
  %41 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %44 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @O2NM_MAX_NODES, align 4
  %47 = call i32 @byte_copymap(i32 %42, i32 %45, i32 %46)
  %48 = load i32, i32* @DLM_QUERY_JOIN_MSG, align 4
  %49 = load i32, i32* @DLM_MOD_KEY, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @o2net_send_message(i32 %48, i32 %49, %struct.dlm_query_join_request* %8, i32 32, i32 %50, i32* %10)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %3
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @ENOPROTOOPT, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load i32, i32* @ML_ERROR, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @DLM_QUERY_JOIN_MSG, align 4
  %63 = load i32, i32* @DLM_MOD_KEY, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 (i32, i8*, i32, ...) @mlog(i32 %60, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62, i32 %63, i32 %64)
  br label %149

66:                                               ; preds = %54, %3
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @dlm_query_join_wire_to_packet(i32 %67, %struct.dlm_query_join_packet* %9)
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @ENOPROTOOPT, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  store i32 0, i32* %7, align 4
  %74 = load i32*, i32** %6, align 8
  store i32 129, i32* %74, align 4
  br label %143

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %9, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %6, align 8
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %9, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  switch i32 %80, label %133 [
    i32 131, label %81
    i32 129, label %81
    i32 128, label %82
    i32 130, label %104
  ]

81:                                               ; preds = %75, %75
  br label %142

82:                                               ; preds = %75
  %83 = load i32, i32* @ML_NOTICE, align 4
  %84 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %85 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %89 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %93 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %97 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 (i32, i8*, i32, ...) @mlog(i32 %83, i8* getelementptr inbounds ([170 x i8], [170 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %91, i32 %95, i32 %99, i32 %100)
  %102 = load i32, i32* @EPROTO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %7, align 4
  br label %142

104:                                              ; preds = %75
  %105 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %9, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %108 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 4
  %110 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %9, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %113 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %117 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %121 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %125 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %129 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.3, i64 0, i64 0), i32 %115, i32 %119, i32 %123, i32 %127, i32 %131)
  br label %142

133:                                              ; preds = %75
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* @ML_ERROR, align 4
  %137 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %9, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %5, align 4
  %140 = call i32 (i32, i8*, i32, ...) @mlog(i32 %136, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %138, i32 %139)
  %141 = load i32*, i32** %6, align 8
  store i32 131, i32* %141, align 4
  br label %142

142:                                              ; preds = %133, %104, %82, %81
  br label %143

143:                                              ; preds = %142, %73
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %5, align 4
  %146 = load i32*, i32** %6, align 8
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %144, i32 %145, i32 %147)
  br label %149

149:                                              ; preds = %143, %59
  %150 = load i32, i32* %7, align 4
  ret i32 %150
}

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.dlm_query_join_request*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @byte_copymap(i32, i32, i32) #1

declare dso_local i32 @o2net_send_message(i32, i32, %struct.dlm_query_join_request*, i32, i32, i32*) #1

declare dso_local i32 @dlm_query_join_wire_to_packet(i32, %struct.dlm_query_join_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
