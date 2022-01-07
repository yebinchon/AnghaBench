; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_setclientid_confirm.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_setclientid_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%union.nfsd4_op_u = type { %struct.nfsd4_setclientid_confirm }
%struct.nfsd4_setclientid_confirm = type { i32, i32 }
%struct.nfs4_client = type { i32, i32, i32, i32 }
%struct.nfsd_net = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@nfserr_stale_clientid = common dso_local global i64 0, align 8
@nfserr_clid_inuse = common dso_local global i64 0, align 8
@nfs_ok = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd4_setclientid_confirm(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %union.nfsd4_op_u* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %union.nfsd4_op_u*, align 8
  %8 = alloca %struct.nfsd4_setclientid_confirm*, align 8
  %9 = alloca %struct.nfs4_client*, align 8
  %10 = alloca %struct.nfs4_client*, align 8
  %11 = alloca %struct.nfs4_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.nfsd_net*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %union.nfsd4_op_u* %2, %union.nfsd4_op_u** %7, align 8
  %16 = load %union.nfsd4_op_u*, %union.nfsd4_op_u** %7, align 8
  %17 = bitcast %union.nfsd4_op_u* %16 to %struct.nfsd4_setclientid_confirm*
  store %struct.nfsd4_setclientid_confirm* %17, %struct.nfsd4_setclientid_confirm** %8, align 8
  store %struct.nfs4_client* null, %struct.nfs4_client** %11, align 8
  %18 = load %struct.nfsd4_setclientid_confirm*, %struct.nfsd4_setclientid_confirm** %8, align 8
  %19 = getelementptr inbounds %struct.nfsd4_setclientid_confirm, %struct.nfsd4_setclientid_confirm* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.nfsd4_setclientid_confirm*, %struct.nfsd4_setclientid_confirm** %8, align 8
  %22 = getelementptr inbounds %struct.nfsd4_setclientid_confirm, %struct.nfsd4_setclientid_confirm* %21, i32 0, i32 0
  store i32* %22, i32** %13, align 8
  %23 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %24 = call i32 @SVC_NET(%struct.svc_rqst* %23)
  %25 = load i32, i32* @nfsd_net_id, align 4
  %26 = call %struct.nfsd_net* @net_generic(i32 %24, i32 %25)
  store %struct.nfsd_net* %26, %struct.nfsd_net** %15, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = load %struct.nfsd_net*, %struct.nfsd_net** %15, align 8
  %29 = call i64 @STALE_CLIENTID(i32* %27, %struct.nfsd_net* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i64, i64* @nfserr_stale_clientid, align 8
  store i64 %32, i64* %4, align 8
  br label %153

33:                                               ; preds = %3
  %34 = load %struct.nfsd_net*, %struct.nfsd_net** %15, align 8
  %35 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %34, i32 0, i32 0
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load i32*, i32** %13, align 8
  %38 = load %struct.nfsd_net*, %struct.nfsd_net** %15, align 8
  %39 = call %struct.nfs4_client* @find_confirmed_client(i32* %37, i32 0, %struct.nfsd_net* %38)
  store %struct.nfs4_client* %39, %struct.nfs4_client** %9, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = load %struct.nfsd_net*, %struct.nfsd_net** %15, align 8
  %42 = call %struct.nfs4_client* @find_unconfirmed_client(i32* %40, i32 0, %struct.nfsd_net* %41)
  store %struct.nfs4_client* %42, %struct.nfs4_client** %10, align 8
  %43 = load i64, i64* @nfserr_clid_inuse, align 8
  store i64 %43, i64* %14, align 8
  %44 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %45 = icmp ne %struct.nfs4_client* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %33
  %47 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %48 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %47, i32 0, i32 0
  %49 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %50 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %49, i32 0, i32 0
  %51 = call i32 @same_creds(i32* %48, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %142

54:                                               ; preds = %46, %33
  %55 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %56 = icmp ne %struct.nfs4_client* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %59 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %58, i32 0, i32 0
  %60 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %61 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %60, i32 0, i32 0
  %62 = call i32 @same_creds(i32* %59, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  br label %142

65:                                               ; preds = %57, %54
  %66 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %67 = icmp ne %struct.nfs4_client* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %70 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %69, i32 0, i32 3
  %71 = call i64 @same_verf(i32* %12, i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %86, label %73

73:                                               ; preds = %68, %65
  %74 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %75 = icmp ne %struct.nfs4_client* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %78 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %77, i32 0, i32 3
  %79 = call i64 @same_verf(i32* %12, i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i64, i64* @nfs_ok, align 8
  store i64 %82, i64* %14, align 8
  br label %85

83:                                               ; preds = %76, %73
  %84 = load i64, i64* @nfserr_stale_clientid, align 8
  store i64 %84, i64* %14, align 8
  br label %85

85:                                               ; preds = %83, %81
  br label %142

86:                                               ; preds = %68
  %87 = load i64, i64* @nfs_ok, align 8
  store i64 %87, i64* %14, align 8
  %88 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %89 = icmp ne %struct.nfs4_client* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  store %struct.nfs4_client* %91, %struct.nfs4_client** %11, align 8
  %92 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %93 = call i32 @unhash_client_locked(%struct.nfs4_client* %92)
  %94 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %95 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %96 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %95, i32 0, i32 2
  %97 = call i32 @nfsd4_change_callback(%struct.nfs4_client* %94, i32* %96)
  br label %129

98:                                               ; preds = %86
  %99 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %100 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %99, i32 0, i32 1
  %101 = load %struct.nfsd_net*, %struct.nfsd_net** %15, align 8
  %102 = call %struct.nfs4_client* @find_confirmed_client_by_name(i32* %100, %struct.nfsd_net* %101)
  store %struct.nfs4_client* %102, %struct.nfs4_client** %11, align 8
  %103 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %104 = icmp ne %struct.nfs4_client* %103, null
  br i1 %104, label %105, label %125

105:                                              ; preds = %98
  %106 = load i64, i64* @nfserr_clid_inuse, align 8
  store i64 %106, i64* %14, align 8
  %107 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %108 = call i64 @client_has_state(%struct.nfs4_client* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %105
  %111 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %112 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %111, i32 0, i32 0
  %113 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %114 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %113, i32 0, i32 0
  %115 = call i32 @same_creds(i32* %112, i32* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %110
  br label %142

118:                                              ; preds = %110, %105
  %119 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %120 = call i64 @mark_client_expired_locked(%struct.nfs4_client* %119)
  store i64 %120, i64* %14, align 8
  %121 = load i64, i64* %14, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  store %struct.nfs4_client* null, %struct.nfs4_client** %11, align 8
  br label %142

124:                                              ; preds = %118
  br label %125

125:                                              ; preds = %124, %98
  %126 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %127 = call i32 @move_to_confirmed(%struct.nfs4_client* %126)
  %128 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  store %struct.nfs4_client* %128, %struct.nfs4_client** %9, align 8
  br label %129

129:                                              ; preds = %125, %90
  %130 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %131 = call i32 @get_client_locked(%struct.nfs4_client* %130)
  %132 = load %struct.nfsd_net*, %struct.nfsd_net** %15, align 8
  %133 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %132, i32 0, i32 0
  %134 = call i32 @spin_unlock(i32* %133)
  %135 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %136 = call i32 @nfsd4_probe_callback(%struct.nfs4_client* %135)
  %137 = load %struct.nfsd_net*, %struct.nfsd_net** %15, align 8
  %138 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %137, i32 0, i32 0
  %139 = call i32 @spin_lock(i32* %138)
  %140 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %141 = call i32 @put_client_renew_locked(%struct.nfs4_client* %140)
  br label %142

142:                                              ; preds = %129, %123, %117, %85, %64, %53
  %143 = load %struct.nfsd_net*, %struct.nfsd_net** %15, align 8
  %144 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %143, i32 0, i32 0
  %145 = call i32 @spin_unlock(i32* %144)
  %146 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %147 = icmp ne %struct.nfs4_client* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %150 = call i32 @expire_client(%struct.nfs4_client* %149)
  br label %151

151:                                              ; preds = %148, %142
  %152 = load i64, i64* %14, align 8
  store i64 %152, i64* %4, align 8
  br label %153

153:                                              ; preds = %151, %31
  %154 = load i64, i64* %4, align 8
  ret i64 %154
}

declare dso_local %struct.nfsd_net* @net_generic(i32, i32) #1

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #1

declare dso_local i64 @STALE_CLIENTID(i32*, %struct.nfsd_net*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs4_client* @find_confirmed_client(i32*, i32, %struct.nfsd_net*) #1

declare dso_local %struct.nfs4_client* @find_unconfirmed_client(i32*, i32, %struct.nfsd_net*) #1

declare dso_local i32 @same_creds(i32*, i32*) #1

declare dso_local i64 @same_verf(i32*, i32*) #1

declare dso_local i32 @unhash_client_locked(%struct.nfs4_client*) #1

declare dso_local i32 @nfsd4_change_callback(%struct.nfs4_client*, i32*) #1

declare dso_local %struct.nfs4_client* @find_confirmed_client_by_name(i32*, %struct.nfsd_net*) #1

declare dso_local i64 @client_has_state(%struct.nfs4_client*) #1

declare dso_local i64 @mark_client_expired_locked(%struct.nfs4_client*) #1

declare dso_local i32 @move_to_confirmed(%struct.nfs4_client*) #1

declare dso_local i32 @get_client_locked(%struct.nfs4_client*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @nfsd4_probe_callback(%struct.nfs4_client*) #1

declare dso_local i32 @put_client_renew_locked(%struct.nfs4_client*) #1

declare dso_local i32 @expire_client(%struct.nfs4_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
