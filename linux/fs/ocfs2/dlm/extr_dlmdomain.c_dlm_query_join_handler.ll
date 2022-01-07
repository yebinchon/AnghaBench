; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_query_join_handler.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_query_join_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2net_msg = type { i64 }
%struct.dlm_query_join_request = type { i32, %struct.TYPE_4__, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dlm_query_join_packet = type { i8*, i32, i32 }
%struct.dlm_ctxt = type { i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@JOIN_DISALLOW = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"node %u wants to join domain %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"node %u is not in our live map yet\0A\00", align 1
@JOIN_OK_NO_MAP = common dso_local global i8* null, align 8
@dlm_domain_lock = common dso_local global i32 0, align 4
@O2NM_MAX_NODES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [63 x i8] c"disallow join as node %u does not have node %u in its nodemap\0A\00", align 1
@DLM_CTXT_LEAVING = common dso_local global i64 0, align 8
@DLM_CTXT_NEW = common dso_local global i64 0, align 8
@DLM_LOCK_RES_OWNER_UNKNOWN = common dso_local global i64 0, align 8
@DLM_RECO_STATE_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [50 x i8] c"node %u trying to join, but recovery is ongoing.\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"node %u trying to join, but it still needs recovery.\0A\00", align 1
@.str.5 = private unnamed_addr constant [72 x i8] c"node %u trying to join, but it is still in the domain! needs recovery?\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"DLM\00", align 1
@JOIN_PROTOCOL_MISMATCH = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@JOIN_OK = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"We respond with %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.o2net_msg*, i32, i8*, i8**)* @dlm_query_join_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_query_join_handler(%struct.o2net_msg* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca %struct.o2net_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.dlm_query_join_request*, align 8
  %10 = alloca %struct.dlm_query_join_packet, align 8
  %11 = alloca %struct.dlm_ctxt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.o2net_msg* %0, %struct.o2net_msg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8** %3, i8*** %8, align 8
  %15 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 0
  %16 = load i8*, i8** @JOIN_DISALLOW, align 8
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 1
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 2
  store i32 0, i32* %18, align 4
  store %struct.dlm_ctxt* null, %struct.dlm_ctxt** %11, align 8
  %19 = load %struct.o2net_msg*, %struct.o2net_msg** %5, align 8
  %20 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.dlm_query_join_request*
  store %struct.dlm_query_join_request* %22, %struct.dlm_query_join_request** %9, align 8
  %23 = load %struct.dlm_query_join_request*, %struct.dlm_query_join_request** %9, align 8
  %24 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dlm_query_join_request*, %struct.dlm_query_join_request** %9, align 8
  %27 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load %struct.dlm_query_join_request*, %struct.dlm_query_join_request** %9, align 8
  %31 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @o2hb_check_node_heartbeating_no_sem(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %4
  %36 = load %struct.dlm_query_join_request*, %struct.dlm_query_join_request** %9, align 8
  %37 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i8*, i8** @JOIN_DISALLOW, align 8
  %41 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 0
  store i8* %40, i8** %41, align 8
  br label %214

42:                                               ; preds = %4
  %43 = load i8*, i8** @JOIN_OK_NO_MAP, align 8
  %44 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 0
  store i8* %43, i8** %44, align 8
  %45 = call i32 @spin_lock(i32* @dlm_domain_lock)
  %46 = load %struct.dlm_query_join_request*, %struct.dlm_query_join_request** %9, align 8
  %47 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dlm_query_join_request*, %struct.dlm_query_join_request** %9, align 8
  %50 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.dlm_ctxt* @__dlm_lookup_domain_full(i32 %48, i32 %51)
  store %struct.dlm_ctxt* %52, %struct.dlm_ctxt** %11, align 8
  %53 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %54 = icmp ne %struct.dlm_ctxt* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %42
  br label %212

56:                                               ; preds = %42
  store i64 0, i64* %13, align 8
  br label %57

57:                                               ; preds = %85, %56
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* @O2NM_MAX_NODES, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %88

61:                                               ; preds = %57
  %62 = load i64, i64* %13, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %65 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @test_bit(i32 %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %61
  %70 = load i64, i64* %13, align 8
  %71 = load %struct.dlm_query_join_request*, %struct.dlm_query_join_request** %9, align 8
  %72 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @byte_test_bit(i64 %70, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %69
  %77 = load %struct.dlm_query_join_request*, %struct.dlm_query_join_request** %9, align 8
  %78 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* %13, align 8
  %81 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %79, i64 %80)
  %82 = load i8*, i8** @JOIN_DISALLOW, align 8
  %83 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 0
  store i8* %82, i8** %83, align 8
  br label %212

84:                                               ; preds = %69
  br label %85

85:                                               ; preds = %84, %61
  %86 = load i64, i64* %13, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %13, align 8
  br label %57

88:                                               ; preds = %57
  %89 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %90 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @DLM_CTXT_LEAVING, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %211

94:                                               ; preds = %88
  %95 = load %struct.dlm_query_join_request*, %struct.dlm_query_join_request** %9, align 8
  %96 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %14, align 4
  %98 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %99 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %98, i32 0, i32 2
  %100 = call i32 @spin_lock(i32* %99)
  %101 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %102 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @DLM_CTXT_NEW, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %115

106:                                              ; preds = %94
  %107 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %108 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @DLM_LOCK_RES_OWNER_UNKNOWN, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i8*, i8** @JOIN_OK_NO_MAP, align 8
  %114 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 0
  store i8* %113, i8** %114, align 8
  br label %207

115:                                              ; preds = %106, %94
  %116 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %117 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @DLM_LOCK_RES_OWNER_UNKNOWN, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load i8*, i8** @JOIN_DISALLOW, align 8
  %123 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 0
  store i8* %122, i8** %123, align 8
  br label %206

124:                                              ; preds = %115
  %125 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %126 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %125, i32 0, i32 7
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @DLM_RECO_STATE_ACTIVE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %124
  %133 = load i32, i32* %14, align 4
  %134 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  %135 = load i8*, i8** @JOIN_DISALLOW, align 8
  %136 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 0
  store i8* %135, i8** %136, align 8
  br label %205

137:                                              ; preds = %124
  %138 = load i32, i32* %14, align 4
  %139 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %140 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = call i64 @test_bit(i32 %138, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = load i32, i32* %14, align 4
  %146 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %145)
  %147 = load i8*, i8** @JOIN_DISALLOW, align 8
  %148 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 0
  store i8* %147, i8** %148, align 8
  br label %204

149:                                              ; preds = %137
  %150 = load i32, i32* %14, align 4
  %151 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %152 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @test_bit(i32 %150, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %149
  %157 = load i32, i32* %14, align 4
  %158 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.5, i64 0, i64 0), i32 %157)
  %159 = load i8*, i8** @JOIN_DISALLOW, align 8
  %160 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 0
  store i8* %159, i8** %160, align 8
  br label %203

161:                                              ; preds = %149
  %162 = load i32, i32* %14, align 4
  %163 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %164 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %163, i32 0, i32 4
  %165 = load %struct.dlm_query_join_request*, %struct.dlm_query_join_request** %9, align 8
  %166 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %165, i32 0, i32 2
  %167 = call i64 @dlm_query_join_proto_check(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %162, i32* %164, %struct.TYPE_4__* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %161
  %170 = load i8*, i8** @JOIN_PROTOCOL_MISMATCH, align 8
  %171 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 0
  store i8* %170, i8** %171, align 8
  br label %202

172:                                              ; preds = %161
  %173 = load i32, i32* %14, align 4
  %174 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %175 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %174, i32 0, i32 3
  %176 = load %struct.dlm_query_join_request*, %struct.dlm_query_join_request** %9, align 8
  %177 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %176, i32 0, i32 1
  %178 = call i64 @dlm_query_join_proto_check(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %173, i32* %175, %struct.TYPE_4__* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %172
  %181 = load i8*, i8** @JOIN_PROTOCOL_MISMATCH, align 8
  %182 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 0
  store i8* %181, i8** %182, align 8
  br label %201

183:                                              ; preds = %172
  %184 = load %struct.dlm_query_join_request*, %struct.dlm_query_join_request** %9, align 8
  %185 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 2
  store i32 %187, i32* %188, align 4
  %189 = load %struct.dlm_query_join_request*, %struct.dlm_query_join_request** %9, align 8
  %190 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 1
  store i32 %192, i32* %193, align 8
  %194 = load i8*, i8** @JOIN_OK, align 8
  %195 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 0
  store i8* %194, i8** %195, align 8
  %196 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %197 = load %struct.dlm_query_join_request*, %struct.dlm_query_join_request** %9, align 8
  %198 = getelementptr inbounds %struct.dlm_query_join_request, %struct.dlm_query_join_request* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @__dlm_set_joining_node(%struct.dlm_ctxt* %196, i32 %199)
  br label %201

201:                                              ; preds = %183, %180
  br label %202

202:                                              ; preds = %201, %169
  br label %203

203:                                              ; preds = %202, %156
  br label %204

204:                                              ; preds = %203, %144
  br label %205

205:                                              ; preds = %204, %132
  br label %206

206:                                              ; preds = %205, %121
  br label %207

207:                                              ; preds = %206, %112
  %208 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %11, align 8
  %209 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %208, i32 0, i32 2
  %210 = call i32 @spin_unlock(i32* %209)
  br label %211

211:                                              ; preds = %207, %88
  br label %212

212:                                              ; preds = %211, %76, %55
  %213 = call i32 @spin_unlock(i32* @dlm_domain_lock)
  br label %214

214:                                              ; preds = %212, %35
  %215 = getelementptr inbounds %struct.dlm_query_join_packet, %struct.dlm_query_join_packet* %10, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = ptrtoint i8* %216 to i32
  %218 = call i32 (i32, i8*, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %217)
  %219 = call i32 @dlm_query_join_packet_to_wire(%struct.dlm_query_join_packet* %10, i32* %12)
  %220 = load i32, i32* %12, align 4
  ret i32 %220
}

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @o2hb_check_node_heartbeating_no_sem(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dlm_ctxt* @__dlm_lookup_domain_full(i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @byte_test_bit(i64, i32) #1

declare dso_local i64 @dlm_query_join_proto_check(i8*, i32, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @__dlm_set_joining_node(%struct.dlm_ctxt*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_query_join_packet_to_wire(%struct.dlm_query_join_packet*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
