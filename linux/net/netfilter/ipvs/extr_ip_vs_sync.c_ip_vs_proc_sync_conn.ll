; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_proc_sync_conn.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_proc_sync_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { i32 }
%struct.ip_vs_sync_conn_options = type { i32 }
%union.ip_vs_sync_conn = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ip_vs_protocol = type { i32, i32 }
%struct.ip_vs_conn_param = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%union.nf_inet_addr = type { i32 }

@STYPE_F_INET6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"BACKUP, IPv6 msg received, and IPVS is not compiled for IPv6\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@IPVS_OPT_F_PARAM = common dso_local global i32 0, align 4
@IP_VS_PEDATA_MAXLEN = common dso_local global i32 0, align 4
@IPVS_OPT_F_PE_DATA = common dso_local global i32 0, align 4
@IP_VS_PENAME_MAXLEN = common dso_local global i32 0, align 4
@IPVS_OPT_F_PE_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"BACKUP, Unknown mandatory param %d found\0A\00", align 1
@IP_VS_CONN_F_BACKUP_MASK = common dso_local global i32 0, align 4
@IP_VS_CONN_F_SYNC = common dso_local global i32 0, align 4
@IP_VS_CONN_F_TEMPLATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"BACKUP, Unsupported protocol %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"BACKUP, Invalid %s state %u\0A\00", align 1
@IP_VS_CTPL_S_LAST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"BACKUP, Invalid tpl state %u\0A\00", align 1
@IPVS_OPT_F_SEQ_DATA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"BACKUP, Single msg dropped err:%d\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netns_ipvs*, i32*, i32*)* @ip_vs_proc_sync_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_proc_sync_conn(%struct.netns_ipvs* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.netns_ipvs*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ip_vs_sync_conn_options, align 4
  %9 = alloca %union.ip_vs_sync_conn*, align 8
  %10 = alloca %struct.ip_vs_protocol*, align 8
  %11 = alloca %struct.ip_vs_conn_param, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = bitcast i32* %23 to %union.ip_vs_sync_conn*
  store %union.ip_vs_sync_conn* %24, %union.ip_vs_sync_conn** %9, align 8
  %25 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %9, align 8
  %26 = bitcast %union.ip_vs_sync_conn* %25 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @STYPE_F_INET6, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = call i32 (i32, i8*, ...) @IP_VS_DBG(i32 3, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  store i32 10, i32* %20, align 4
  br label %236

34:                                               ; preds = %3
  %35 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %9, align 8
  %36 = bitcast %union.ip_vs_sync_conn* %35 to %struct.TYPE_3__*
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @AF_INET, align 4
  store i32 %41, i32* %13, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  store i32* %43, i32** %6, align 8
  br label %45

44:                                               ; preds = %34
  store i32 -10, i32* %4, align 4
  br label %240

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = icmp ugt i32* %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 -20, i32* %4, align 4
  br label %240

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %121, %51
  %53 = load i32*, i32** %6, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = icmp ult i32* %53, %54
  br i1 %55, label %56, label %126

56:                                               ; preds = %52
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32*, i32** %7, align 8
  %60 = icmp ugt i32* %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 -30, i32* %4, align 4
  br label %240

62:                                               ; preds = %56
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %6, align 8
  %65 = load i32, i32* %63, align 4
  store i32 %65, i32* %21, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %6, align 8
  %68 = load i32, i32* %66, align 4
  store i32 %68, i32* %22, align 4
  %69 = load i32, i32* %22, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %62
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %22, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32*, i32** %7, align 8
  %77 = icmp ugt i32* %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71, %62
  store i32 -40, i32* %4, align 4
  br label %240

79:                                               ; preds = %71
  %80 = load i32, i32* %21, align 4
  %81 = load i32, i32* @IPVS_OPT_F_PARAM, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %80, %82
  switch i32 %83, label %109 [
    i32 128, label %84
    i32 130, label %91
    i32 129, label %100
  ]

84:                                               ; preds = %79
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %22, align 4
  %87 = call i32 @ip_vs_proc_seqopt(i32* %85, i32 %86, i32* %19, %struct.ip_vs_sync_conn_options* %8)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 -50, i32* %4, align 4
  br label %240

90:                                               ; preds = %84
  br label %121

91:                                               ; preds = %79
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %22, align 4
  %94 = load i32, i32* @IP_VS_PEDATA_MAXLEN, align 4
  %95 = load i32, i32* @IPVS_OPT_F_PE_DATA, align 4
  %96 = call i32 @ip_vs_proc_str(i32* %92, i32 %93, i32* %15, i32** %17, i32 %94, i32* %19, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  store i32 -60, i32* %4, align 4
  br label %240

99:                                               ; preds = %91
  br label %121

100:                                              ; preds = %79
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %22, align 4
  %103 = load i32, i32* @IP_VS_PENAME_MAXLEN, align 4
  %104 = load i32, i32* @IPVS_OPT_F_PE_NAME, align 4
  %105 = call i32 @ip_vs_proc_str(i32* %101, i32 %102, i32* %16, i32** %18, i32 %103, i32* %19, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  store i32 -70, i32* %4, align 4
  br label %240

108:                                              ; preds = %100
  br label %121

109:                                              ; preds = %79
  %110 = load i32, i32* %21, align 4
  %111 = load i32, i32* @IPVS_OPT_F_PARAM, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %21, align 4
  %116 = load i32, i32* @IPVS_OPT_F_PARAM, align 4
  %117 = xor i32 %116, -1
  %118 = and i32 %115, %117
  %119 = call i32 (i32, i8*, ...) @IP_VS_DBG(i32 3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  store i32 20, i32* %20, align 4
  br label %236

120:                                              ; preds = %109
  br label %121

121:                                              ; preds = %120, %108, %99, %90
  %122 = load i32, i32* %22, align 4
  %123 = load i32*, i32** %6, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32* %125, i32** %6, align 8
  br label %52

126:                                              ; preds = %52
  %127 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %9, align 8
  %128 = bitcast %union.ip_vs_sync_conn* %127 to %struct.TYPE_3__*
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @ntohl(i32 %130)
  %132 = load i32, i32* @IP_VS_CONN_F_BACKUP_MASK, align 4
  %133 = and i32 %131, %132
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* @IP_VS_CONN_F_SYNC, align 4
  %135 = load i32, i32* %12, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %12, align 4
  %137 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %9, align 8
  %138 = bitcast %union.ip_vs_sync_conn* %137 to %struct.TYPE_3__*
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @ntohs(i32 %140)
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* @IP_VS_CONN_F_TEMPLATE, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %173, label %146

146:                                              ; preds = %126
  %147 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %9, align 8
  %148 = bitcast %union.ip_vs_sync_conn* %147 to %struct.TYPE_3__*
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call %struct.ip_vs_protocol* @ip_vs_proto_get(i32 %150)
  store %struct.ip_vs_protocol* %151, %struct.ip_vs_protocol** %10, align 8
  %152 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %10, align 8
  %153 = icmp ne %struct.ip_vs_protocol* %152, null
  br i1 %153, label %160, label %154

154:                                              ; preds = %146
  %155 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %9, align 8
  %156 = bitcast %union.ip_vs_sync_conn* %155 to %struct.TYPE_3__*
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (i32, i8*, ...) @IP_VS_DBG(i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %158)
  store i32 30, i32* %20, align 4
  br label %236

160:                                              ; preds = %146
  %161 = load i32, i32* %14, align 4
  %162 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %10, align 8
  %163 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp uge i32 %161, %164
  br i1 %165, label %166, label %172

166:                                              ; preds = %160
  %167 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %10, align 8
  %168 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %14, align 4
  %171 = call i32 (i32, i8*, ...) @IP_VS_DBG(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %169, i32 %170)
  store i32 40, i32* %20, align 4
  br label %236

172:                                              ; preds = %160
  br label %181

173:                                              ; preds = %126
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* @IP_VS_CTPL_S_LAST, align 4
  %176 = icmp uge i32 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load i32, i32* %14, align 4
  %179 = call i32 (i32, i8*, ...) @IP_VS_DBG(i32 7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %178)
  br label %180

180:                                              ; preds = %177, %173
  br label %181

181:                                              ; preds = %180, %172
  %182 = load %struct.netns_ipvs*, %struct.netns_ipvs** %5, align 8
  %183 = load i32, i32* %13, align 4
  %184 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %9, align 8
  %185 = load i32*, i32** %17, align 8
  %186 = load i32, i32* %15, align 4
  %187 = load i32*, i32** %18, align 8
  %188 = load i32, i32* %16, align 4
  %189 = call i64 @ip_vs_conn_fill_param_sync(%struct.netns_ipvs* %182, i32 %183, %union.ip_vs_sync_conn* %184, %struct.ip_vs_conn_param* %11, i32* %185, i32 %186, i32* %187, i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %181
  store i32 50, i32* %20, align 4
  br label %236

192:                                              ; preds = %181
  %193 = load i32, i32* %13, align 4
  %194 = load i32, i32* @AF_INET, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %232

196:                                              ; preds = %192
  %197 = load %struct.netns_ipvs*, %struct.netns_ipvs** %5, align 8
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* %14, align 4
  %200 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %9, align 8
  %201 = bitcast %union.ip_vs_sync_conn* %200 to %struct.TYPE_3__*
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %13, align 4
  %205 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %9, align 8
  %206 = bitcast %union.ip_vs_sync_conn* %205 to %struct.TYPE_3__*
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 4
  %208 = bitcast i32* %207 to %union.nf_inet_addr*
  %209 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %9, align 8
  %210 = bitcast %union.ip_vs_sync_conn* %209 to %struct.TYPE_3__*
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %9, align 8
  %214 = bitcast %union.ip_vs_sync_conn* %213 to %struct.TYPE_3__*
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @ntohl(i32 %216)
  %218 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %9, align 8
  %219 = bitcast %union.ip_vs_sync_conn* %218 to %struct.TYPE_3__*
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @ntohl(i32 %221)
  %223 = load i32, i32* %19, align 4
  %224 = load i32, i32* @IPVS_OPT_F_SEQ_DATA, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %196
  br label %229

228:                                              ; preds = %196
  br label %229

229:                                              ; preds = %228, %227
  %230 = phi %struct.ip_vs_sync_conn_options* [ %8, %227 ], [ null, %228 ]
  %231 = call i32 @ip_vs_proc_conn(%struct.netns_ipvs* %197, %struct.ip_vs_conn_param* %11, i32 %198, i32 %199, i32 %203, i32 %204, %union.nf_inet_addr* %208, i32 %212, i32 %217, i32 %222, %struct.ip_vs_sync_conn_options* %230)
  br label %232

232:                                              ; preds = %229, %192
  %233 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %11, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @ip_vs_pe_put(i32 %234)
  store i32 0, i32* %4, align 4
  br label %240

236:                                              ; preds = %191, %166, %154, %114, %32
  %237 = load i32, i32* %20, align 4
  %238 = call i32 (i32, i8*, ...) @IP_VS_DBG(i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %237)
  %239 = load i32, i32* %20, align 4
  store i32 %239, i32* %4, align 4
  br label %240

240:                                              ; preds = %236, %232, %107, %98, %89, %78, %61, %50, %44
  %241 = load i32, i32* %4, align 4
  ret i32 %241
}

declare dso_local i32 @IP_VS_DBG(i32, i8*, ...) #1

declare dso_local i32 @ip_vs_proc_seqopt(i32*, i32, i32*, %struct.ip_vs_sync_conn_options*) #1

declare dso_local i32 @ip_vs_proc_str(i32*, i32, i32*, i32**, i32, i32*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.ip_vs_protocol* @ip_vs_proto_get(i32) #1

declare dso_local i64 @ip_vs_conn_fill_param_sync(%struct.netns_ipvs*, i32, %union.ip_vs_sync_conn*, %struct.ip_vs_conn_param*, i32*, i32, i32*, i32) #1

declare dso_local i32 @ip_vs_proc_conn(%struct.netns_ipvs*, %struct.ip_vs_conn_param*, i32, i32, i32, i32, %union.nf_inet_addr*, i32, i32, i32, %struct.ip_vs_sync_conn_options*) #1

declare dso_local i32 @ip_vs_pe_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
