; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_create_session.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_create_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%union.nfsd4_op_u = type { %struct.nfsd4_create_session }
%struct.nfsd4_create_session = type { i32, i32, i64, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.nfs4_client = type { i32, %struct.nfsd4_clid_slot, i32, i32 }
%struct.nfsd4_clid_slot = type { i64 }
%struct.nfsd4_session = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nfsd4_conn = type { i32 }
%struct.nfsd_net = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@SESSION4_FLAG_MASK_A = common dso_local global i32 0, align 4
@nfserr_inval = common dso_local global i64 0, align 8
@nfserr_jukebox = common dso_local global i64 0, align 8
@nfserr_wrong_cred = common dso_local global i64 0, align 8
@nfserr_replay_cache = common dso_local global i64 0, align 8
@nfserr_clid_inuse = common dso_local global i64 0, align 8
@nfserr_seq_misordered = common dso_local global i64 0, align 8
@nfserr_stale_clientid = common dso_local global i64 0, align 8
@nfs_ok = common dso_local global i64 0, align 8
@SESSION4_PERSIST = common dso_local global i32 0, align 4
@SESSION4_RDMA = common dso_local global i32 0, align 4
@NFS4_MAX_SESSIONID_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd4_create_session(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %union.nfsd4_op_u*, align 8
  %8 = alloca %struct.nfsd4_create_session*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.nfs4_client*, align 8
  %11 = alloca %struct.nfs4_client*, align 8
  %12 = alloca %struct.nfs4_client*, align 8
  %13 = alloca %struct.nfsd4_session*, align 8
  %14 = alloca %struct.nfsd4_conn*, align 8
  %15 = alloca %struct.nfsd4_clid_slot*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.nfsd_net*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %7, align 8
  %18 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %7, align 8
  %19 = bitcast %union.nfsd4_op_u* %18 to %struct.nfsd4_create_session*
  store %struct.nfsd4_create_session* %19, %struct.nfsd4_create_session** %8, align 8
  %20 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %21 = call %struct.sockaddr* @svc_addr(%struct.svc_rqst* %20)
  store %struct.sockaddr* %21, %struct.sockaddr** %9, align 8
  store %struct.nfs4_client* null, %struct.nfs4_client** %12, align 8
  store %struct.nfsd4_clid_slot* null, %struct.nfsd4_clid_slot** %15, align 8
  store i64 0, i64* %16, align 8
  %22 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %23 = call i32 @SVC_NET(%struct.svc_rqst* %22)
  %24 = load i32, i32* @nfsd_net_id, align 4
  %25 = call %struct.nfsd_net* @net_generic(i32 %23, i32 %24)
  store %struct.nfsd_net* %25, %struct.nfsd_net** %17, align 8
  %26 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %8, align 8
  %27 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SESSION4_FLAG_MASK_A, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i64, i64* @nfserr_inval, align 8
  store i64 %34, i64* %4, align 8
  br label %269

35:                                               ; preds = %3
  %36 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %8, align 8
  %37 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %36, i32 0, i32 6
  %38 = call i64 @nfsd4_check_cb_sec(i32* %37)
  store i64 %38, i64* %16, align 8
  %39 = load i64, i64* %16, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i64, i64* %16, align 8
  store i64 %42, i64* %4, align 8
  br label %269

43:                                               ; preds = %35
  %44 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %8, align 8
  %45 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %44, i32 0, i32 1
  %46 = load %struct.nfsd_net*, %struct.nfsd_net** %17, align 8
  %47 = call i64 @check_forechannel_attrs(i32* %45, %struct.nfsd_net* %46)
  store i64 %47, i64* %16, align 8
  %48 = load i64, i64* %16, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i64, i64* %16, align 8
  store i64 %51, i64* %4, align 8
  br label %269

52:                                               ; preds = %43
  %53 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %8, align 8
  %54 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %53, i32 0, i32 5
  %55 = call i64 @check_backchannel_attrs(i32* %54)
  store i64 %55, i64* %16, align 8
  %56 = load i64, i64* %16, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %264

59:                                               ; preds = %52
  %60 = load i64, i64* @nfserr_jukebox, align 8
  store i64 %60, i64* %16, align 8
  %61 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %8, align 8
  %62 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %61, i32 0, i32 1
  %63 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %8, align 8
  %64 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %63, i32 0, i32 5
  %65 = call %struct.nfsd4_session* @alloc_session(i32* %62, i32* %64)
  store %struct.nfsd4_session* %65, %struct.nfsd4_session** %13, align 8
  %66 = load %struct.nfsd4_session*, %struct.nfsd4_session** %13, align 8
  %67 = icmp ne %struct.nfsd4_session* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %59
  br label %264

69:                                               ; preds = %59
  %70 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %71 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %8, align 8
  %72 = call %struct.nfsd4_conn* @alloc_conn_from_crses(%struct.svc_rqst* %70, %struct.nfsd4_create_session* %71)
  store %struct.nfsd4_conn* %72, %struct.nfsd4_conn** %14, align 8
  %73 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %14, align 8
  %74 = icmp ne %struct.nfsd4_conn* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  br label %261

76:                                               ; preds = %69
  %77 = load %struct.nfsd_net*, %struct.nfsd_net** %17, align 8
  %78 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %77, i32 0, i32 0
  %79 = call i32 @spin_lock(i32* %78)
  %80 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %8, align 8
  %81 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %80, i32 0, i32 4
  %82 = load %struct.nfsd_net*, %struct.nfsd_net** %17, align 8
  %83 = call %struct.nfs4_client* @find_unconfirmed_client(i32* %81, i32 1, %struct.nfsd_net* %82)
  store %struct.nfs4_client* %83, %struct.nfs4_client** %11, align 8
  %84 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %8, align 8
  %85 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %84, i32 0, i32 4
  %86 = load %struct.nfsd_net*, %struct.nfsd_net** %17, align 8
  %87 = call %struct.nfs4_client* @find_confirmed_client(i32* %85, i32 1, %struct.nfsd_net* %86)
  store %struct.nfs4_client* %87, %struct.nfs4_client** %10, align 8
  %88 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %89 = icmp ne %struct.nfs4_client* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %76
  %91 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %92 = icmp ne %struct.nfs4_client* %91, null
  br label %93

93:                                               ; preds = %90, %76
  %94 = phi i1 [ false, %76 ], [ %92, %90 ]
  %95 = zext i1 %94 to i32
  %96 = call i32 @WARN_ON_ONCE(i32 %95)
  %97 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %98 = icmp ne %struct.nfs4_client* %97, null
  br i1 %98, label %99, label %128

99:                                               ; preds = %93
  %100 = load i64, i64* @nfserr_wrong_cred, align 8
  store i64 %100, i64* %16, align 8
  %101 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %102 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %103 = call i32 @nfsd4_mach_creds_match(%struct.nfs4_client* %101, %struct.svc_rqst* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %99
  br label %249

106:                                              ; preds = %99
  %107 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %108 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %107, i32 0, i32 1
  store %struct.nfsd4_clid_slot* %108, %struct.nfsd4_clid_slot** %15, align 8
  %109 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %8, align 8
  %110 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.nfsd4_clid_slot*, %struct.nfsd4_clid_slot** %15, align 8
  %113 = getelementptr inbounds %struct.nfsd4_clid_slot, %struct.nfsd4_clid_slot* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @check_slot_seqid(i64 %111, i64 %114, i32 0)
  store i64 %115, i64* %16, align 8
  %116 = load i64, i64* %16, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %106
  %119 = load i64, i64* %16, align 8
  %120 = load i64, i64* @nfserr_replay_cache, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %8, align 8
  %124 = load %struct.nfsd4_clid_slot*, %struct.nfsd4_clid_slot** %15, align 8
  %125 = call i64 @nfsd4_replay_create_session(%struct.nfsd4_create_session* %123, %struct.nfsd4_clid_slot* %124)
  store i64 %125, i64* %16, align 8
  br label %126

126:                                              ; preds = %122, %118
  br label %249

127:                                              ; preds = %106
  br label %189

128:                                              ; preds = %93
  %129 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %130 = icmp ne %struct.nfs4_client* %129, null
  br i1 %130, label %131, label %186

131:                                              ; preds = %128
  %132 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %133 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %132, i32 0, i32 3
  %134 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %135 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %134, i32 0, i32 0
  %136 = call i32 @same_creds(i32* %133, i32* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %131
  %139 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %140 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %141 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %140, i32 0, i32 2
  %142 = bitcast i32* %141 to %struct.sockaddr*
  %143 = call i32 @rpc_cmp_addr(%struct.sockaddr* %139, %struct.sockaddr* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %138, %131
  %146 = load i64, i64* @nfserr_clid_inuse, align 8
  store i64 %146, i64* %16, align 8
  br label %249

147:                                              ; preds = %138
  %148 = load i64, i64* @nfserr_wrong_cred, align 8
  store i64 %148, i64* %16, align 8
  %149 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %150 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %151 = call i32 @nfsd4_mach_creds_match(%struct.nfs4_client* %149, %struct.svc_rqst* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %147
  br label %249

154:                                              ; preds = %147
  %155 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %156 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %155, i32 0, i32 1
  store %struct.nfsd4_clid_slot* %156, %struct.nfsd4_clid_slot** %15, align 8
  %157 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %8, align 8
  %158 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.nfsd4_clid_slot*, %struct.nfsd4_clid_slot** %15, align 8
  %161 = getelementptr inbounds %struct.nfsd4_clid_slot, %struct.nfsd4_clid_slot* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i64 @check_slot_seqid(i64 %159, i64 %162, i32 0)
  store i64 %163, i64* %16, align 8
  %164 = load i64, i64* %16, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %154
  %167 = load i64, i64* @nfserr_seq_misordered, align 8
  store i64 %167, i64* %16, align 8
  br label %249

168:                                              ; preds = %154
  %169 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %170 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %169, i32 0, i32 0
  %171 = load %struct.nfsd_net*, %struct.nfsd_net** %17, align 8
  %172 = call %struct.nfs4_client* @find_confirmed_client_by_name(i32* %170, %struct.nfsd_net* %171)
  store %struct.nfs4_client* %172, %struct.nfs4_client** %12, align 8
  %173 = load %struct.nfs4_client*, %struct.nfs4_client** %12, align 8
  %174 = icmp ne %struct.nfs4_client* %173, null
  br i1 %174, label %175, label %182

175:                                              ; preds = %168
  %176 = load %struct.nfs4_client*, %struct.nfs4_client** %12, align 8
  %177 = call i64 @mark_client_expired_locked(%struct.nfs4_client* %176)
  store i64 %177, i64* %16, align 8
  %178 = load i64, i64* %16, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  store %struct.nfs4_client* null, %struct.nfs4_client** %12, align 8
  br label %249

181:                                              ; preds = %175
  br label %182

182:                                              ; preds = %181, %168
  %183 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %184 = call i32 @move_to_confirmed(%struct.nfs4_client* %183)
  %185 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  store %struct.nfs4_client* %185, %struct.nfs4_client** %10, align 8
  br label %188

186:                                              ; preds = %128
  %187 = load i64, i64* @nfserr_stale_clientid, align 8
  store i64 %187, i64* %16, align 8
  br label %249

188:                                              ; preds = %182
  br label %189

189:                                              ; preds = %188, %127
  %190 = load i64, i64* @nfs_ok, align 8
  store i64 %190, i64* %16, align 8
  %191 = load i32, i32* @SESSION4_PERSIST, align 4
  %192 = xor i32 %191, -1
  %193 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %8, align 8
  %194 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = and i32 %195, %192
  store i32 %196, i32* %194, align 8
  %197 = load i32, i32* @SESSION4_RDMA, align 4
  %198 = xor i32 %197, -1
  %199 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %8, align 8
  %200 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = and i32 %201, %198
  store i32 %202, i32* %200, align 8
  %203 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %204 = load %struct.nfsd4_session*, %struct.nfsd4_session** %13, align 8
  %205 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %206 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %8, align 8
  %207 = call i32 @init_session(%struct.svc_rqst* %203, %struct.nfsd4_session* %204, %struct.nfs4_client* %205, %struct.nfsd4_create_session* %206)
  %208 = load %struct.nfsd4_session*, %struct.nfsd4_session** %13, align 8
  %209 = call i32 @nfsd4_get_session_locked(%struct.nfsd4_session* %208)
  %210 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %8, align 8
  %211 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.nfsd4_session*, %struct.nfsd4_session** %13, align 8
  %215 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @NFS4_MAX_SESSIONID_LEN, align 4
  %219 = call i32 @memcpy(i32 %213, i32 %217, i32 %218)
  %220 = load %struct.nfsd4_clid_slot*, %struct.nfsd4_clid_slot** %15, align 8
  %221 = getelementptr inbounds %struct.nfsd4_clid_slot, %struct.nfsd4_clid_slot* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %222, 1
  store i64 %223, i64* %221, align 8
  %224 = load %struct.nfsd4_clid_slot*, %struct.nfsd4_clid_slot** %15, align 8
  %225 = getelementptr inbounds %struct.nfsd4_clid_slot, %struct.nfsd4_clid_slot* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %8, align 8
  %228 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %227, i32 0, i32 2
  store i64 %226, i64* %228, align 8
  %229 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %8, align 8
  %230 = load %struct.nfsd4_clid_slot*, %struct.nfsd4_clid_slot** %15, align 8
  %231 = load i64, i64* %16, align 8
  %232 = call i32 @nfsd4_cache_create_session(%struct.nfsd4_create_session* %229, %struct.nfsd4_clid_slot* %230, i64 %231)
  %233 = load %struct.nfsd_net*, %struct.nfsd_net** %17, align 8
  %234 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %233, i32 0, i32 0
  %235 = call i32 @spin_unlock(i32* %234)
  %236 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %237 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %14, align 8
  %238 = load %struct.nfsd4_session*, %struct.nfsd4_session** %13, align 8
  %239 = call i32 @nfsd4_init_conn(%struct.svc_rqst* %236, %struct.nfsd4_conn* %237, %struct.nfsd4_session* %238)
  %240 = load %struct.nfsd4_session*, %struct.nfsd4_session** %13, align 8
  %241 = call i32 @nfsd4_put_session(%struct.nfsd4_session* %240)
  %242 = load %struct.nfs4_client*, %struct.nfs4_client** %12, align 8
  %243 = icmp ne %struct.nfs4_client* %242, null
  br i1 %243, label %244, label %247

244:                                              ; preds = %189
  %245 = load %struct.nfs4_client*, %struct.nfs4_client** %12, align 8
  %246 = call i32 @expire_client(%struct.nfs4_client* %245)
  br label %247

247:                                              ; preds = %244, %189
  %248 = load i64, i64* %16, align 8
  store i64 %248, i64* %4, align 8
  br label %269

249:                                              ; preds = %186, %180, %166, %153, %145, %126, %105
  %250 = load %struct.nfsd_net*, %struct.nfsd_net** %17, align 8
  %251 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %250, i32 0, i32 0
  %252 = call i32 @spin_unlock(i32* %251)
  %253 = load %struct.nfsd4_conn*, %struct.nfsd4_conn** %14, align 8
  %254 = call i32 @free_conn(%struct.nfsd4_conn* %253)
  %255 = load %struct.nfs4_client*, %struct.nfs4_client** %12, align 8
  %256 = icmp ne %struct.nfs4_client* %255, null
  br i1 %256, label %257, label %260

257:                                              ; preds = %249
  %258 = load %struct.nfs4_client*, %struct.nfs4_client** %12, align 8
  %259 = call i32 @expire_client(%struct.nfs4_client* %258)
  br label %260

260:                                              ; preds = %257, %249
  br label %261

261:                                              ; preds = %260, %75
  %262 = load %struct.nfsd4_session*, %struct.nfsd4_session** %13, align 8
  %263 = call i32 @__free_session(%struct.nfsd4_session* %262)
  br label %264

264:                                              ; preds = %261, %68, %58
  %265 = load %struct.nfsd4_create_session*, %struct.nfsd4_create_session** %8, align 8
  %266 = getelementptr inbounds %struct.nfsd4_create_session, %struct.nfsd4_create_session* %265, i32 0, i32 1
  %267 = call i32 @nfsd4_put_drc_mem(i32* %266)
  %268 = load i64, i64* %16, align 8
  store i64 %268, i64* %4, align 8
  br label %269

269:                                              ; preds = %264, %247, %50, %41, %33
  %270 = load i64, i64* %4, align 8
  ret i64 %270
}

declare dso_local %struct.sockaddr* @svc_addr(%struct.svc_rqst*) #1

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #1

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #1

declare dso_local i64 @nfsd4_check_cb_sec(i32*) #1

declare dso_local i64 @check_forechannel_attrs(i32*, %struct.nfsd_net*) #1

declare dso_local i64 @check_backchannel_attrs(i32*) #1

declare dso_local %struct.nfsd4_session* @alloc_session(i32*, i32*) #1

declare dso_local %struct.nfsd4_conn* @alloc_conn_from_crses(%struct.svc_rqst*, %struct.nfsd4_create_session*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs4_client* @find_unconfirmed_client(i32*, i32, %struct.nfsd_net*) #1

declare dso_local %struct.nfs4_client* @find_confirmed_client(i32*, i32, %struct.nfsd_net*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @nfsd4_mach_creds_match(%struct.nfs4_client*, %struct.svc_rqst*) #1

declare dso_local i64 @check_slot_seqid(i64, i64, i32) #1

declare dso_local i64 @nfsd4_replay_create_session(%struct.nfsd4_create_session*, %struct.nfsd4_clid_slot*) #1

declare dso_local i32 @same_creds(i32*, i32*) #1

declare dso_local i32 @rpc_cmp_addr(%struct.sockaddr*, %struct.sockaddr*) #1

declare dso_local %struct.nfs4_client* @find_confirmed_client_by_name(i32*, %struct.nfsd_net*) #1

declare dso_local i64 @mark_client_expired_locked(%struct.nfs4_client*) #1

declare dso_local i32 @move_to_confirmed(%struct.nfs4_client*) #1

declare dso_local i32 @init_session(%struct.svc_rqst*, %struct.nfsd4_session*, %struct.nfs4_client*, %struct.nfsd4_create_session*) #1

declare dso_local i32 @nfsd4_get_session_locked(%struct.nfsd4_session*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @nfsd4_cache_create_session(%struct.nfsd4_create_session*, %struct.nfsd4_clid_slot*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfsd4_init_conn(%struct.svc_rqst*, %struct.nfsd4_conn*, %struct.nfsd4_session*) #1

declare dso_local i32 @nfsd4_put_session(%struct.nfsd4_session*) #1

declare dso_local i32 @expire_client(%struct.nfs4_client*) #1

declare dso_local i32 @free_conn(%struct.nfsd4_conn*) #1

declare dso_local i32 @__free_session(%struct.nfsd4_session*) #1

declare dso_local i32 @nfsd4_put_drc_mem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
