; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_sync_conn.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_sync_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_ipvs = type { i32, i32, %struct.ipvs_master_sync_state* }
%struct.ipvs_master_sync_state = type { %struct.ip_vs_sync_buff* }
%struct.ip_vs_sync_buff = type { i64, i64, %struct.ip_vs_sync_mesg* }
%struct.ip_vs_sync_mesg = type { i32, i8*, i64 }
%struct.ip_vs_conn = type { i32, i32, i64, i32, i32, i32, i32, %struct.ip_vs_conn*, %struct.TYPE_11__*, i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%union.ip_vs_sync_conn = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i8*, i8*, i8*, i32 }
%struct.ip_vs_seq = type { i32 }

@IP_VS_CONN_F_ONE_PACKET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"SYNC, connection pe_data invalid\0A\00", align 1
@IP_VS_PENAME_MAXLEN = common dso_local global i32 0, align 4
@IP_VS_STATE_MASTER = common dso_local global i32 0, align 4
@IP_VS_CONN_F_SEQ_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"ip_vs_sync_buff_create failed.\0A\00", align 1
@AF_INET6 = common dso_local global i64 0, align 8
@STYPE_F_INET6 = common dso_local global i32 0, align 4
@SVER_MASK = common dso_local global i32 0, align 4
@IP_VS_CONN_F_HASHED = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@IPVS_OPT_SEQ_DATA = common dso_local global i32 0, align 4
@IPVS_OPT_PE_DATA = common dso_local global i32 0, align 4
@IPVS_OPT_PE_NAME = common dso_local global i32 0, align 4
@IP_VS_CONN_F_TEMPLATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_vs_sync_conn(%struct.netns_ipvs* %0, %struct.ip_vs_conn* %1, i32 %2) #0 {
  %4 = alloca %struct.netns_ipvs*, align 8
  %5 = alloca %struct.ip_vs_conn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_vs_sync_mesg*, align 8
  %8 = alloca %union.ip_vs_sync_conn*, align 8
  %9 = alloca %struct.ip_vs_sync_buff*, align 8
  %10 = alloca %struct.ipvs_master_sync_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.netns_ipvs* %0, %struct.netns_ipvs** %4, align 8
  store %struct.ip_vs_conn* %1, %struct.ip_vs_conn** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %17 = call i64 @sysctl_sync_ver(%struct.netns_ipvs* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %21 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @ip_vs_sync_conn_v0(%struct.netns_ipvs* %20, %struct.ip_vs_conn* %21, i32 %22)
  br label %427

24:                                               ; preds = %3
  %25 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %26 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IP_VS_CONN_F_ONE_PACKET, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %405

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %426, %32
  %34 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %35 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @ip_vs_sync_conn_needed(%struct.netns_ipvs* %34, %struct.ip_vs_conn* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %405

40:                                               ; preds = %33
  store i32 0, i32* %14, align 4
  %41 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %42 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %40
  %46 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %47 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %52 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %51, i32 0, i32 19
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %50, %45
  %56 = call i32 @IP_VS_ERR_RL(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %427

57:                                               ; preds = %50
  %58 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %59 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %58, i32 0, i32 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IP_VS_PENAME_MAXLEN, align 4
  %64 = call i32 @strnlen(i32 %62, i32 %63)
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %57, %40
  %66 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %67 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %66, i32 0, i32 1
  %68 = call i32 @spin_lock_bh(i32* %67)
  %69 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %70 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @IP_VS_STATE_MASTER, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %65
  %76 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %77 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %76, i32 0, i32 1
  %78 = call i32 @spin_unlock_bh(i32* %77)
  br label %427

79:                                               ; preds = %65
  %80 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %81 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %82 = call i32 @select_master_thread_id(%struct.netns_ipvs* %80, %struct.ip_vs_conn* %81)
  store i32 %82, i32* %11, align 4
  %83 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %84 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %83, i32 0, i32 2
  %85 = load %struct.ipvs_master_sync_state*, %struct.ipvs_master_sync_state** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.ipvs_master_sync_state, %struct.ipvs_master_sync_state* %85, i64 %87
  store %struct.ipvs_master_sync_state* %88, %struct.ipvs_master_sync_state** %10, align 8
  store i32 4, i32* %13, align 4
  %89 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %90 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @IP_VS_CONN_F_SEQ_MASK, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %79
  %96 = load i32, i32* %13, align 4
  %97 = zext i32 %96 to i64
  %98 = add i64 %97, 6
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %95, %79
  %101 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %102 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %107 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 2
  %110 = load i32, i32* %13, align 4
  %111 = add i32 %110, %109
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %105, %100
  %113 = load i32, i32* %14, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i32, i32* %14, align 4
  %117 = add i32 %116, 2
  %118 = load i32, i32* %13, align 4
  %119 = add i32 %118, %117
  store i32 %119, i32* %13, align 4
  br label %120

120:                                              ; preds = %115, %112
  store i32 0, i32* %15, align 4
  %121 = load %struct.ipvs_master_sync_state*, %struct.ipvs_master_sync_state** %10, align 8
  %122 = getelementptr inbounds %struct.ipvs_master_sync_state, %struct.ipvs_master_sync_state* %121, i32 0, i32 0
  %123 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %122, align 8
  store %struct.ip_vs_sync_buff* %123, %struct.ip_vs_sync_buff** %9, align 8
  %124 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %9, align 8
  %125 = icmp ne %struct.ip_vs_sync_buff* %124, null
  br i1 %125, label %126, label %161

126:                                              ; preds = %120
  %127 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %9, align 8
  %128 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %127, i32 0, i32 2
  %129 = load %struct.ip_vs_sync_mesg*, %struct.ip_vs_sync_mesg** %128, align 8
  store %struct.ip_vs_sync_mesg* %129, %struct.ip_vs_sync_mesg** %7, align 8
  %130 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %9, align 8
  %131 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = sub i64 4, %132
  %134 = and i64 %133, 3
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %15, align 4
  %136 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %9, align 8
  %137 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* %13, align 4
  %140 = zext i32 %139 to i64
  %141 = add nsw i64 %138, %140
  %142 = load i32, i32* %15, align 4
  %143 = zext i32 %142 to i64
  %144 = add nsw i64 %141, %143
  %145 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %9, align 8
  %146 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp sgt i64 %144, %147
  br i1 %148, label %154, label %149

149:                                              ; preds = %126
  %150 = load %struct.ip_vs_sync_mesg*, %struct.ip_vs_sync_mesg** %7, align 8
  %151 = getelementptr inbounds %struct.ip_vs_sync_mesg, %struct.ip_vs_sync_mesg* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %149, %126
  %155 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %156 = load %struct.ipvs_master_sync_state*, %struct.ipvs_master_sync_state** %10, align 8
  %157 = call i32 @sb_queue_tail(%struct.netns_ipvs* %155, %struct.ipvs_master_sync_state* %156)
  %158 = load %struct.ipvs_master_sync_state*, %struct.ipvs_master_sync_state** %10, align 8
  %159 = getelementptr inbounds %struct.ipvs_master_sync_state, %struct.ipvs_master_sync_state* %158, i32 0, i32 0
  store %struct.ip_vs_sync_buff* null, %struct.ip_vs_sync_buff** %159, align 8
  store %struct.ip_vs_sync_buff* null, %struct.ip_vs_sync_buff** %9, align 8
  store i32 0, i32* %15, align 4
  br label %160

160:                                              ; preds = %154, %149
  br label %161

161:                                              ; preds = %160, %120
  %162 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %9, align 8
  %163 = icmp ne %struct.ip_vs_sync_buff* %162, null
  br i1 %163, label %182, label %164

164:                                              ; preds = %161
  %165 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %166 = load i32, i32* %13, align 4
  %167 = call %struct.ip_vs_sync_buff* @ip_vs_sync_buff_create(%struct.netns_ipvs* %165, i32 %166)
  store %struct.ip_vs_sync_buff* %167, %struct.ip_vs_sync_buff** %9, align 8
  %168 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %9, align 8
  %169 = icmp ne %struct.ip_vs_sync_buff* %168, null
  br i1 %169, label %175, label %170

170:                                              ; preds = %164
  %171 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %172 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %171, i32 0, i32 1
  %173 = call i32 @spin_unlock_bh(i32* %172)
  %174 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %427

175:                                              ; preds = %164
  %176 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %9, align 8
  %177 = load %struct.ipvs_master_sync_state*, %struct.ipvs_master_sync_state** %10, align 8
  %178 = getelementptr inbounds %struct.ipvs_master_sync_state, %struct.ipvs_master_sync_state* %177, i32 0, i32 0
  store %struct.ip_vs_sync_buff* %176, %struct.ip_vs_sync_buff** %178, align 8
  %179 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %9, align 8
  %180 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %179, i32 0, i32 2
  %181 = load %struct.ip_vs_sync_mesg*, %struct.ip_vs_sync_mesg** %180, align 8
  store %struct.ip_vs_sync_mesg* %181, %struct.ip_vs_sync_mesg** %7, align 8
  br label %182

182:                                              ; preds = %175, %161
  %183 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %9, align 8
  %184 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = inttoptr i64 %185 to i32*
  store i32* %186, i32** %12, align 8
  %187 = load i32, i32* %15, align 4
  %188 = load i32, i32* %13, align 4
  %189 = add i32 %187, %188
  %190 = zext i32 %189 to i64
  %191 = load %struct.ip_vs_sync_buff*, %struct.ip_vs_sync_buff** %9, align 8
  %192 = getelementptr inbounds %struct.ip_vs_sync_buff, %struct.ip_vs_sync_buff* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %193, %190
  store i64 %194, i64* %192, align 8
  %195 = load %struct.ip_vs_sync_mesg*, %struct.ip_vs_sync_mesg** %7, align 8
  %196 = getelementptr inbounds %struct.ip_vs_sync_mesg, %struct.ip_vs_sync_mesg* %195, i32 0, i32 1
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @ntohs(i8* %197)
  %199 = load i32, i32* %15, align 4
  %200 = add i32 %198, %199
  %201 = load i32, i32* %13, align 4
  %202 = add i32 %200, %201
  %203 = call i8* @htons(i32 %202)
  %204 = load %struct.ip_vs_sync_mesg*, %struct.ip_vs_sync_mesg** %7, align 8
  %205 = getelementptr inbounds %struct.ip_vs_sync_mesg, %struct.ip_vs_sync_mesg* %204, i32 0, i32 1
  store i8* %203, i8** %205, align 8
  br label %206

206:                                              ; preds = %210, %182
  %207 = load i32, i32* %15, align 4
  %208 = add i32 %207, -1
  store i32 %208, i32* %15, align 4
  %209 = icmp ne i32 %207, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %206
  %211 = load i32*, i32** %12, align 8
  %212 = getelementptr inbounds i32, i32* %211, i32 1
  store i32* %212, i32** %12, align 8
  store i32 0, i32* %211, align 4
  br label %206

213:                                              ; preds = %206
  %214 = load i32*, i32** %12, align 8
  %215 = bitcast i32* %214 to %union.ip_vs_sync_conn*
  store %union.ip_vs_sync_conn* %215, %union.ip_vs_sync_conn** %8, align 8
  %216 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %217 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @AF_INET6, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %213
  %222 = load i32, i32* @STYPE_F_INET6, align 4
  br label %224

223:                                              ; preds = %213
  br label %224

224:                                              ; preds = %223, %221
  %225 = phi i32 [ %222, %221 ], [ 0, %223 ]
  %226 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %8, align 8
  %227 = bitcast %union.ip_vs_sync_conn* %226 to %struct.TYPE_12__*
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 12
  store i32 %225, i32* %228, align 8
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* @SVER_MASK, align 4
  %231 = and i32 %229, %230
  %232 = call i8* @htons(i32 %231)
  %233 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %8, align 8
  %234 = bitcast %union.ip_vs_sync_conn* %233 to %struct.TYPE_12__*
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 11
  store i8* %232, i8** %235, align 8
  %236 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %237 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @IP_VS_CONN_F_HASHED, align 4
  %240 = xor i32 %239, -1
  %241 = and i32 %238, %240
  %242 = call i8* @htonl(i32 %241)
  %243 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %8, align 8
  %244 = bitcast %union.ip_vs_sync_conn* %243 to %struct.TYPE_12__*
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 10
  store i8* %242, i8** %245, align 8
  %246 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %247 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  %249 = call i8* @htons(i32 %248)
  %250 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %8, align 8
  %251 = bitcast %union.ip_vs_sync_conn* %250 to %struct.TYPE_12__*
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 9
  store i8* %249, i8** %252, align 8
  %253 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %254 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %253, i32 0, i32 18
  %255 = load i32, i32* %254, align 8
  %256 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %8, align 8
  %257 = bitcast %union.ip_vs_sync_conn* %256 to %struct.TYPE_12__*
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 8
  store i32 %255, i32* %258, align 4
  %259 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %260 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %259, i32 0, i32 17
  %261 = load i32, i32* %260, align 4
  %262 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %8, align 8
  %263 = bitcast %union.ip_vs_sync_conn* %262 to %struct.TYPE_12__*
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 7
  store i32 %261, i32* %264, align 8
  %265 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %266 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %265, i32 0, i32 16
  %267 = load i32, i32* %266, align 8
  %268 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %8, align 8
  %269 = bitcast %union.ip_vs_sync_conn* %268 to %struct.TYPE_12__*
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 6
  store i32 %267, i32* %270, align 4
  %271 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %272 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %271, i32 0, i32 15
  %273 = load i32, i32* %272, align 4
  %274 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %8, align 8
  %275 = bitcast %union.ip_vs_sync_conn* %274 to %struct.TYPE_12__*
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 5
  store i32 %273, i32* %276, align 8
  %277 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %278 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 4
  %280 = call i8* @htonl(i32 %279)
  %281 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %8, align 8
  %282 = bitcast %union.ip_vs_sync_conn* %281 to %struct.TYPE_12__*
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 4
  store i8* %280, i8** %283, align 8
  %284 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %285 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %284, i32 0, i32 5
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @HZ, align 4
  %288 = sdiv i32 %286, %287
  %289 = call i8* @htonl(i32 %288)
  %290 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %8, align 8
  %291 = bitcast %union.ip_vs_sync_conn* %290 to %struct.TYPE_12__*
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 3
  store i8* %289, i8** %292, align 8
  %293 = load %struct.ip_vs_sync_mesg*, %struct.ip_vs_sync_mesg** %7, align 8
  %294 = getelementptr inbounds %struct.ip_vs_sync_mesg, %struct.ip_vs_sync_mesg* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %294, align 8
  %297 = load i32*, i32** %12, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 4
  store i32* %298, i32** %12, align 8
  %299 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %300 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %299, i32 0, i32 14
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %8, align 8
  %304 = bitcast %union.ip_vs_sync_conn* %303 to %struct.TYPE_12__*
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 2
  store i32 %302, i32* %305, align 8
  %306 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %307 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %306, i32 0, i32 13
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %8, align 8
  %311 = bitcast %union.ip_vs_sync_conn* %310 to %struct.TYPE_12__*
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 1
  store i32 %309, i32* %312, align 4
  %313 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %314 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %313, i32 0, i32 12
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %8, align 8
  %318 = bitcast %union.ip_vs_sync_conn* %317 to %struct.TYPE_12__*
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i32 0, i32 0
  store i32 %316, i32* %319, align 8
  %320 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %321 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @IP_VS_CONN_F_SEQ_MASK, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %346

326:                                              ; preds = %224
  %327 = load i32, i32* @IPVS_OPT_SEQ_DATA, align 4
  %328 = load i32*, i32** %12, align 8
  %329 = getelementptr inbounds i32, i32* %328, i32 1
  store i32* %329, i32** %12, align 8
  store i32 %327, i32* %328, align 4
  %330 = load i32*, i32** %12, align 8
  %331 = getelementptr inbounds i32, i32* %330, i32 1
  store i32* %331, i32** %12, align 8
  store i32 4, i32* %330, align 4
  %332 = load i32*, i32** %12, align 8
  %333 = bitcast i32* %332 to %struct.ip_vs_seq*
  %334 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %335 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %334, i32 0, i32 11
  %336 = call i32 @hton_seq(%struct.ip_vs_seq* %333, i32* %335)
  %337 = load i32*, i32** %12, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 4
  store i32* %338, i32** %12, align 8
  %339 = load i32*, i32** %12, align 8
  %340 = bitcast i32* %339 to %struct.ip_vs_seq*
  %341 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %342 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %341, i32 0, i32 10
  %343 = call i32 @hton_seq(%struct.ip_vs_seq* %340, i32* %342)
  %344 = load i32*, i32** %12, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 4
  store i32* %345, i32** %12, align 8
  br label %346

346:                                              ; preds = %326, %224
  %347 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %348 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %401

351:                                              ; preds = %346
  %352 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %353 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %352, i32 0, i32 9
  %354 = load i32, i32* %353, align 8
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %401

356:                                              ; preds = %351
  %357 = load i32, i32* @IPVS_OPT_PE_DATA, align 4
  %358 = load i32*, i32** %12, align 8
  %359 = getelementptr inbounds i32, i32* %358, i32 1
  store i32* %359, i32** %12, align 8
  store i32 %357, i32* %358, align 4
  %360 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %361 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = load i32*, i32** %12, align 8
  %364 = getelementptr inbounds i32, i32* %363, i32 1
  store i32* %364, i32** %12, align 8
  store i32 %362, i32* %363, align 4
  %365 = load i32*, i32** %12, align 8
  %366 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %367 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %366, i32 0, i32 9
  %368 = load i32, i32* %367, align 8
  %369 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %370 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = call i32 @memcpy(i32* %365, i32 %368, i32 %371)
  %373 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %374 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = load i32*, i32** %12, align 8
  %377 = sext i32 %375 to i64
  %378 = getelementptr inbounds i32, i32* %376, i64 %377
  store i32* %378, i32** %12, align 8
  %379 = load i32, i32* %14, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %400

381:                                              ; preds = %356
  %382 = load i32, i32* @IPVS_OPT_PE_NAME, align 4
  %383 = load i32*, i32** %12, align 8
  %384 = getelementptr inbounds i32, i32* %383, i32 1
  store i32* %384, i32** %12, align 8
  store i32 %382, i32* %383, align 4
  %385 = load i32, i32* %14, align 4
  %386 = load i32*, i32** %12, align 8
  %387 = getelementptr inbounds i32, i32* %386, i32 1
  store i32* %387, i32** %12, align 8
  store i32 %385, i32* %386, align 4
  %388 = load i32*, i32** %12, align 8
  %389 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %390 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %389, i32 0, i32 8
  %391 = load %struct.TYPE_11__*, %struct.TYPE_11__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 4
  %394 = load i32, i32* %14, align 4
  %395 = call i32 @memcpy(i32* %388, i32 %393, i32 %394)
  %396 = load i32, i32* %14, align 4
  %397 = load i32*, i32** %12, align 8
  %398 = zext i32 %396 to i64
  %399 = getelementptr inbounds i32, i32* %397, i64 %398
  store i32* %399, i32** %12, align 8
  br label %400

400:                                              ; preds = %381, %356
  br label %401

401:                                              ; preds = %400, %351, %346
  %402 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %403 = getelementptr inbounds %struct.netns_ipvs, %struct.netns_ipvs* %402, i32 0, i32 1
  %404 = call i32 @spin_unlock_bh(i32* %403)
  br label %405

405:                                              ; preds = %401, %39, %31
  %406 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %407 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %406, i32 0, i32 7
  %408 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %407, align 8
  store %struct.ip_vs_conn* %408, %struct.ip_vs_conn** %5, align 8
  %409 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %410 = icmp ne %struct.ip_vs_conn* %409, null
  br i1 %410, label %412, label %411

411:                                              ; preds = %405
  br label %427

412:                                              ; preds = %405
  %413 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %414 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = load i32, i32* @IP_VS_CONN_F_TEMPLATE, align 4
  %417 = and i32 %415, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %423

419:                                              ; preds = %412
  %420 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %5, align 8
  %421 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %420, i32 0, i32 6
  %422 = call i32 @atomic_add_return(i32 1, i32* %421)
  store i32 %422, i32* %6, align 4
  br label %426

423:                                              ; preds = %412
  %424 = load %struct.netns_ipvs*, %struct.netns_ipvs** %4, align 8
  %425 = call i32 @sysctl_sync_threshold(%struct.netns_ipvs* %424)
  store i32 %425, i32* %6, align 4
  br label %426

426:                                              ; preds = %423, %419
  br label %33

427:                                              ; preds = %411, %170, %75, %55, %19
  ret void
}

declare dso_local i64 @sysctl_sync_ver(%struct.netns_ipvs*) #1

declare dso_local i32 @ip_vs_sync_conn_v0(%struct.netns_ipvs*, %struct.ip_vs_conn*, i32) #1

declare dso_local i32 @ip_vs_sync_conn_needed(%struct.netns_ipvs*, %struct.ip_vs_conn*, i32) #1

declare dso_local i32 @IP_VS_ERR_RL(i8*) #1

declare dso_local i32 @strnlen(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @select_master_thread_id(%struct.netns_ipvs*, %struct.ip_vs_conn*) #1

declare dso_local i32 @sb_queue_tail(%struct.netns_ipvs*, %struct.ipvs_master_sync_state*) #1

declare dso_local %struct.ip_vs_sync_buff* @ip_vs_sync_buff_create(%struct.netns_ipvs*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @ntohs(i8*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @hton_seq(%struct.ip_vs_seq*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @sysctl_sync_threshold(%struct.netns_ipvs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
