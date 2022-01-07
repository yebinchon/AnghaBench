; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_config_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_config_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32 }
%struct.l2cap_cmd_hdr = type { i32 }
%struct.l2cap_conf_rsp = type { i32, i32, i32, i32 }
%struct.l2cap_chan = type { i64, i32, i32, i32, i32, i32 }

@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"scid 0x%4.4x flags 0x%2.2x result 0x%2.2x len %d\00", align 1
@CONF_REM_CONF_PEND = common dso_local global i32 0, align 4
@CONF_LOC_CONF_PEND = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@L2CAP_CONF_MAX_CONF_RSP = common dso_local global i32 0, align 4
@L2CAP_CONF_REQ = common dso_local global i32 0, align 4
@L2CAP_DISC_REJ_TIMEOUT = common dso_local global i32 0, align 4
@L2CAP_CONF_FLAG_CONTINUATION = common dso_local global i32 0, align 4
@CONF_INPUT_DONE = common dso_local global i32 0, align 4
@CONF_OUTPUT_DONE = common dso_local global i32 0, align 4
@L2CAP_MODE_ERTM = common dso_local global i64 0, align 8
@L2CAP_MODE_STREAMING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32, i32*)* @l2cap_config_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_config_rsp(%struct.l2cap_conn* %0, %struct.l2cap_cmd_hdr* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2cap_conn*, align 8
  %7 = alloca %struct.l2cap_cmd_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.l2cap_conf_rsp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.l2cap_chan*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [64 x i8], align 16
  %18 = alloca [64 x i8], align 16
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %6, align 8
  store %struct.l2cap_cmd_hdr* %1, %struct.l2cap_cmd_hdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = bitcast i32* %19 to %struct.l2cap_conf_rsp*
  store %struct.l2cap_conf_rsp* %20, %struct.l2cap_conf_rsp** %10, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = sub i64 %22, 16
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 16
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EPROTO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %224

31:                                               ; preds = %4
  %32 = load %struct.l2cap_conf_rsp*, %struct.l2cap_conf_rsp** %10, align 8
  %33 = getelementptr inbounds %struct.l2cap_conf_rsp, %struct.l2cap_conf_rsp* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @__le16_to_cpu(i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.l2cap_conf_rsp*, %struct.l2cap_conf_rsp** %10, align 8
  %37 = getelementptr inbounds %struct.l2cap_conf_rsp, %struct.l2cap_conf_rsp* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @__le16_to_cpu(i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load %struct.l2cap_conf_rsp*, %struct.l2cap_conf_rsp** %10, align 8
  %41 = getelementptr inbounds %struct.l2cap_conf_rsp, %struct.l2cap_conf_rsp* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @__le16_to_cpu(i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @BT_DBG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call %struct.l2cap_chan* @l2cap_get_chan_by_scid(%struct.l2cap_conn* %49, i32 %50)
  store %struct.l2cap_chan* %51, %struct.l2cap_chan** %14, align 8
  %52 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %53 = icmp ne %struct.l2cap_chan* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %224

55:                                               ; preds = %31
  %56 = load i32, i32* %13, align 4
  switch i32 %56, label %164 [
    i32 129, label %57
    i32 130, label %68
    i32 128, label %119
  ]

57:                                               ; preds = %55
  %58 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %59 = load %struct.l2cap_conf_rsp*, %struct.l2cap_conf_rsp** %10, align 8
  %60 = getelementptr inbounds %struct.l2cap_conf_rsp, %struct.l2cap_conf_rsp* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @l2cap_conf_rfc_get(%struct.l2cap_chan* %58, i32 %61, i32 %62)
  %64 = load i32, i32* @CONF_REM_CONF_PEND, align 4
  %65 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %66 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %65, i32 0, i32 1
  %67 = call i32 @clear_bit(i32 %64, i32* %66)
  br label %174

68:                                               ; preds = %55
  %69 = load i32, i32* @CONF_REM_CONF_PEND, align 4
  %70 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %71 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %70, i32 0, i32 1
  %72 = call i32 @set_bit(i32 %69, i32* %71)
  %73 = load i32, i32* @CONF_LOC_CONF_PEND, align 4
  %74 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %75 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %74, i32 0, i32 1
  %76 = call i64 @test_bit(i32 %73, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %118

78:                                               ; preds = %68
  %79 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %80 = load %struct.l2cap_conf_rsp*, %struct.l2cap_conf_rsp** %10, align 8
  %81 = getelementptr inbounds %struct.l2cap_conf_rsp, %struct.l2cap_conf_rsp* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %15, align 4
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %85 = call i32 @l2cap_parse_conf_rsp(%struct.l2cap_chan* %79, i32 %82, i32 %83, i8* %84, i32 64, i32* %13)
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %78
  %89 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %90 = load i32, i32* @ECONNRESET, align 4
  %91 = call i32 @l2cap_send_disconn_req(%struct.l2cap_chan* %89, i32 %90)
  br label %220

92:                                               ; preds = %78
  %93 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %94 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %92
  %98 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %99 = getelementptr inbounds [64 x i8], [64 x i8]* %17, i64 0, i64 0
  %100 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %101 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @l2cap_send_efs_conf_rsp(%struct.l2cap_chan* %98, i8* %99, i32 %102, i32 0)
  br label %117

104:                                              ; preds = %92
  %105 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %106 = call i32 @l2cap_check_efs(%struct.l2cap_chan* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %104
  %109 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %110 = call i32 @amp_create_logical_link(%struct.l2cap_chan* %109)
  %111 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %7, align 8
  %112 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %115 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %108, %104
  br label %117

117:                                              ; preds = %116, %97
  br label %118

118:                                              ; preds = %117, %68
  br label %220

119:                                              ; preds = %55
  %120 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %121 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @L2CAP_CONF_MAX_CONF_RSP, align 4
  %124 = icmp sle i32 %122, %123
  br i1 %124, label %125, label %163

125:                                              ; preds = %119
  %126 = load i32, i32* %15, align 4
  %127 = sext i32 %126 to i64
  %128 = icmp ugt i64 %127, 60
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %131 = load i32, i32* @ECONNRESET, align 4
  %132 = call i32 @l2cap_send_disconn_req(%struct.l2cap_chan* %130, i32 %131)
  br label %220

133:                                              ; preds = %125
  store i32 129, i32* %13, align 4
  %134 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %135 = load %struct.l2cap_conf_rsp*, %struct.l2cap_conf_rsp** %10, align 8
  %136 = getelementptr inbounds %struct.l2cap_conf_rsp, %struct.l2cap_conf_rsp* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %15, align 4
  %139 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %140 = call i32 @l2cap_parse_conf_rsp(%struct.l2cap_chan* %134, i32 %137, i32 %138, i8* %139, i32 64, i32* %13)
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %15, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %133
  %144 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %145 = load i32, i32* @ECONNRESET, align 4
  %146 = call i32 @l2cap_send_disconn_req(%struct.l2cap_chan* %144, i32 %145)
  br label %220

147:                                              ; preds = %133
  %148 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %149 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  %150 = call i32 @l2cap_get_ident(%struct.l2cap_conn* %149)
  %151 = load i32, i32* @L2CAP_CONF_REQ, align 4
  %152 = load i32, i32* %15, align 4
  %153 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %154 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %148, i32 %150, i32 %151, i32 %152, i8* %153)
  %155 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %156 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  %159 = load i32, i32* %13, align 4
  %160 = icmp ne i32 %159, 129
  br i1 %160, label %161, label %162

161:                                              ; preds = %147
  br label %220

162:                                              ; preds = %147
  br label %174

163:                                              ; preds = %119
  br label %164

164:                                              ; preds = %55, %163
  %165 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %166 = load i32, i32* @ECONNRESET, align 4
  %167 = call i32 @l2cap_chan_set_err(%struct.l2cap_chan* %165, i32 %166)
  %168 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %169 = load i32, i32* @L2CAP_DISC_REJ_TIMEOUT, align 4
  %170 = call i32 @__set_chan_timer(%struct.l2cap_chan* %168, i32 %169)
  %171 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %172 = load i32, i32* @ECONNRESET, align 4
  %173 = call i32 @l2cap_send_disconn_req(%struct.l2cap_chan* %171, i32 %172)
  br label %220

174:                                              ; preds = %162, %57
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* @L2CAP_CONF_FLAG_CONTINUATION, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  br label %220

180:                                              ; preds = %174
  %181 = load i32, i32* @CONF_INPUT_DONE, align 4
  %182 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %183 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %182, i32 0, i32 1
  %184 = call i32 @set_bit(i32 %181, i32* %183)
  %185 = load i32, i32* @CONF_OUTPUT_DONE, align 4
  %186 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %187 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %186, i32 0, i32 1
  %188 = call i64 @test_bit(i32 %185, i32* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %219

190:                                              ; preds = %180
  %191 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %192 = call i32 @set_default_fcs(%struct.l2cap_chan* %191)
  %193 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %194 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @L2CAP_MODE_ERTM, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %204, label %198

198:                                              ; preds = %190
  %199 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %200 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @L2CAP_MODE_STREAMING, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %198, %190
  %205 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %206 = call i32 @l2cap_ertm_init(%struct.l2cap_chan* %205)
  store i32 %206, i32* %16, align 4
  br label %207

207:                                              ; preds = %204, %198
  %208 = load i32, i32* %16, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %207
  %211 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %212 = load i32, i32* %16, align 4
  %213 = sub nsw i32 0, %212
  %214 = call i32 @l2cap_send_disconn_req(%struct.l2cap_chan* %211, i32 %213)
  br label %218

215:                                              ; preds = %207
  %216 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %217 = call i32 @l2cap_chan_ready(%struct.l2cap_chan* %216)
  br label %218

218:                                              ; preds = %215, %210
  br label %219

219:                                              ; preds = %218, %180
  br label %220

220:                                              ; preds = %219, %179, %164, %161, %143, %129, %118, %88
  %221 = load %struct.l2cap_chan*, %struct.l2cap_chan** %14, align 8
  %222 = call i32 @l2cap_chan_unlock(%struct.l2cap_chan* %221)
  %223 = load i32, i32* %16, align 4
  store i32 %223, i32* %5, align 4
  br label %224

224:                                              ; preds = %220, %54, %28
  %225 = load i32, i32* %5, align 4
  ret i32 %225
}

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.l2cap_chan* @l2cap_get_chan_by_scid(%struct.l2cap_conn*, i32) #1

declare dso_local i32 @l2cap_conf_rfc_get(%struct.l2cap_chan*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @l2cap_parse_conf_rsp(%struct.l2cap_chan*, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @l2cap_send_disconn_req(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_send_efs_conf_rsp(%struct.l2cap_chan*, i8*, i32, i32) #1

declare dso_local i32 @l2cap_check_efs(%struct.l2cap_chan*) #1

declare dso_local i32 @amp_create_logical_link(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, i8*) #1

declare dso_local i32 @l2cap_get_ident(%struct.l2cap_conn*) #1

declare dso_local i32 @l2cap_chan_set_err(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @__set_chan_timer(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @set_default_fcs(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_ertm_init(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_chan_ready(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_chan_unlock(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
