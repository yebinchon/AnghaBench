; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_request_all_locks_handler.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_request_all_locks_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2net_msg = type { i64 }
%struct.dlm_ctxt = type { i32, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.dlm_lock_request = type { i64, i32 }
%struct.dlm_work_item = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"%s: node %u sent dead_node=%u, but local dead_node is %u\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@dlm_request_all_locks_worker = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_request_all_locks_handler(%struct.o2net_msg* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.o2net_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.dlm_ctxt*, align 8
  %11 = alloca %struct.dlm_lock_request*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.dlm_work_item*, align 8
  store %struct.o2net_msg* %0, %struct.o2net_msg** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.dlm_ctxt*
  store %struct.dlm_ctxt* %15, %struct.dlm_ctxt** %10, align 8
  %16 = load %struct.o2net_msg*, %struct.o2net_msg** %6, align 8
  %17 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.dlm_lock_request*
  store %struct.dlm_lock_request* %19, %struct.dlm_lock_request** %11, align 8
  store i8* null, i8** %12, align 8
  store %struct.dlm_work_item* null, %struct.dlm_work_item** %13, align 8
  %20 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %21 = call i32 @dlm_grab(%struct.dlm_ctxt* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %131

26:                                               ; preds = %4
  %27 = load %struct.dlm_lock_request*, %struct.dlm_lock_request** %11, align 8
  %28 = getelementptr inbounds %struct.dlm_lock_request, %struct.dlm_lock_request* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %31 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %29, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %26
  %36 = load i32, i32* @ML_ERROR, align 4
  %37 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %38 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.dlm_lock_request*, %struct.dlm_lock_request** %11, align 8
  %41 = getelementptr inbounds %struct.dlm_lock_request, %struct.dlm_lock_request* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.dlm_lock_request*, %struct.dlm_lock_request** %11, align 8
  %44 = getelementptr inbounds %struct.dlm_lock_request, %struct.dlm_lock_request* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %47 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @mlog(i32 %36, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42, i64 %45, i64 %49)
  %51 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %52 = call i32 @dlm_print_reco_node_status(%struct.dlm_ctxt* %51)
  %53 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %54 = call i32 @dlm_put(%struct.dlm_ctxt* %53)
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %131

57:                                               ; preds = %26
  %58 = load %struct.dlm_lock_request*, %struct.dlm_lock_request** %11, align 8
  %59 = getelementptr inbounds %struct.dlm_lock_request, %struct.dlm_lock_request* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %62 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %60, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @BUG_ON(i32 %66)
  %68 = load i32, i32* @GFP_NOFS, align 4
  %69 = call %struct.dlm_work_item* @kzalloc(i32 24, i32 %68)
  store %struct.dlm_work_item* %69, %struct.dlm_work_item** %13, align 8
  %70 = load %struct.dlm_work_item*, %struct.dlm_work_item** %13, align 8
  %71 = icmp ne %struct.dlm_work_item* %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %57
  %73 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %74 = call i32 @dlm_put(%struct.dlm_ctxt* %73)
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %131

77:                                               ; preds = %57
  %78 = load i32, i32* @GFP_NOFS, align 4
  %79 = call i64 @__get_free_page(i32 %78)
  %80 = inttoptr i64 %79 to i8*
  store i8* %80, i8** %12, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %90, label %83

83:                                               ; preds = %77
  %84 = load %struct.dlm_work_item*, %struct.dlm_work_item** %13, align 8
  %85 = call i32 @kfree(%struct.dlm_work_item* %84)
  %86 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %87 = call i32 @dlm_put(%struct.dlm_ctxt* %86)
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %131

90:                                               ; preds = %77
  %91 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %92 = call i32 @dlm_grab(%struct.dlm_ctxt* %91)
  %93 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %94 = load %struct.dlm_work_item*, %struct.dlm_work_item** %13, align 8
  %95 = load i32, i32* @dlm_request_all_locks_worker, align 4
  %96 = load i8*, i8** %12, align 8
  %97 = call i32 @dlm_init_work_item(%struct.dlm_ctxt* %93, %struct.dlm_work_item* %94, i32 %95, i8* %96)
  %98 = load %struct.dlm_lock_request*, %struct.dlm_lock_request** %11, align 8
  %99 = getelementptr inbounds %struct.dlm_lock_request, %struct.dlm_lock_request* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.dlm_work_item*, %struct.dlm_work_item** %13, align 8
  %102 = getelementptr inbounds %struct.dlm_work_item, %struct.dlm_work_item* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  store i32 %100, i32* %104, align 8
  %105 = load %struct.dlm_lock_request*, %struct.dlm_lock_request** %11, align 8
  %106 = getelementptr inbounds %struct.dlm_lock_request, %struct.dlm_lock_request* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.dlm_work_item*, %struct.dlm_work_item** %13, align 8
  %109 = getelementptr inbounds %struct.dlm_work_item, %struct.dlm_work_item* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store i64 %107, i64* %111, align 8
  %112 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %113 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %112, i32 0, i32 2
  %114 = call i32 @spin_lock(i32* %113)
  %115 = load %struct.dlm_work_item*, %struct.dlm_work_item** %13, align 8
  %116 = getelementptr inbounds %struct.dlm_work_item, %struct.dlm_work_item* %115, i32 0, i32 0
  %117 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %118 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %117, i32 0, i32 3
  %119 = call i32 @list_add_tail(i32* %116, i32* %118)
  %120 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %121 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %120, i32 0, i32 2
  %122 = call i32 @spin_unlock(i32* %121)
  %123 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %124 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %127 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %126, i32 0, i32 0
  %128 = call i32 @queue_work(i32 %125, i32* %127)
  %129 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %130 = call i32 @dlm_put(%struct.dlm_ctxt* %129)
  store i32 0, i32* %5, align 4
  br label %131

131:                                              ; preds = %90, %83, %72, %35, %23
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @dlm_grab(%struct.dlm_ctxt*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i64, i64) #1

declare dso_local i32 @dlm_print_reco_node_status(%struct.dlm_ctxt*) #1

declare dso_local i32 @dlm_put(%struct.dlm_ctxt*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.dlm_work_item* @kzalloc(i32, i32) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @kfree(%struct.dlm_work_item*) #1

declare dso_local i32 @dlm_init_work_item(%struct.dlm_ctxt*, %struct.dlm_work_item*, i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
