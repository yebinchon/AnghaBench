; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_init_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfssvc.c_nfsd_init_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_program = type { i32 }
%struct.svc_process_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nfsd_net = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@NFSD_TEST = common dso_local global i32 0, align 4
@NFSD_NRVERS = common dso_local global i32 0, align 4
@NFSD_MINVERS = common dso_local global i32 0, align 4
@rpc_prog_unavail = common dso_local global i32 0, align 4
@rpc_prog_mismatch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, %struct.svc_program*, %struct.svc_process_info*)* @nfsd_init_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd_init_request(%struct.svc_rqst* %0, %struct.svc_program* %1, %struct.svc_process_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.svc_program*, align 8
  %7 = alloca %struct.svc_process_info*, align 8
  %8 = alloca %struct.nfsd_net*, align 8
  %9 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.svc_program* %1, %struct.svc_program** %6, align 8
  store %struct.svc_process_info* %2, %struct.svc_process_info** %7, align 8
  %10 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %11 = call i32 @SVC_NET(%struct.svc_rqst* %10)
  %12 = load i32, i32* @nfsd_net_id, align 4
  %13 = call %struct.nfsd_net* @net_generic(i32 %11, i32 %12)
  store %struct.nfsd_net* %13, %struct.nfsd_net** %8, align 8
  %14 = load %struct.nfsd_net*, %struct.nfsd_net** %8, align 8
  %15 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %16 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NFSD_TEST, align 4
  %19 = call i64 @nfsd_vers(%struct.nfsd_net* %14, i32 %17, i32 %18)
  %20 = call i64 @likely(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %24 = load %struct.svc_program*, %struct.svc_program** %6, align 8
  %25 = load %struct.svc_process_info*, %struct.svc_process_info** %7, align 8
  %26 = call i32 @svc_generic_init_request(%struct.svc_rqst* %23, %struct.svc_program* %24, %struct.svc_process_info* %25)
  store i32 %26, i32* %4, align 4
  br label %89

27:                                               ; preds = %3
  %28 = load i32, i32* @NFSD_NRVERS, align 4
  %29 = load %struct.svc_process_info*, %struct.svc_process_info** %7, align 8
  %30 = getelementptr inbounds %struct.svc_process_info, %struct.svc_process_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @NFSD_MINVERS, align 4
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %49, %27
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @NFSD_NRVERS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load %struct.nfsd_net*, %struct.nfsd_net** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @NFSD_TEST, align 4
  %41 = call i64 @nfsd_vers(%struct.nfsd_net* %38, i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.svc_process_info*, %struct.svc_process_info** %7, align 8
  %46 = getelementptr inbounds %struct.svc_process_info, %struct.svc_process_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  br label %52

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %33

52:                                               ; preds = %43, %33
  %53 = load %struct.svc_process_info*, %struct.svc_process_info** %7, align 8
  %54 = getelementptr inbounds %struct.svc_process_info, %struct.svc_process_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @NFSD_NRVERS, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @rpc_prog_unavail, align 4
  store i32 %60, i32* %4, align 4
  br label %89

61:                                               ; preds = %52
  %62 = load i32, i32* @NFSD_MINVERS, align 4
  %63 = load %struct.svc_process_info*, %struct.svc_process_info** %7, align 8
  %64 = getelementptr inbounds %struct.svc_process_info, %struct.svc_process_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @NFSD_NRVERS, align 4
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %84, %61
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @NFSD_MINVERS, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %68
  %73 = load %struct.nfsd_net*, %struct.nfsd_net** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @NFSD_TEST, align 4
  %76 = call i64 @nfsd_vers(%struct.nfsd_net* %73, i32 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.svc_process_info*, %struct.svc_process_info** %7, align 8
  %81 = getelementptr inbounds %struct.svc_process_info, %struct.svc_process_info* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 4
  br label %87

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %9, align 4
  br label %68

87:                                               ; preds = %78, %68
  %88 = load i32, i32* @rpc_prog_mismatch, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %87, %59, %22
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #1

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #1

declare dso_local i64 @likely(i64) #1

declare dso_local i64 @nfsd_vers(%struct.nfsd_net*, i32, i32) #1

declare dso_local i32 @svc_generic_init_request(%struct.svc_rqst*, %struct.svc_program*, %struct.svc_process_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
