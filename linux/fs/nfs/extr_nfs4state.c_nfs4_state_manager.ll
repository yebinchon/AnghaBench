; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_state_manager.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4state.c_nfs4_state_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_client = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NFS4CLNT_RUN_MANAGER = common dso_local global i32 0, align 4
@NFS4CLNT_PURGE_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"purge state\00", align 1
@NFS4CLNT_LEASE_EXPIRED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"lease expired\00", align 1
@NFS4CLNT_SESSION_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"reset session\00", align 1
@NFS4CLNT_BIND_CONN_TO_SESSION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"bind conn to session\00", align 1
@NFS4CLNT_CHECK_LEASE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"check lease\00", align 1
@NFS4CLNT_MOVED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"migration\00", align 1
@NFS4CLNT_LEASE_MOVED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"lease moved\00", align 1
@NFS4CLNT_RECLAIM_REBOOT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"reclaim reboot\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@NFS4CLNT_DELEGATION_EXPIRED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"detect expired delegations\00", align 1
@NFS4CLNT_RECLAIM_NOGRACE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"reclaim nograce\00", align 1
@NFS4CLNT_DELEGRETURN_RUNNING = common dso_local global i32 0, align 4
@NFS4CLNT_DELEGRETURN = common dso_local global i32 0, align 4
@NFS4CLNT_MANAGER_RUNNING = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.12 = private unnamed_addr constant [64 x i8] c"NFS: state manager%s%s failed on NFSv4 server %s with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_client*)* @nfs4_state_manager to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_state_manager(%struct.nfs_client* %0) #0 {
  %2 = alloca %struct.nfs_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.nfs_client* %0, %struct.nfs_client** %2, align 8
  store i32 0, i32* %3, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %6

