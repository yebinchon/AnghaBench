; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfsd4_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { %struct.svc_fh, %struct.TYPE_10__* }
%struct.svc_fh = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%union.nfsd4_op_u = type { %struct.nfsd4_open }
%struct.nfsd4_open = type { i32, i64, i64, %struct.TYPE_9__*, i32, i64, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.nfs4_replay }
%struct.nfs4_replay = type { i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.net = type { i32 }
%struct.nfsd_net = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"NFSD: nfsd4_open filename %.*s op_openowner %p\0A\00", align 1
@nfserr_inval = common dso_local global i64 0, align 8
@NFSD4_CLIENT_RECLAIM_COMPLETE = common dso_local global i32 0, align 4
@nfserr_grace = common dso_local global i64 0, align 8
@nfserr_replay_me = common dso_local global i64 0, align 8
@NFSD_MAY_NOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"nfsd4_open: replay failed restoring previous filehandle\0A\00", align 1
@nfserr_no_grace = common dso_local global i64 0, align 8
@NFS4_OO_CONFIRMED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"NFSD: unsupported OPEN claim type %d\0A\00", align 1
@nfserr_notsupp = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"NFSD: Invalid OPEN claim type %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"nfsd4_process_open2 failed to open newly-created file! status=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.nfsd4_compound_state*, %union.nfsd4_op_u*)* @nfsd4_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_open(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %union.nfsd4_op_u*, align 8
  %8 = alloca %struct.nfsd4_open*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.svc_fh*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.nfsd_net*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nfs4_replay*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %7, align 8
  %15 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %7, align 8
  %16 = bitcast %union.nfsd4_op_u* %15 to %struct.nfsd4_open*
  store %struct.nfsd4_open* %16, %struct.nfsd4_open** %8, align 8
  store %struct.svc_fh* null, %struct.svc_fh** %10, align 8
  %17 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %18 = call %struct.net* @SVC_NET(%struct.svc_rqst* %17)
  store %struct.net* %18, %struct.net** %11, align 8
  %19 = load %struct.net*, %struct.net** %11, align 8
  %20 = load i32, i32* @nfsd_net_id, align 4
  %21 = call %struct.nfsd_net* @net_generic(%struct.net* %19, i32 %20)
  store %struct.nfsd_net* %21, %struct.nfsd_net** %12, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %23 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %28 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %32 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %31, i32 0, i32 3
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %30, %struct.TYPE_9__* %33)
  %35 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %36 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %3
  %40 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %41 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 129
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i64, i64* @nfserr_inval, align 8
  store i64 %45, i64* %4, align 8
  br label %263

