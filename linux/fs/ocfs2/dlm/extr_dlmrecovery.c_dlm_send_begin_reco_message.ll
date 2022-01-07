; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_send_begin_reco_message.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_send_begin_reco_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, i32, i32, i32 }
%struct.dlm_begin_reco = type { i32, i32 }
%struct.dlm_node_iter = type { i32 }
%struct.dlm_lock_resource = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"%s: dead node is %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"not sending begin reco to dead node %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"not sending begin reco to self\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"attempting to send begin reco msg to %d\0A\00", align 1
@DLM_BEGIN_RECO_MSG = common dso_local global i32 0, align 4
@ML_NOTICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"%s: node %u was down when sending begin reco msg (%d)\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [114 x i8] c"%s: trying to start recovery of node %u, but node %u is waiting for last recovery to complete, backoff for a bit\0A\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"begin reco of dlm %s to node %u returned %d\0A\00", align 1
@DLM_RECOVERY_LOCK_NAME = common dso_local global i32 0, align 4
@DLM_RECOVERY_LOCK_NAME_LEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"recovery lock not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, i32)* @dlm_send_begin_reco_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_send_begin_reco_message(%struct.dlm_ctxt* %0, i32 %1) #0 {
  %3 = alloca %struct.dlm_ctxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dlm_begin_reco, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dlm_node_iter, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dlm_lock_resource*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %12 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %17 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %16, i32 0, i32 3
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %20 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dlm_node_iter_init(i32 %21, %struct.dlm_node_iter* %7)
  %23 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %24 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %23, i32 0, i32 3
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load i32, i32* %4, align 4
  %27 = getelementptr inbounds %struct.dlm_node_iter, %struct.dlm_node_iter* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clear_bit(i32 %26, i32 %28)
  %30 = call i32 @memset(%struct.dlm_begin_reco* %5, i32 0, i32 8)
  %31 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %32 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.dlm_begin_reco, %struct.dlm_begin_reco* %5, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  %36 = getelementptr inbounds %struct.dlm_begin_reco, %struct.dlm_begin_reco* %5, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %129, %53, %44, %2
  %38 = call i32 @dlm_node_iter_next(%struct.dlm_node_iter* %7)
  store i32 %38, i32* %8, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %130

40:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %37

47:                                               ; preds = %40
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %50 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %37

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %127, %92, %55
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @DLM_BEGIN_RECO_MSG, align 4
  %62 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %63 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @o2net_send_message(i32 %61, i32 %64, %struct.dlm_begin_reco* %5, i32 8, i32 %65, i32* %9)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %56
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %69, %56
  %72 = load i32, i32* %6, align 4
  %73 = call i64 @dlm_is_host_down(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load i32, i32* @ML_NOTICE, align 4
  %77 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %78 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 (i32, i8*, ...) @mlog(i32 %76, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %79, i32 %80, i32 %81)
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %75, %71
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @EAGAIN, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @EAGAIN, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %88, %83
  %93 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %94 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.5, i64 0, i64 0), i32 %95, i32 %96, i32 %97)
  %99 = call i32 @msleep(i32 100)
  br label %56

100:                                              ; preds = %88
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %129

103:                                              ; preds = %100
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @mlog_errno(i32 %104)
  %106 = load i32, i32* @ML_ERROR, align 4
  %107 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %108 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32 (i32, i8*, ...) @mlog(i32 %106, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %109, i32 %110, i32 %111)
  %113 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %3, align 8
  %114 = load i32, i32* @DLM_RECOVERY_LOCK_NAME, align 4
  %115 = load i32, i32* @DLM_RECOVERY_LOCK_NAME_LEN, align 4
  %116 = call %struct.dlm_lock_resource* @dlm_lookup_lockres(%struct.dlm_ctxt* %113, i32 %114, i32 %115)
  store %struct.dlm_lock_resource* %116, %struct.dlm_lock_resource** %10, align 8
  %117 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %118 = icmp ne %struct.dlm_lock_resource* %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %103
  %120 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %121 = call i32 @dlm_print_one_lock_resource(%struct.dlm_lock_resource* %120)
  %122 = load %struct.dlm_lock_resource*, %struct.dlm_lock_resource** %10, align 8
  %123 = call i32 @dlm_lockres_put(%struct.dlm_lock_resource* %122)
  br label %127

124:                                              ; preds = %103
  %125 = load i32, i32* @ML_ERROR, align 4
  %126 = call i32 (i32, i8*, ...) @mlog(i32 %125, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %119
  %128 = call i32 @msleep(i32 100)
  br label %56

129:                                              ; preds = %100
  br label %37

130:                                              ; preds = %37
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dlm_node_iter_init(i32, %struct.dlm_node_iter*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @memset(%struct.dlm_begin_reco*, i32, i32) #1

declare dso_local i32 @dlm_node_iter_next(%struct.dlm_node_iter*) #1

declare dso_local i32 @o2net_send_message(i32, i32, %struct.dlm_begin_reco*, i32, i32, i32*) #1

declare dso_local i64 @dlm_is_host_down(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.dlm_lock_resource* @dlm_lookup_lockres(%struct.dlm_ctxt*, i32, i32) #1

declare dso_local i32 @dlm_print_one_lock_resource(%struct.dlm_lock_resource*) #1

declare dso_local i32 @dlm_lockres_put(%struct.dlm_lock_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
