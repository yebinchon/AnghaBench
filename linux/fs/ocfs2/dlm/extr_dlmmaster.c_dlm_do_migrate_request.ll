; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_do_migrate_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmmaster.c_dlm_do_migrate_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, i32, i32 }
%struct.dlm_lock_resource = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dlm_node_iter = type { i32 }
%struct.dlm_migrate_request = type { i32, i32, i32, i32 }

@DLM_MIGRATE_REQUEST_MSG = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"%s: res %.*s, Error %d send MIGRATE_REQUEST to node %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"unhandled error=%d!\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"migrate request (node %u) returned %d!\0A\00", align 1
@DLM_MIGRATE_RESPONSE_MASTERY_REF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"%s:%.*s: need ref for node %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"returning ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i32, i32, %struct.dlm_node_iter*)* @dlm_do_migrate_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_do_migrate_request(%struct.dlm_ctxt* %0, %struct.dlm_lock_resource* %1, i32 %2, i32 %3, %struct.dlm_node_iter* %4) #0 {
  %6 = alloca %struct.dlm_ctxt*, align 8
  %7 = alloca %struct.dlm_lock_resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dlm_node_iter*, align 8
  %11 = alloca %struct.dlm_migrate_request, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %6, align 8
  store %struct.dlm_lock_resource* %1, %struct.dlm_lock_resource** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.dlm_node_iter* %4, %struct.dlm_node_iter** %10, align 8
  store i32 0, i32* %14, align 4
  %16 = call i32 @memset(%struct.dlm_migrate_request* %11, i32 0, i32 16)
  %17 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %18 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.dlm_migrate_request, %struct.dlm_migrate_request* %11, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.dlm_migrate_request, %struct.dlm_migrate_request* %11, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %25 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.dlm_migrate_request, %struct.dlm_migrate_request* %11, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcpy(i32 %23, i32 %27, i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = getelementptr inbounds %struct.dlm_migrate_request, %struct.dlm_migrate_request* %11, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  %34 = getelementptr inbounds %struct.dlm_migrate_request, %struct.dlm_migrate_request* %11, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %144, %65, %47, %5
  %36 = load %struct.dlm_node_iter*, %struct.dlm_node_iter** %10, align 8
  %37 = call i32 @dlm_node_iter_next(%struct.dlm_node_iter* %36)
  store i32 %37, i32* %15, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %145

39:                                               ; preds = %35
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %39
  br label %35

48:                                               ; preds = %43
  %49 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %50 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %49, i32 0, i32 2
  %51 = call i32 @spin_lock(i32* %50)
  %52 = load i32, i32* %15, align 4
  %53 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %54 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @test_bit(i32 %52, i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %13, align 4
  %60 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %61 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %60, i32 0, i32 2
  %62 = call i32 @spin_unlock(i32* %61)
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %48
  %66 = load i32, i32* %15, align 4
  %67 = load %struct.dlm_node_iter*, %struct.dlm_node_iter** %10, align 8
  %68 = getelementptr inbounds %struct.dlm_node_iter, %struct.dlm_node_iter* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @clear_bit(i32 %66, i32 %69)
  br label %35

71:                                               ; preds = %48
  %72 = load i32, i32* @DLM_MIGRATE_REQUEST_MSG, align 4
  %73 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %74 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @o2net_send_message(i32 %72, i32 %75, %struct.dlm_migrate_request* %11, i32 16, i32 %76, i32* %14)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %106

80:                                               ; preds = %71
  %81 = load i32, i32* @ML_ERROR, align 4
  %82 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %83 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.dlm_migrate_request, %struct.dlm_migrate_request* %11, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.dlm_migrate_request, %struct.dlm_migrate_request* %11, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %15, align 4
  %91 = call i32 (i32, i8*, i32, ...) @mlog(i32 %81, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %86, i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @dlm_is_host_down(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %80
  %96 = load i32, i32* @ML_ERROR, align 4
  %97 = load i32, i32* %12, align 4
  %98 = call i32 (i32, i8*, i32, ...) @mlog(i32 %96, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = call i32 (...) @BUG()
  br label %100

100:                                              ; preds = %95, %80
  %101 = load i32, i32* %15, align 4
  %102 = load %struct.dlm_node_iter*, %struct.dlm_node_iter** %10, align 8
  %103 = getelementptr inbounds %struct.dlm_node_iter, %struct.dlm_node_iter* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @clear_bit(i32 %101, i32 %104)
  store i32 0, i32* %12, align 4
  br label %144

106:                                              ; preds = %71
  %107 = load i32, i32* %14, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %14, align 4
  %112 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load i32, i32* %14, align 4
  store i32 %113, i32* %12, align 4
  br label %143

114:                                              ; preds = %106
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* @DLM_MIGRATE_RESPONSE_MASTERY_REF, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %142

118:                                              ; preds = %114
  %119 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %120 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %123 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %127 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %15, align 4
  %131 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %121, i32 %125, i32 %129, i32 %130)
  %132 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %133 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %132, i32 0, i32 0
  %134 = call i32 @spin_lock(i32* %133)
  %135 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %6, align 8
  %136 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %137 = load i32, i32* %15, align 4
  %138 = call i32 @dlm_lockres_set_refmap_bit(%struct.dlm_ctxt* %135, %struct.dlm_lock_resource* %136, i32 %137)
  %139 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %7, align 8
  %140 = getelementptr inbounds %struct.dlm_lock_resource, %struct.dlm_lock_resource* %139, i32 0, i32 0
  %141 = call i32 @spin_unlock(i32* %140)
  br label %142

142:                                              ; preds = %118, %114
  br label %143

143:                                              ; preds = %142, %109
  br label %144

144:                                              ; preds = %143, %100
  br label %35

145:                                              ; preds = %35
  %146 = load i32, i32* %12, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i32, i32* %12, align 4
  %150 = call i32 @mlog_errno(i32 %149)
  br label %151

151:                                              ; preds = %148, %145
  %152 = load i32, i32* %12, align 4
  %153 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* %12, align 4
  ret i32 %154
}

declare dso_local i32 @memset(%struct.dlm_migrate_request*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @dlm_node_iter_next(%struct.dlm_node_iter*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @o2net_send_message(i32, i32, %struct.dlm_migrate_request*, i32, i32, i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @dlm_is_host_down(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dlm_lockres_set_refmap_bit(%struct.dlm_ctxt*, %struct.dlm_lock_resource*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