6:                                                ; preds = %223, %1
  %7 = load i32, i32* @NFS4CLNT_RUN_MANAGER, align 4
  %8 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %9 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %8, i32 0, i32 1
  %10 = call i32 @clear_bit(i32 %7, i32* %9)
  %11 = load i32, i32* @NFS4CLNT_PURGE_STATE, align 4
  %12 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %13 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %12, i32 0, i32 1
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %6
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %17 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %18 = call i32 @nfs4_purge_lease(%struct.nfs_client* %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %226

22:                                               ; preds = %16
  br label %214

23:                                               ; preds = %6
  %24 = load i32, i32* @NFS4CLNT_LEASE_EXPIRED, align 4
  %25 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %26 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %25, i32 0, i32 1
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %30 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %31 = call i32 @nfs4_reclaim_lease(%struct.nfs_client* %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %226

35:                                               ; preds = %29
  br label %214

36:                                               ; preds = %23
  %37 = load i32, i32* @NFS4CLNT_SESSION_RESET, align 4
  %38 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %39 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %38, i32 0, i32 1
  %40 = call i64 @test_and_clear_bit(i32 %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  %43 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %44 = call i32 @nfs4_reset_session(%struct.nfs_client* %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* @NFS4CLNT_LEASE_EXPIRED, align 4
  %46 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %47 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %46, i32 0, i32 1
  %48 = call i64 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %214

51:                                               ; preds = %42
  %52 = load i32, i32* %3, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %226

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55, %36
  %57 = load i32, i32* @NFS4CLNT_BIND_CONN_TO_SESSION, align 4
  %58 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %59 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %58, i32 0, i32 1
  %60 = call i64 @test_and_clear_bit(i32 %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  %63 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %64 = call i32 @nfs4_bind_conn_to_session(%struct.nfs_client* %63)
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* %3, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %226

68:                                               ; preds = %62
  br label %214

69:                                               ; preds = %56
  %70 = load i32, i32* @NFS4CLNT_CHECK_LEASE, align 4
  %71 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %72 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %71, i32 0, i32 1
  %73 = call i64 @test_and_clear_bit(i32 %70, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  %76 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %77 = call i32 @nfs4_check_lease(%struct.nfs_client* %76)
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %3, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %226

81:                                               ; preds = %75
  br label %214

82:                                               ; preds = %69
  %83 = load i32, i32* @NFS4CLNT_MOVED, align 4
  %84 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %85 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %84, i32 0, i32 1
  %86 = call i64 @test_and_clear_bit(i32 %83, i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  %89 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %90 = call i32 @nfs4_handle_migration(%struct.nfs_client* %89)
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* %3, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %226

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94, %82
  %96 = load i32, i32* @NFS4CLNT_LEASE_MOVED, align 4
  %97 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %98 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %97, i32 0, i32 1
  %99 = call i64 @test_and_clear_bit(i32 %96, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  %102 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %103 = call i32 @nfs4_handle_lease_moved(%struct.nfs_client* %102)
  store i32 %103, i32* %3, align 4
  %104 = load i32, i32* %3, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %226

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %107, %95
  %109 = load i32, i32* @NFS4CLNT_RECLAIM_REBOOT, align 4
  %110 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %111 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %110, i32 0, i32 1
  %112 = call i64 @test_bit(i32 %109, i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %108
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8** %4, align 8
  %115 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %116 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %117 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %116, i32 0, i32 2
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @nfs4_do_reclaim(%struct.nfs_client* %115, i32 %120)
  store i32 %121, i32* %3, align 4
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* @EAGAIN, align 4
  %124 = sub nsw i32 0, %123
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %114
  br label %214

127:                                              ; preds = %114
  %128 = load i32, i32* %3, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %226

131:                                              ; preds = %127
  %132 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %133 = call i32 @nfs4_state_end_reclaim_reboot(%struct.nfs_client* %132)
  br label %134

134:                                              ; preds = %131, %108
  %135 = load i32, i32* @NFS4CLNT_DELEGATION_EXPIRED, align 4
  %136 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %137 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %136, i32 0, i32 1
  %138 = call i64 @test_and_clear_bit(i32 %135, i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i8** %4, align 8
  %141 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %142 = call i32 @nfs_reap_expired_delegations(%struct.nfs_client* %141)
  br label %214

143:                                              ; preds = %134
  %144 = load i32, i32* @NFS4CLNT_RECLAIM_NOGRACE, align 4
  %145 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %146 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %145, i32 0, i32 1
  %147 = call i64 @test_bit(i32 %144, i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %171

149:                                              ; preds = %143
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8** %4, align 8
  %150 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %151 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %152 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %151, i32 0, i32 2
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @nfs4_do_reclaim(%struct.nfs_client* %150, i32 %155)
  store i32 %156, i32* %3, align 4
  %157 = load i32, i32* %3, align 4
  %158 = load i32, i32* @EAGAIN, align 4
  %159 = sub nsw i32 0, %158
  %160 = icmp eq i32 %157, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %149
  br label %214

162:                                              ; preds = %149
  %163 = load i32, i32* %3, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  br label %226

166:                                              ; preds = %162
  %167 = load i32, i32* @NFS4CLNT_RECLAIM_NOGRACE, align 4
  %168 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %169 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %168, i32 0, i32 1
  %170 = call i32 @clear_bit(i32 %167, i32* %169)
  br label %171

171:                                              ; preds = %166, %143
  %172 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %173 = call i32 @nfs4_end_drain_session(%struct.nfs_client* %172)
  %174 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %175 = call i32 @nfs4_clear_state_manager_bit(%struct.nfs_client* %174)
  %176 = load i32, i32* @NFS4CLNT_DELEGRETURN_RUNNING, align 4
  %177 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %178 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %177, i32 0, i32 1
  %179 = call i64 @test_and_set_bit(i32 %176, i32* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %199, label %181

181:                                              ; preds = %171
  %182 = load i32, i32* @NFS4CLNT_DELEGRETURN, align 4
  %183 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %184 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %183, i32 0, i32 1
  %185 = call i64 @test_and_clear_bit(i32 %182, i32* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %181
  %188 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %189 = call i32 @nfs_client_return_marked_delegations(%struct.nfs_client* %188)
  %190 = load i32, i32* @NFS4CLNT_RUN_MANAGER, align 4
  %191 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %192 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %191, i32 0, i32 1
  %193 = call i32 @set_bit(i32 %190, i32* %192)
  br label %194

194:                                              ; preds = %187, %181
  %195 = load i32, i32* @NFS4CLNT_DELEGRETURN_RUNNING, align 4
  %196 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %197 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %196, i32 0, i32 1
  %198 = call i32 @clear_bit(i32 %195, i32* %197)
  br label %199

199:                                              ; preds = %194, %171
  %200 = load i32, i32* @NFS4CLNT_RUN_MANAGER, align 4
  %201 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %202 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %201, i32 0, i32 1
  %203 = call i64 @test_bit(i32 %200, i32* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %206, label %205

205:                                              ; preds = %199
  br label %246

206:                                              ; preds = %199
  %207 = load i32, i32* @NFS4CLNT_MANAGER_RUNNING, align 4
  %208 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %209 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %208, i32 0, i32 1
  %210 = call i64 @test_and_set_bit(i32 %207, i32* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %206
  br label %246

213:                                              ; preds = %206
  br label %214

214:                                              ; preds = %213, %161, %140, %126, %81, %68, %50, %35, %22
  %215 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %216 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %215, i32 0, i32 3
  %217 = call i32 @refcount_read(i32* %216)
  %218 = icmp sgt i32 %217, 1
  br i1 %218, label %219, label %223

219:                                              ; preds = %214
  %220 = call i32 (...) @signalled()
  %221 = icmp ne i32 %220, 0
  %222 = xor i1 %221, true
  br label %223

223:                                              ; preds = %219, %214
  %224 = phi i1 [ false, %214 ], [ %222, %219 ]
  br i1 %224, label %6, label %225

225:                                              ; preds = %223
  br label %241

226:                                              ; preds = %165, %130, %106, %93, %80, %67, %54, %34, %21
  %227 = load i8*, i8** %4, align 8
  %228 = call i64 @strlen(i8* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %226
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8** %5, align 8
  br label %231

231:                                              ; preds = %230, %226
  %232 = load i8*, i8** %5, align 8
  %233 = load i8*, i8** %4, align 8
  %234 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %235 = getelementptr inbounds %struct.nfs_client, %struct.nfs_client* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* %3, align 4
  %238 = sub nsw i32 0, %237
  %239 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.12, i64 0, i64 0), i8* %232, i8* %233, i32 %236, i32 %238)
  %240 = call i32 @ssleep(i32 1)
  br label %241

241:                                              ; preds = %231, %225
  %242 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %243 = call i32 @nfs4_end_drain_session(%struct.nfs_client* %242)
  %244 = load %struct.nfs_client*, %struct.nfs_client** %2, align 8
  %245 = call i32 @nfs4_clear_state_manager_bit(%struct.nfs_client* %244)
  br label %246

246:                                              ; preds = %241, %212, %205
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nfs4_purge_lease(%struct.nfs_client*) #1

declare dso_local i32 @nfs4_reclaim_lease(%struct.nfs_client*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @nfs4_reset_session(%struct.nfs_client*) #1

declare dso_local i32 @nfs4_bind_conn_to_session(%struct.nfs_client*) #1

declare dso_local i32 @nfs4_check_lease(%struct.nfs_client*) #1

declare dso_local i32 @nfs4_handle_migration(%struct.nfs_client*) #1

declare dso_local i32 @nfs4_handle_lease_moved(%struct.nfs_client*) #1

declare dso_local i32 @nfs4_do_reclaim(%struct.nfs_client*, i32) #1

declare dso_local i32 @nfs4_state_end_reclaim_reboot(%struct.nfs_client*) #1

declare dso_local i32 @nfs_reap_expired_delegations(%struct.nfs_client*) #1

declare dso_local i32 @nfs4_end_drain_session(%struct.nfs_client*) #1

declare dso_local i32 @nfs4_clear_state_manager_bit(%struct.nfs_client*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @nfs_client_return_marked_delegations(%struct.nfs_client*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @signalled(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @ssleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
