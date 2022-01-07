; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_srvc_callback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6asm.c_q6asm_srvc_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apr_device = type { i32 }
%struct.apr_resp_pkt = type { %struct.aprv2_ibasic_rsp_result_t*, %struct.apr_hdr }
%struct.aprv2_ibasic_rsp_result_t = type { i32, i32 }
%struct.apr_hdr = type { i32, i32, i32 }
%struct.q6asm = type { i32 }
%struct.audio_port_data = type { i32 }
%struct.audio_client = type { i32, i32, i32 (i32, i32, %struct.aprv2_ibasic_rsp_result_t*, i32)*, %struct.aprv2_ibasic_rsp_result_t, %struct.audio_port_data*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [25 x i8] c"Audio Client not active\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"command[0x%x] not expecting rsp\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"command[0x%x]success [0x%x]\0A\00", align 1
@q6asm_audio_client_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apr_device*, %struct.apr_resp_pkt*)* @q6asm_srvc_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6asm_srvc_callback(%struct.apr_device* %0, %struct.apr_resp_pkt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.apr_device*, align 8
  %5 = alloca %struct.apr_resp_pkt*, align 8
  %6 = alloca %struct.q6asm*, align 8
  %7 = alloca %struct.aprv2_ibasic_rsp_result_t*, align 8
  %8 = alloca %struct.audio_port_data*, align 8
  %9 = alloca %struct.audio_client*, align 8
  %10 = alloca %struct.apr_hdr*, align 8
  %11 = alloca %struct.q6asm*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.apr_device* %0, %struct.apr_device** %4, align 8
  store %struct.apr_resp_pkt* %1, %struct.apr_resp_pkt** %5, align 8
  %15 = load %struct.apr_device*, %struct.apr_device** %4, align 8
  %16 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %15, i32 0, i32 0
  %17 = call %struct.q6asm* @dev_get_drvdata(i32* %16)
  store %struct.q6asm* %17, %struct.q6asm** %6, align 8
  store %struct.audio_client* null, %struct.audio_client** %9, align 8
  %18 = load %struct.apr_resp_pkt*, %struct.apr_resp_pkt** %5, align 8
  %19 = getelementptr inbounds %struct.apr_resp_pkt, %struct.apr_resp_pkt* %18, i32 0, i32 1
  store %struct.apr_hdr* %19, %struct.apr_hdr** %10, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %20 = load %struct.apr_hdr*, %struct.apr_hdr** %10, align 8
  %21 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 255
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.apr_device*, %struct.apr_device** %4, align 8
  %29 = load %struct.apr_resp_pkt*, %struct.apr_resp_pkt** %5, align 8
  %30 = load i32, i32* %14, align 4
  %31 = call i32 @q6asm_stream_callback(%struct.apr_device* %28, %struct.apr_resp_pkt* %29, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %163

32:                                               ; preds = %2
  %33 = load %struct.apr_hdr*, %struct.apr_hdr** %10, align 8
  %34 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 8
  %37 = and i32 %36, 15
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %12, align 8
  %39 = load %struct.q6asm*, %struct.q6asm** %6, align 8
  %40 = load i64, i64* %12, align 8
  %41 = call %struct.audio_client* @q6asm_get_audio_client(%struct.q6asm* %39, i64 %40)
  store %struct.audio_client* %41, %struct.audio_client** %9, align 8
  %42 = load %struct.audio_client*, %struct.audio_client** %9, align 8
  %43 = icmp ne %struct.audio_client* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %32
  %45 = load %struct.apr_device*, %struct.apr_device** %4, align 8
  %46 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %45, i32 0, i32 0
  %47 = call i32 (i32*, i8*, ...) @dev_err(i32* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %163

48:                                               ; preds = %32
  %49 = load %struct.audio_client*, %struct.audio_client** %9, align 8
  %50 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %49, i32 0, i32 5
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call %struct.q6asm* @dev_get_drvdata(i32* %53)
  store %struct.q6asm* %54, %struct.q6asm** %11, align 8
  %55 = load %struct.apr_hdr*, %struct.apr_hdr** %10, align 8
  %56 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 15
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %13, align 8
  %60 = load %struct.audio_client*, %struct.audio_client** %9, align 8
  %61 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %60, i32 0, i32 4
  %62 = load %struct.audio_port_data*, %struct.audio_port_data** %61, align 8
  %63 = load i64, i64* %13, align 8
  %64 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %62, i64 %63
  store %struct.audio_port_data* %64, %struct.audio_port_data** %8, align 8
  %65 = load %struct.apr_resp_pkt*, %struct.apr_resp_pkt** %5, align 8
  %66 = getelementptr inbounds %struct.apr_resp_pkt, %struct.apr_resp_pkt* %65, i32 0, i32 0
  %67 = load %struct.aprv2_ibasic_rsp_result_t*, %struct.aprv2_ibasic_rsp_result_t** %66, align 8
  store %struct.aprv2_ibasic_rsp_result_t* %67, %struct.aprv2_ibasic_rsp_result_t** %7, align 8
  %68 = load %struct.apr_hdr*, %struct.apr_hdr** %10, align 8
  %69 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %125 [
    i32 131, label %71
    i32 130, label %92
    i32 128, label %110
  ]

71:                                               ; preds = %48
  %72 = load %struct.aprv2_ibasic_rsp_result_t*, %struct.aprv2_ibasic_rsp_result_t** %7, align 8
  %73 = getelementptr inbounds %struct.aprv2_ibasic_rsp_result_t, %struct.aprv2_ibasic_rsp_result_t* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %84 [
    i32 129, label %75
    i32 128, label %75
  ]

75:                                               ; preds = %71, %71
  %76 = load %struct.audio_client*, %struct.audio_client** %9, align 8
  %77 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %76, i32 0, i32 3
  %78 = load %struct.aprv2_ibasic_rsp_result_t*, %struct.aprv2_ibasic_rsp_result_t** %7, align 8
  %79 = bitcast %struct.aprv2_ibasic_rsp_result_t* %77 to i8*
  %80 = bitcast %struct.aprv2_ibasic_rsp_result_t* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 4 %80, i64 8, i1 false)
  %81 = load %struct.q6asm*, %struct.q6asm** %11, align 8
  %82 = getelementptr inbounds %struct.q6asm, %struct.q6asm* %81, i32 0, i32 0
  %83 = call i32 @wake_up(i32* %82)
  br label %91

84:                                               ; preds = %71
  %85 = load %struct.apr_device*, %struct.apr_device** %4, align 8
  %86 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %85, i32 0, i32 0
  %87 = load %struct.aprv2_ibasic_rsp_result_t*, %struct.aprv2_ibasic_rsp_result_t** %7, align 8
  %88 = getelementptr inbounds %struct.aprv2_ibasic_rsp_result_t, %struct.aprv2_ibasic_rsp_result_t* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i32*, i8*, ...) @dev_err(i32* %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %84, %75
  br label %158

92:                                               ; preds = %48
  %93 = load %struct.audio_client*, %struct.audio_client** %9, align 8
  %94 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.aprv2_ibasic_rsp_result_t, %struct.aprv2_ibasic_rsp_result_t* %94, i32 0, i32 1
  store i32 0, i32* %95, align 4
  %96 = load %struct.apr_hdr*, %struct.apr_hdr** %10, align 8
  %97 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.audio_client*, %struct.audio_client** %9, align 8
  %100 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.aprv2_ibasic_rsp_result_t, %struct.aprv2_ibasic_rsp_result_t* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  %102 = load %struct.aprv2_ibasic_rsp_result_t*, %struct.aprv2_ibasic_rsp_result_t** %7, align 8
  %103 = getelementptr inbounds %struct.aprv2_ibasic_rsp_result_t, %struct.aprv2_ibasic_rsp_result_t* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.audio_port_data*, %struct.audio_port_data** %8, align 8
  %106 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load %struct.q6asm*, %struct.q6asm** %11, align 8
  %108 = getelementptr inbounds %struct.q6asm, %struct.q6asm* %107, i32 0, i32 0
  %109 = call i32 @wake_up(i32* %108)
  br label %135

110:                                              ; preds = %48
  %111 = load %struct.apr_hdr*, %struct.apr_hdr** %10, align 8
  %112 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.audio_client*, %struct.audio_client** %9, align 8
  %115 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.aprv2_ibasic_rsp_result_t, %struct.aprv2_ibasic_rsp_result_t* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  %117 = load %struct.audio_client*, %struct.audio_client** %9, align 8
  %118 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.aprv2_ibasic_rsp_result_t, %struct.aprv2_ibasic_rsp_result_t* %118, i32 0, i32 1
  store i32 0, i32* %119, align 4
  %120 = load %struct.audio_port_data*, %struct.audio_port_data** %8, align 8
  %121 = getelementptr inbounds %struct.audio_port_data, %struct.audio_port_data* %120, i32 0, i32 0
  store i32 0, i32* %121, align 4
  %122 = load %struct.q6asm*, %struct.q6asm** %11, align 8
  %123 = getelementptr inbounds %struct.q6asm, %struct.q6asm* %122, i32 0, i32 0
  %124 = call i32 @wake_up(i32* %123)
  br label %135

125:                                              ; preds = %48
  %126 = load %struct.apr_device*, %struct.apr_device** %4, align 8
  %127 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %126, i32 0, i32 0
  %128 = load %struct.aprv2_ibasic_rsp_result_t*, %struct.aprv2_ibasic_rsp_result_t** %7, align 8
  %129 = getelementptr inbounds %struct.aprv2_ibasic_rsp_result_t, %struct.aprv2_ibasic_rsp_result_t* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.aprv2_ibasic_rsp_result_t*, %struct.aprv2_ibasic_rsp_result_t** %7, align 8
  %132 = getelementptr inbounds %struct.aprv2_ibasic_rsp_result_t, %struct.aprv2_ibasic_rsp_result_t* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @dev_dbg(i32* %127, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %130, i32 %133)
  br label %135

135:                                              ; preds = %125, %110, %92
  %136 = load %struct.audio_client*, %struct.audio_client** %9, align 8
  %137 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %136, i32 0, i32 2
  %138 = load i32 (i32, i32, %struct.aprv2_ibasic_rsp_result_t*, i32)*, i32 (i32, i32, %struct.aprv2_ibasic_rsp_result_t*, i32)** %137, align 8
  %139 = icmp ne i32 (i32, i32, %struct.aprv2_ibasic_rsp_result_t*, i32)* %138, null
  br i1 %139, label %140, label %157

140:                                              ; preds = %135
  %141 = load %struct.audio_client*, %struct.audio_client** %9, align 8
  %142 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %141, i32 0, i32 2
  %143 = load i32 (i32, i32, %struct.aprv2_ibasic_rsp_result_t*, i32)*, i32 (i32, i32, %struct.aprv2_ibasic_rsp_result_t*, i32)** %142, align 8
  %144 = load %struct.apr_hdr*, %struct.apr_hdr** %10, align 8
  %145 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.apr_hdr*, %struct.apr_hdr** %10, align 8
  %148 = getelementptr inbounds %struct.apr_hdr, %struct.apr_hdr* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.apr_resp_pkt*, %struct.apr_resp_pkt** %5, align 8
  %151 = getelementptr inbounds %struct.apr_resp_pkt, %struct.apr_resp_pkt* %150, i32 0, i32 0
  %152 = load %struct.aprv2_ibasic_rsp_result_t*, %struct.aprv2_ibasic_rsp_result_t** %151, align 8
  %153 = load %struct.audio_client*, %struct.audio_client** %9, align 8
  %154 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 %143(i32 %146, i32 %149, %struct.aprv2_ibasic_rsp_result_t* %152, i32 %155)
  br label %157

157:                                              ; preds = %140, %135
  br label %158

158:                                              ; preds = %157, %91
  %159 = load %struct.audio_client*, %struct.audio_client** %9, align 8
  %160 = getelementptr inbounds %struct.audio_client, %struct.audio_client* %159, i32 0, i32 0
  %161 = load i32, i32* @q6asm_audio_client_release, align 4
  %162 = call i32 @kref_put(i32* %160, i32 %161)
  store i32 0, i32* %3, align 4
  br label %163

163:                                              ; preds = %158, %44, %27
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local %struct.q6asm* @dev_get_drvdata(i32*) #1

declare dso_local i32 @q6asm_stream_callback(%struct.apr_device*, %struct.apr_resp_pkt*, i32) #1

declare dso_local %struct.audio_client* @q6asm_get_audio_client(%struct.q6asm*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
