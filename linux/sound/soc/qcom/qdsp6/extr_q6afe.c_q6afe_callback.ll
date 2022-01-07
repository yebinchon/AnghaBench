; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6afe.c_q6afe_callback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6afe.c_q6afe_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apr_device = type { i32 }
%struct.apr_resp_pkt = type { %struct.aprv2_ibasic_rsp_result_t*, i32, %struct.apr_hdr }
%struct.aprv2_ibasic_rsp_result_t = type { i32, i32 }
%struct.apr_hdr = type { i32, i32 }
%struct.q6afe = type { i32 }
%struct.q6afe_port = type { i32, i32, %struct.aprv2_ibasic_rsp_result_t }

@.str = private unnamed_addr constant [34 x i8] c"cmd = 0x%x returned error = 0x%x\0A\00", align 1
@q6afe_port_free = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Unknown cmd 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apr_device*, %struct.apr_resp_pkt*)* @q6afe_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6afe_callback(%struct.apr_device* %0, %struct.apr_resp_pkt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.apr_device*, align 8
  %5 = alloca %struct.apr_resp_pkt*, align 8
  %6 = alloca %struct.q6afe*, align 8
  %7 = alloca %struct.aprv2_ibasic_rsp_result_t*, align 8
  %8 = alloca %struct.apr_hdr*, align 8
  %9 = alloca %struct.q6afe_port*, align 8
  store %struct.apr_device* %0, %struct.apr_device** %4, align 8
  store %struct.apr_resp_pkt* %1, %struct.apr_resp_pkt** %5, align 8
  %10 = load %struct.apr_device*, %struct.apr_device** %4, align 8
  %11 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %10, i32 0, i32 0
  %12 = call %struct.q6afe* @dev_get_drvdata(i32* %11)
  store %struct.q6afe* %12, %struct.q6afe** %6, align 8
  %13 = load %struct.apr_resp_pkt*, %struct.apr_resp_pkt** %5, align 8
  %14 = getelementptr inbounds %struct.apr_resp_pkt, %struct.apr_resp_pkt* %13, i32 0, i32 2
  store %struct.apr_hdr* %14, %struct.apr_hdr** %8, align 8
  %15 = load %struct.apr_resp_pkt*, %struct.apr_resp_pkt** %5, align 8
  %16 = getelementptr inbounds %struct.apr_resp_pkt, %struct.apr_resp_pkt* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %80

20:                                               ; preds = %2
  %21 = load %struct.apr_resp_pkt*, %struct.apr_resp_pkt** %5, align 8
  %22 = getelementptr inbounds %struct.apr_resp_pkt, %struct.apr_resp_pkt* %21, i32 0, i32 0
  %23 = load %struct.aprv2_ibasic_rsp_result_t*, %struct.aprv2_ibasic_rsp_result_t** %22, align 8
  store %struct.aprv2_ibasic_rsp_result_t* %23, %struct.aprv2_ibasic_rsp_result_t** %7, align 8
  %24 = load %struct.apr_hdr*, %struct.apr_hdr** %8, align 8
  %25 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %78 [
    i32 128, label %27
  ]

27:                                               ; preds = %20
  %28 = load %struct.aprv2_ibasic_rsp_result_t*, %struct.aprv2_ibasic_rsp_result_t** %7, align 8
  %29 = getelementptr inbounds %struct.aprv2_ibasic_rsp_result_t, %struct.aprv2_ibasic_rsp_result_t* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load %struct.q6afe*, %struct.q6afe** %6, align 8
  %34 = getelementptr inbounds %struct.q6afe, %struct.q6afe* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.aprv2_ibasic_rsp_result_t*, %struct.aprv2_ibasic_rsp_result_t** %7, align 8
  %37 = getelementptr inbounds %struct.aprv2_ibasic_rsp_result_t, %struct.aprv2_ibasic_rsp_result_t* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.aprv2_ibasic_rsp_result_t*, %struct.aprv2_ibasic_rsp_result_t** %7, align 8
  %40 = getelementptr inbounds %struct.aprv2_ibasic_rsp_result_t, %struct.aprv2_ibasic_rsp_result_t* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %32, %27
  %44 = load %struct.aprv2_ibasic_rsp_result_t*, %struct.aprv2_ibasic_rsp_result_t** %7, align 8
  %45 = getelementptr inbounds %struct.aprv2_ibasic_rsp_result_t, %struct.aprv2_ibasic_rsp_result_t* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %69 [
    i32 130, label %47
    i32 131, label %47
    i32 132, label %47
    i32 129, label %47
  ]

47:                                               ; preds = %43, %43, %43, %43
  %48 = load %struct.q6afe*, %struct.q6afe** %6, align 8
  %49 = load %struct.apr_hdr*, %struct.apr_hdr** %8, align 8
  %50 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.q6afe_port* @q6afe_find_port(%struct.q6afe* %48, i32 %51)
  store %struct.q6afe_port* %52, %struct.q6afe_port** %9, align 8
  %53 = load %struct.q6afe_port*, %struct.q6afe_port** %9, align 8
  %54 = icmp ne %struct.q6afe_port* %53, null
  br i1 %54, label %55, label %68

55:                                               ; preds = %47
  %56 = load %struct.q6afe_port*, %struct.q6afe_port** %9, align 8
  %57 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %56, i32 0, i32 2
  %58 = load %struct.aprv2_ibasic_rsp_result_t*, %struct.aprv2_ibasic_rsp_result_t** %7, align 8
  %59 = bitcast %struct.aprv2_ibasic_rsp_result_t* %57 to i8*
  %60 = bitcast %struct.aprv2_ibasic_rsp_result_t* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 8, i1 false)
  %61 = load %struct.q6afe_port*, %struct.q6afe_port** %9, align 8
  %62 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %61, i32 0, i32 1
  %63 = call i32 @wake_up(i32* %62)
  %64 = load %struct.q6afe_port*, %struct.q6afe_port** %9, align 8
  %65 = getelementptr inbounds %struct.q6afe_port, %struct.q6afe_port* %64, i32 0, i32 0
  %66 = load i32, i32* @q6afe_port_free, align 4
  %67 = call i32 @kref_put(i32* %65, i32 %66)
  br label %68

68:                                               ; preds = %55, %47
  br label %77

69:                                               ; preds = %43
  %70 = load %struct.q6afe*, %struct.q6afe** %6, align 8
  %71 = getelementptr inbounds %struct.q6afe, %struct.q6afe* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.aprv2_ibasic_rsp_result_t*, %struct.aprv2_ibasic_rsp_result_t** %7, align 8
  %74 = getelementptr inbounds %struct.aprv2_ibasic_rsp_result_t, %struct.aprv2_ibasic_rsp_result_t* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %69, %68
  br label %79

78:                                               ; preds = %20
  br label %79

79:                                               ; preds = %78, %77
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %19
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.q6afe* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local %struct.q6afe_port* @q6afe_find_port(%struct.q6afe*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
