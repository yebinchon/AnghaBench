; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_send_all_done_msg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_send_all_done_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32, i32 }
%struct.dlm_reco_data_done = type { i32, i32 }

@.str = private unnamed_addr constant [59 x i8] c"sending DATA DONE message to %u, my node=%u, dead node=%u\0A\00", align 1
@DLM_RECO_DATA_DONE_MSG = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"%s: Error %d send RECO_DATA_DONE to node %u to recover dead node %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ctxt*, i32, i32)* @dlm_send_all_done_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_send_all_done_msg(%struct.dlm_ctxt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dlm_ctxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dlm_reco_data_done, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = call i32 @memset(%struct.dlm_reco_data_done* %9, i32 0, i32 8)
  %11 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %12 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.dlm_reco_data_done, %struct.dlm_reco_data_done* %9, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %5, align 4
  %16 = getelementptr inbounds %struct.dlm_reco_data_done, %struct.dlm_reco_data_done* %9, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds %struct.dlm_reco_data_done, %struct.dlm_reco_data_done* %9, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.dlm_reco_data_done, %struct.dlm_reco_data_done* %9, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, i32, i32, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %19, i32 %21)
  %23 = load i32, i32* @DLM_RECO_DATA_DONE_MSG, align 4
  %24 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %25 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @o2net_send_message(i32 %23, i32 %26, %struct.dlm_reco_data_done* %9, i32 8, i32 %27, i32* %8)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %3
  %32 = load i32, i32* @ML_ERROR, align 4
  %33 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %34 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 (i32, i8*, i32, i32, i32, ...) @mlog(i32 %32, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @dlm_is_host_down(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %31
  %44 = call i32 (...) @BUG()
  br label %45

45:                                               ; preds = %43, %31
  br label %48

46:                                               ; preds = %3
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %46, %45
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @memset(%struct.dlm_reco_data_done*, i32, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @o2net_send_message(i32, i32, %struct.dlm_reco_data_done*, i32, i32, i32*) #1

declare dso_local i32 @dlm_is_host_down(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