46:                                               ; preds = %39, %3
  %47 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %48 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %50 = call i64 @nfsd4_has_session(%struct.nfsd4_compound_state* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %46
  %53 = load i32, i32* @NFSD4_CLIENT_RECLAIM_COMPLETE, align 4
  %54 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %55 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %54, i32 0, i32 1
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = call i32 @test_bit(i32 %53, i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %52
  %63 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %64 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 128
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i64, i64* @nfserr_grace, align 8
  store i64 %68, i64* %4, align 8
  br label %263

69:                                               ; preds = %62, %52, %46
  %70 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %71 = call i64 @nfsd4_has_session(%struct.nfsd4_compound_state* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %75 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %74, i32 0, i32 4
  %76 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %77 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %76, i32 0, i32 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = call i32 @copy_clientid(i32* %75, %struct.TYPE_10__* %78)
  br label %80

80:                                               ; preds = %73, %69
  %81 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %82 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %83 = load %struct.nfsd_net*, %struct.nfsd_net** %12, align 8
  %84 = call i64 @nfsd4_process_open1(%struct.nfsd4_compound_state* %81, %struct.nfsd4_open* %82, %struct.nfsd_net* %83)
  store i64 %84, i64* %9, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* @nfserr_replay_me, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %115

88:                                               ; preds = %80
  %89 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %90 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %89, i32 0, i32 3
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  store %struct.nfs4_replay* %93, %struct.nfs4_replay** %14, align 8
  %94 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %95 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %94, i32 0, i32 0
  %96 = call i32 @fh_put(%struct.svc_fh* %95)
  %97 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %98 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %98, i32 0, i32 0
  %100 = load %struct.nfs4_replay*, %struct.nfs4_replay** %14, align 8
  %101 = getelementptr inbounds %struct.nfs4_replay, %struct.nfs4_replay* %100, i32 0, i32 0
  %102 = call i32 @fh_copy_shallow(i32* %99, i32* %101)
  %103 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %104 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %105 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %104, i32 0, i32 0
  %106 = load i32, i32* @NFSD_MAY_NOP, align 4
  %107 = call i64 @fh_verify(%struct.svc_rqst* %103, %struct.svc_fh* %105, i32 0, i32 %106)
  store i64 %107, i64* %9, align 8
  %108 = load i64, i64* %9, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %88
  %111 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %114

112:                                              ; preds = %88
  %113 = load i64, i64* @nfserr_replay_me, align 8
  store i64 %113, i64* %9, align 8
  br label %114

114:                                              ; preds = %112, %110
  br label %115

115:                                              ; preds = %114, %80
  %116 = load i64, i64* %9, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  br label %238

119:                                              ; preds = %115
  %120 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %121 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %126 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %9, align 8
  br label %238

128:                                              ; preds = %119
  %129 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %130 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %131 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %132 = call i64 @nfsd4_check_open_attributes(%struct.svc_rqst* %129, %struct.nfsd4_compound_state* %130, %struct.nfsd4_open* %131)
  store i64 %132, i64* %9, align 8
  %133 = load i64, i64* %9, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %238

136:                                              ; preds = %128
  %137 = load i64, i64* @nfserr_grace, align 8
  store i64 %137, i64* %9, align 8
  %138 = load %struct.net*, %struct.net** %11, align 8
  %139 = call i64 @opens_in_grace(%struct.net* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %143 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 128
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  br label %238

147:                                              ; preds = %141, %136
  %148 = load i64, i64* @nfserr_no_grace, align 8
  store i64 %148, i64* %9, align 8
  %149 = load %struct.net*, %struct.net** %11, align 8
  %150 = call i64 @opens_in_grace(%struct.net* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %147
  %153 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %154 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 128
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %238

158:                                              ; preds = %152, %147
  %159 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %160 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  switch i32 %161, label %205 [
    i32 134, label %162
    i32 129, label %162
    i32 128, label %171
    i32 130, label %188
    i32 132, label %188
    i32 131, label %199
    i32 133, label %199
  ]

162:                                              ; preds = %158, %158
  %163 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %164 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %165 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %166 = call i64 @do_open_lookup(%struct.svc_rqst* %163, %struct.nfsd4_compound_state* %164, %struct.nfsd4_open* %165, %struct.svc_fh** %10)
  store i64 %166, i64* %9, align 8
  %167 = load i64, i64* %9, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %162
  br label %238

170:                                              ; preds = %162
  br label %211

171:                                              ; preds = %158
  %172 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %173 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %172, i32 0, i32 4
  %174 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %175 = load %struct.nfsd_net*, %struct.nfsd_net** %12, align 8
  %176 = call i64 @nfs4_check_open_reclaim(i32* %173, %struct.nfsd4_compound_state* %174, %struct.nfsd_net* %175)
  store i64 %176, i64* %9, align 8
  %177 = load i64, i64* %9, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %171
  br label %238

180:                                              ; preds = %171
  %181 = load i32, i32* @NFS4_OO_CONFIRMED, align 4
  %182 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %183 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %182, i32 0, i32 3
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %181
  store i32 %187, i32* %185, align 4
  store i32 1, i32* %13, align 4
  br label %188

188:                                              ; preds = %158, %158, %180
  %189 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %190 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %191 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %192 = call i64 @do_open_fhandle(%struct.svc_rqst* %189, %struct.nfsd4_compound_state* %190, %struct.nfsd4_open* %191)
  store i64 %192, i64* %9, align 8
  %193 = load i64, i64* %9, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %188
  br label %238

196:                                              ; preds = %188
  %197 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %198 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %197, i32 0, i32 0
  store %struct.svc_fh* %198, %struct.svc_fh** %10, align 8
  br label %211

199:                                              ; preds = %158, %158
  %200 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %201 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %202)
  %204 = load i64, i64* @nfserr_notsupp, align 8
  store i64 %204, i64* %9, align 8
  br label %238

205:                                              ; preds = %158
  %206 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %207 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %208)
  %210 = load i64, i64* @nfserr_inval, align 8
  store i64 %210, i64* %9, align 8
  br label %238

211:                                              ; preds = %196, %170
  %212 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %213 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %214 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %215 = call i64 @nfsd4_process_open2(%struct.svc_rqst* %212, %struct.svc_fh* %213, %struct.nfsd4_open* %214)
  store i64 %215, i64* %9, align 8
  %216 = load i64, i64* %9, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %211
  %219 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %220 = getelementptr inbounds %struct.nfsd4_open, %struct.nfsd4_open* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br label %223

223:                                              ; preds = %218, %211
  %224 = phi i1 [ false, %211 ], [ %222, %218 ]
  %225 = zext i1 %224 to i32
  %226 = load i64, i64* %9, align 8
  %227 = call i32 @be32_to_cpu(i64 %226)
  %228 = call i32 @WARN(i32 %225, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* %13, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %223
  %232 = load i64, i64* %9, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %231
  %235 = load %struct.nfsd_net*, %struct.nfsd_net** %12, align 8
  %236 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %235, i32 0, i32 0
  store i32 1, i32* %236, align 4
  br label %237

237:                                              ; preds = %234, %231, %223
  br label %238

238:                                              ; preds = %237, %205, %199, %195, %179, %169, %157, %146, %135, %124, %118
  %239 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %240 = icmp ne %struct.svc_fh* %239, null
  br i1 %240, label %241, label %255

241:                                              ; preds = %238
  %242 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %243 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %244 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %243, i32 0, i32 0
  %245 = icmp ne %struct.svc_fh* %242, %244
  br i1 %245, label %246, label %255

246:                                              ; preds = %241
  %247 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %248 = getelementptr inbounds %struct.nfsd4_compound_state, %struct.nfsd4_compound_state* %247, i32 0, i32 0
  %249 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %250 = call i32 @fh_dup2(%struct.svc_fh* %248, %struct.svc_fh* %249)
  %251 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %252 = call i32 @fh_put(%struct.svc_fh* %251)
  %253 = load %struct.svc_fh*, %struct.svc_fh** %10, align 8
  %254 = call i32 @kfree(%struct.svc_fh* %253)
  br label %255

255:                                              ; preds = %246, %241, %238
  %256 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %257 = load %struct.nfsd4_open*, %struct.nfsd4_open** %8, align 8
  %258 = call i32 @nfsd4_cleanup_open_state(%struct.nfsd4_compound_state* %256, %struct.nfsd4_open* %257)
  %259 = load %struct.nfsd4_compound_state*, %struct.nfsd4_compound_state** %6, align 8
  %260 = load i64, i64* %9, align 8
  %261 = call i32 @nfsd4_bump_seqid(%struct.nfsd4_compound_state* %259, i64 %260)
  %262 = load i64, i64* %9, align 8
  store i64 %262, i64* %4, align 8
  br label %263

263:                                              ; preds = %255, %67, %44
  %264 = load i64, i64* %4, align 8
  ret i64 %264
}

declare dso_local %struct.net* @SVC_NET(%struct.svc_rqst*) #1

declare dso_local %struct.nfsd_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i64 @nfsd4_has_session(%struct.nfsd4_compound_state*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @copy_clientid(i32*, %struct.TYPE_10__*) #1

declare dso_local i64 @nfsd4_process_open1(%struct.nfsd4_compound_state*, %struct.nfsd4_open*, %struct.nfsd_net*) #1

declare dso_local i32 @fh_put(%struct.svc_fh*) #1

declare dso_local i32 @fh_copy_shallow(i32*, i32*) #1

declare dso_local i64 @fh_verify(%struct.svc_rqst*, %struct.svc_fh*, i32, i32) #1

declare dso_local i64 @nfsd4_check_open_attributes(%struct.svc_rqst*, %struct.nfsd4_compound_state*, %struct.nfsd4_open*) #1

declare dso_local i64 @opens_in_grace(%struct.net*) #1

declare dso_local i64 @do_open_lookup(%struct.svc_rqst*, %struct.nfsd4_compound_state*, %struct.nfsd4_open*, %struct.svc_fh**) #1

declare dso_local i64 @nfs4_check_open_reclaim(i32*, %struct.nfsd4_compound_state*, %struct.nfsd_net*) #1

declare dso_local i64 @do_open_fhandle(%struct.svc_rqst*, %struct.nfsd4_compound_state*, %struct.nfsd4_open*) #1

declare dso_local i64 @nfsd4_process_open2(%struct.svc_rqst*, %struct.svc_fh*, %struct.nfsd4_open*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i64) #1

declare dso_local i32 @fh_dup2(%struct.svc_fh*, %struct.svc_fh*) #1

declare dso_local i32 @kfree(%struct.svc_fh*) #1

declare dso_local i32 @nfsd4_cleanup_open_state(%struct.nfsd4_compound_state*, %struct.nfsd4_open*) #1

declare dso_local i32 @nfsd4_bump_seqid(%struct.nfsd4_compound_state*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
