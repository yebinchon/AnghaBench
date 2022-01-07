; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6core.c_q6core_callback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6core.c_q6core_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apr_device = type { i32 }
%struct.apr_resp_pkt = type { %struct.avcs_cmdrsp_get_version*, %struct.apr_hdr }
%struct.avcs_cmdrsp_get_version = type { i32, i32, i32 }
%struct.apr_hdr = type { i32 }
%struct.q6core = type { i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.aprv2_ibasic_rsp_result_t = type { i32, i32, i32 }
%struct.avcs_cmdrsp_get_fwk_version = type { i32, i32, i32 }

@ADSP_EUNSUPPORTED = common dso_local global i32 0, align 4
@svc_api_info = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Message id from adsp core svc: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apr_device*, %struct.apr_resp_pkt*)* @q6core_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6core_callback(%struct.apr_device* %0, %struct.apr_resp_pkt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.apr_device*, align 8
  %5 = alloca %struct.apr_resp_pkt*, align 8
  %6 = alloca %struct.q6core*, align 8
  %7 = alloca %struct.aprv2_ibasic_rsp_result_t*, align 8
  %8 = alloca %struct.apr_hdr*, align 8
  %9 = alloca %struct.avcs_cmdrsp_get_fwk_version*, align 8
  %10 = alloca %struct.avcs_cmdrsp_get_version*, align 8
  store %struct.apr_device* %0, %struct.apr_device** %4, align 8
  store %struct.apr_resp_pkt* %1, %struct.apr_resp_pkt** %5, align 8
  %11 = load %struct.apr_device*, %struct.apr_device** %4, align 8
  %12 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %11, i32 0, i32 0
  %13 = call %struct.q6core* @dev_get_drvdata(i32* %12)
  store %struct.q6core* %13, %struct.q6core** %6, align 8
  %14 = load %struct.apr_resp_pkt*, %struct.apr_resp_pkt** %5, align 8
  %15 = getelementptr inbounds %struct.apr_resp_pkt, %struct.apr_resp_pkt* %14, i32 0, i32 1
  store %struct.apr_hdr* %15, %struct.apr_hdr** %8, align 8
  %16 = load %struct.apr_resp_pkt*, %struct.apr_resp_pkt** %5, align 8
  %17 = getelementptr inbounds %struct.apr_resp_pkt, %struct.apr_resp_pkt* %16, i32 0, i32 0
  %18 = load %struct.avcs_cmdrsp_get_version*, %struct.avcs_cmdrsp_get_version** %17, align 8
  %19 = bitcast %struct.avcs_cmdrsp_get_version* %18 to %struct.aprv2_ibasic_rsp_result_t*
  store %struct.aprv2_ibasic_rsp_result_t* %19, %struct.aprv2_ibasic_rsp_result_t** %7, align 8
  %20 = load %struct.apr_hdr*, %struct.apr_hdr** %8, align 8
  %21 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %138 [
    i32 134, label %23
    i32 132, label %68
    i32 128, label %99
    i32 133, label %128
  ]

23:                                               ; preds = %2
  %24 = load %struct.apr_resp_pkt*, %struct.apr_resp_pkt** %5, align 8
  %25 = getelementptr inbounds %struct.apr_resp_pkt, %struct.apr_resp_pkt* %24, i32 0, i32 0
  %26 = load %struct.avcs_cmdrsp_get_version*, %struct.avcs_cmdrsp_get_version** %25, align 8
  %27 = bitcast %struct.avcs_cmdrsp_get_version* %26 to %struct.aprv2_ibasic_rsp_result_t*
  store %struct.aprv2_ibasic_rsp_result_t* %27, %struct.aprv2_ibasic_rsp_result_t** %7, align 8
  %28 = load %struct.aprv2_ibasic_rsp_result_t*, %struct.aprv2_ibasic_rsp_result_t** %7, align 8
  %29 = getelementptr inbounds %struct.aprv2_ibasic_rsp_result_t, %struct.aprv2_ibasic_rsp_result_t* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %67 [
    i32 129, label %31
    i32 130, label %43
    i32 131, label %55
  ]

31:                                               ; preds = %23
  %32 = load %struct.aprv2_ibasic_rsp_result_t*, %struct.aprv2_ibasic_rsp_result_t** %7, align 8
  %33 = getelementptr inbounds %struct.aprv2_ibasic_rsp_result_t, %struct.aprv2_ibasic_rsp_result_t* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ADSP_EUNSUPPORTED, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.q6core*, %struct.q6core** %6, align 8
  %39 = getelementptr inbounds %struct.q6core, %struct.q6core* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  br label %40

40:                                               ; preds = %37, %31
  %41 = load %struct.q6core*, %struct.q6core** %6, align 8
  %42 = getelementptr inbounds %struct.q6core, %struct.q6core* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  br label %67

43:                                               ; preds = %23
  %44 = load %struct.aprv2_ibasic_rsp_result_t*, %struct.aprv2_ibasic_rsp_result_t** %7, align 8
  %45 = getelementptr inbounds %struct.aprv2_ibasic_rsp_result_t, %struct.aprv2_ibasic_rsp_result_t* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ADSP_EUNSUPPORTED, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.q6core*, %struct.q6core** %6, align 8
  %51 = getelementptr inbounds %struct.q6core, %struct.q6core* %50, i32 0, i32 2
  store i32 0, i32* %51, align 8
  br label %52

52:                                               ; preds = %49, %43
  %53 = load %struct.q6core*, %struct.q6core** %6, align 8
  %54 = getelementptr inbounds %struct.q6core, %struct.q6core* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  br label %67

55:                                               ; preds = %23
  %56 = load %struct.aprv2_ibasic_rsp_result_t*, %struct.aprv2_ibasic_rsp_result_t** %7, align 8
  %57 = getelementptr inbounds %struct.aprv2_ibasic_rsp_result_t, %struct.aprv2_ibasic_rsp_result_t* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ADSP_EUNSUPPORTED, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.q6core*, %struct.q6core** %6, align 8
  %63 = getelementptr inbounds %struct.q6core, %struct.q6core* %62, i32 0, i32 3
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %55
  %65 = load %struct.q6core*, %struct.q6core** %6, align 8
  %66 = getelementptr inbounds %struct.q6core, %struct.q6core* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %23, %64, %52, %40
  br label %145

68:                                               ; preds = %2
  %69 = load %struct.apr_resp_pkt*, %struct.apr_resp_pkt** %5, align 8
  %70 = getelementptr inbounds %struct.apr_resp_pkt, %struct.apr_resp_pkt* %69, i32 0, i32 0
  %71 = load %struct.avcs_cmdrsp_get_version*, %struct.avcs_cmdrsp_get_version** %70, align 8
  %72 = bitcast %struct.avcs_cmdrsp_get_version* %71 to %struct.avcs_cmdrsp_get_fwk_version*
  store %struct.avcs_cmdrsp_get_fwk_version* %72, %struct.avcs_cmdrsp_get_fwk_version** %9, align 8
  %73 = load %struct.apr_resp_pkt*, %struct.apr_resp_pkt** %5, align 8
  %74 = getelementptr inbounds %struct.apr_resp_pkt, %struct.apr_resp_pkt* %73, i32 0, i32 0
  %75 = load %struct.avcs_cmdrsp_get_version*, %struct.avcs_cmdrsp_get_version** %74, align 8
  %76 = load %struct.avcs_cmdrsp_get_fwk_version*, %struct.avcs_cmdrsp_get_fwk_version** %9, align 8
  %77 = bitcast %struct.avcs_cmdrsp_get_fwk_version* %76 to %struct.avcs_cmdrsp_get_version*
  %78 = load i32, i32* @svc_api_info, align 4
  %79 = load %struct.avcs_cmdrsp_get_fwk_version*, %struct.avcs_cmdrsp_get_fwk_version** %9, align 8
  %80 = getelementptr inbounds %struct.avcs_cmdrsp_get_fwk_version, %struct.avcs_cmdrsp_get_fwk_version* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @struct_size(%struct.avcs_cmdrsp_get_version* %77, i32 %78, i32 %81)
  %83 = load i32, i32* @GFP_ATOMIC, align 4
  %84 = call i8* @kmemdup(%struct.avcs_cmdrsp_get_version* %75, i32 %82, i32 %83)
  %85 = load %struct.q6core*, %struct.q6core** %6, align 8
  %86 = getelementptr inbounds %struct.q6core, %struct.q6core* %85, i32 0, i32 7
  store i8* %84, i8** %86, align 8
  %87 = load %struct.q6core*, %struct.q6core** %6, align 8
  %88 = getelementptr inbounds %struct.q6core, %struct.q6core* %87, i32 0, i32 7
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %68
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %155

94:                                               ; preds = %68
  %95 = load %struct.q6core*, %struct.q6core** %6, align 8
  %96 = getelementptr inbounds %struct.q6core, %struct.q6core* %95, i32 0, i32 2
  store i32 1, i32* %96, align 8
  %97 = load %struct.q6core*, %struct.q6core** %6, align 8
  %98 = getelementptr inbounds %struct.q6core, %struct.q6core* %97, i32 0, i32 1
  store i32 1, i32* %98, align 4
  br label %145

99:                                               ; preds = %2
  %100 = load %struct.apr_resp_pkt*, %struct.apr_resp_pkt** %5, align 8
  %101 = getelementptr inbounds %struct.apr_resp_pkt, %struct.apr_resp_pkt* %100, i32 0, i32 0
  %102 = load %struct.avcs_cmdrsp_get_version*, %struct.avcs_cmdrsp_get_version** %101, align 8
  store %struct.avcs_cmdrsp_get_version* %102, %struct.avcs_cmdrsp_get_version** %10, align 8
  %103 = load %struct.apr_resp_pkt*, %struct.apr_resp_pkt** %5, align 8
  %104 = getelementptr inbounds %struct.apr_resp_pkt, %struct.apr_resp_pkt* %103, i32 0, i32 0
  %105 = load %struct.avcs_cmdrsp_get_version*, %struct.avcs_cmdrsp_get_version** %104, align 8
  %106 = load %struct.avcs_cmdrsp_get_version*, %struct.avcs_cmdrsp_get_version** %10, align 8
  %107 = load i32, i32* @svc_api_info, align 4
  %108 = load %struct.avcs_cmdrsp_get_version*, %struct.avcs_cmdrsp_get_version** %10, align 8
  %109 = getelementptr inbounds %struct.avcs_cmdrsp_get_version, %struct.avcs_cmdrsp_get_version* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @struct_size(%struct.avcs_cmdrsp_get_version* %106, i32 %107, i32 %110)
  %112 = load i32, i32* @GFP_ATOMIC, align 4
  %113 = call i8* @kmemdup(%struct.avcs_cmdrsp_get_version* %105, i32 %111, i32 %112)
  %114 = load %struct.q6core*, %struct.q6core** %6, align 8
  %115 = getelementptr inbounds %struct.q6core, %struct.q6core* %114, i32 0, i32 6
  store i8* %113, i8** %115, align 8
  %116 = load %struct.q6core*, %struct.q6core** %6, align 8
  %117 = getelementptr inbounds %struct.q6core, %struct.q6core* %116, i32 0, i32 6
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %123, label %120

120:                                              ; preds = %99
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %155

123:                                              ; preds = %99
  %124 = load %struct.q6core*, %struct.q6core** %6, align 8
  %125 = getelementptr inbounds %struct.q6core, %struct.q6core* %124, i32 0, i32 0
  store i32 1, i32* %125, align 8
  %126 = load %struct.q6core*, %struct.q6core** %6, align 8
  %127 = getelementptr inbounds %struct.q6core, %struct.q6core* %126, i32 0, i32 1
  store i32 1, i32* %127, align 4
  br label %145

128:                                              ; preds = %2
  %129 = load %struct.q6core*, %struct.q6core** %6, align 8
  %130 = getelementptr inbounds %struct.q6core, %struct.q6core* %129, i32 0, i32 3
  store i32 1, i32* %130, align 4
  %131 = load %struct.aprv2_ibasic_rsp_result_t*, %struct.aprv2_ibasic_rsp_result_t** %7, align 8
  %132 = getelementptr inbounds %struct.aprv2_ibasic_rsp_result_t, %struct.aprv2_ibasic_rsp_result_t* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.q6core*, %struct.q6core** %6, align 8
  %135 = getelementptr inbounds %struct.q6core, %struct.q6core* %134, i32 0, i32 5
  store i32 %133, i32* %135, align 4
  %136 = load %struct.q6core*, %struct.q6core** %6, align 8
  %137 = getelementptr inbounds %struct.q6core, %struct.q6core* %136, i32 0, i32 1
  store i32 1, i32* %137, align 4
  br label %145

138:                                              ; preds = %2
  %139 = load %struct.apr_device*, %struct.apr_device** %4, align 8
  %140 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %139, i32 0, i32 0
  %141 = load %struct.apr_hdr*, %struct.apr_hdr** %8, align 8
  %142 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @dev_err(i32* %140, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %138, %128, %123, %94, %67
  %146 = load %struct.q6core*, %struct.q6core** %6, align 8
  %147 = getelementptr inbounds %struct.q6core, %struct.q6core* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load %struct.q6core*, %struct.q6core** %6, align 8
  %152 = getelementptr inbounds %struct.q6core, %struct.q6core* %151, i32 0, i32 4
  %153 = call i32 @wake_up(i32* %152)
  br label %154

154:                                              ; preds = %150, %145
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %154, %120, %91
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local %struct.q6core* @dev_get_drvdata(i32*) #1

declare dso_local i8* @kmemdup(%struct.avcs_cmdrsp_get_version*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.avcs_cmdrsp_get_version*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
