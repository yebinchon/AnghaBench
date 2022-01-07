; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_callback_xdr.c_nfs4_callback_compound.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_callback_xdr.c_nfs4_callback_compound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.cb_compound_hdr_arg = type { i64, i32, i32, i32, i32, i32 }
%struct.cb_compound_hdr_res = type { i64*, i64*, i32, i32, i32* }
%struct.xdr_stream = type { i32 }
%struct.cb_process_state = type { i64, i32*, i32, i32 }

@NFS4ERR_RESOURCE = common dso_local global i32 0, align 4
@rpc_garbage_args = common dso_local global i64 0, align 8
@rpc_system_err = common dso_local global i64 0, align 8
@NFS4ERR_RESOURCE_HDR = common dso_local global i32 0, align 4
@rpc_success = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"NFS: NFSv4 callback contains invalid cred\0A\00", align 1
@rpc_autherr_badcred = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*)* @nfs4_callback_compound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfs4_callback_compound(%struct.svc_rqst* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.svc_rqst*, align 8
  %4 = alloca %struct.cb_compound_hdr_arg, align 8
  %5 = alloca %struct.cb_compound_hdr_res, align 8
  %6 = alloca %struct.xdr_stream, align 4
  %7 = alloca %struct.xdr_stream, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cb_process_state, align 8
  %11 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  %12 = bitcast %struct.cb_compound_hdr_arg* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 32, i1 false)
  %13 = bitcast %struct.cb_compound_hdr_res* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false)
  %14 = bitcast %struct.cb_process_state* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 24, i1 false)
  %15 = getelementptr inbounds %struct.cb_process_state, %struct.cb_process_state* %10, i32 0, i32 2
  %16 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %17 = call i32 @SVC_NET(%struct.svc_rqst* %16)
  store i32 %17, i32* %15, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %19 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %18, i32 0, i32 3
  %20 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %21 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @xdr_init_decode(%struct.xdr_stream* %6, %struct.TYPE_8__* %19, i32 %26, i32* null)
  %28 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %29 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %37 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %35, i64 %43
  %45 = bitcast i8* %44 to i64*
  store i64* %45, i64** %8, align 8
  %46 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %47 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %46, i32 0, i32 2
  %48 = load i64*, i64** %8, align 8
  %49 = call i32 @xdr_init_encode(%struct.xdr_stream* %7, %struct.TYPE_7__* %47, i64* %48, i32* null)
  %50 = call i64 @decode_compound_hdr_arg(%struct.xdr_stream* %6, %struct.cb_compound_hdr_arg* %4)
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i32, i32* @NFS4ERR_RESOURCE, align 4
  %53 = call i64 @htonl(i32 %52)
  %54 = icmp eq i64 %51, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %1
  %56 = load i64, i64* @rpc_garbage_args, align 8
  store i64 %56, i64* %2, align 8
  br label %163

57:                                               ; preds = %1
  %58 = getelementptr inbounds %struct.cb_compound_hdr_arg, %struct.cb_compound_hdr_arg* %4, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %87

61:                                               ; preds = %57
  %62 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %63 = call i32 @SVC_NET(%struct.svc_rqst* %62)
  %64 = getelementptr inbounds %struct.cb_compound_hdr_arg, %struct.cb_compound_hdr_arg* %4, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32* @nfs4_find_client_ident(i32 %63, i32 %65)
  %67 = getelementptr inbounds %struct.cb_process_state, %struct.cb_process_state* %10, i32 0, i32 1
  store i32* %66, i32** %67, align 8
  %68 = getelementptr inbounds %struct.cb_process_state, %struct.cb_process_state* %10, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.cb_process_state, %struct.cb_process_state* %10, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %75 = call i32 @check_gss_callback_principal(i32* %73, %struct.svc_rqst* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %71, %61
  %78 = getelementptr inbounds %struct.cb_process_state, %struct.cb_process_state* %10, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.cb_process_state, %struct.cb_process_state* %10, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @nfs_put_client(i32* %83)
  br label %85

85:                                               ; preds = %81, %77
  br label %158

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %86, %57
  %88 = getelementptr inbounds %struct.cb_compound_hdr_arg, %struct.cb_compound_hdr_arg* %4, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.cb_process_state, %struct.cb_process_state* %10, i32 0, i32 0
  store i64 %89, i64* %90, align 8
  %91 = getelementptr inbounds %struct.cb_compound_hdr_arg, %struct.cb_compound_hdr_arg* %4, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.cb_compound_hdr_res, %struct.cb_compound_hdr_res* %5, i32 0, i32 3
  store i32 %92, i32* %93, align 4
  %94 = getelementptr inbounds %struct.cb_compound_hdr_arg, %struct.cb_compound_hdr_arg* %4, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.cb_compound_hdr_res, %struct.cb_compound_hdr_res* %5, i32 0, i32 2
  store i32 %95, i32* %96, align 8
  %97 = call i64 @encode_compound_hdr_res(%struct.xdr_stream* %7, %struct.cb_compound_hdr_res* %5)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %87
  %100 = getelementptr inbounds %struct.cb_process_state, %struct.cb_process_state* %10, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.cb_process_state, %struct.cb_process_state* %10, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @nfs_put_client(i32* %105)
  br label %107

107:                                              ; preds = %103, %99
  %108 = load i64, i64* @rpc_system_err, align 8
  store i64 %108, i64* %2, align 8
  br label %163

109:                                              ; preds = %87
  br label %110

110:                                              ; preds = %120, %109
  %111 = load i64, i64* %9, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i32, i32* %11, align 4
  %115 = getelementptr inbounds %struct.cb_compound_hdr_arg, %struct.cb_compound_hdr_arg* %4, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %114, %116
  br label %118

118:                                              ; preds = %113, %110
  %119 = phi i1 [ false, %110 ], [ %117, %113 ]
  br i1 %119, label %120, label %132

120:                                              ; preds = %118
  %121 = load i32, i32* %11, align 4
  %122 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %123 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %124 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %127 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @process_op(i32 %121, %struct.svc_rqst* %122, %struct.xdr_stream* %6, i32 %125, %struct.xdr_stream* %7, i32 %128, %struct.cb_process_state* %10)
  store i64 %129, i64* %9, align 8
  %130 = load i32, i32* %11, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %11, align 4
  br label %110

132:                                              ; preds = %118
  %133 = load i64, i64* %9, align 8
  %134 = load i32, i32* @NFS4ERR_RESOURCE_HDR, align 4
  %135 = call i64 @htonl(i32 %134)
  %136 = icmp eq i64 %133, %135
  %137 = zext i1 %136 to i32
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %132
  %141 = load i32, i32* @NFS4ERR_RESOURCE, align 4
  %142 = call i64 @htonl(i32 %141)
  store i64 %142, i64* %9, align 8
  %143 = load i32, i32* %11, align 4
  %144 = add i32 %143, -1
  store i32 %144, i32* %11, align 4
  br label %145

145:                                              ; preds = %140, %132
  %146 = load i64, i64* %9, align 8
  %147 = getelementptr inbounds %struct.cb_compound_hdr_res, %struct.cb_compound_hdr_res* %5, i32 0, i32 1
  %148 = load i64*, i64** %147, align 8
  store i64 %146, i64* %148, align 8
  %149 = load i32, i32* %11, align 4
  %150 = call i64 @htonl(i32 %149)
  %151 = getelementptr inbounds %struct.cb_compound_hdr_res, %struct.cb_compound_hdr_res* %5, i32 0, i32 0
  %152 = load i64*, i64** %151, align 8
  store i64 %150, i64* %152, align 8
  %153 = call i32 @nfs4_cb_free_slot(%struct.cb_process_state* %10)
  %154 = getelementptr inbounds %struct.cb_process_state, %struct.cb_process_state* %10, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @nfs_put_client(i32* %155)
  %157 = load i64, i64* @rpc_success, align 8
  store i64 %157, i64* %2, align 8
  br label %163

158:                                              ; preds = %85
  %159 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %160 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %161 = load i32, i32* @rpc_autherr_badcred, align 4
  %162 = call i64 @svc_return_autherr(%struct.svc_rqst* %160, i32 %161)
  store i64 %162, i64* %2, align 8
  br label %163

163:                                              ; preds = %158, %145, %107, %55
  %164 = load i64, i64* %2, align 8
  ret i64 %164
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SVC_NET(%struct.svc_rqst*) #2

declare dso_local i32 @xdr_init_decode(%struct.xdr_stream*, %struct.TYPE_8__*, i32, i32*) #2

declare dso_local i32 @xdr_init_encode(%struct.xdr_stream*, %struct.TYPE_7__*, i64*, i32*) #2

declare dso_local i64 @decode_compound_hdr_arg(%struct.xdr_stream*, %struct.cb_compound_hdr_arg*) #2

declare dso_local i64 @htonl(i32) #2

declare dso_local i32* @nfs4_find_client_ident(i32, i32) #2

declare dso_local i32 @check_gss_callback_principal(i32*, %struct.svc_rqst*) #2

declare dso_local i32 @nfs_put_client(i32*) #2

declare dso_local i64 @encode_compound_hdr_res(%struct.xdr_stream*, %struct.cb_compound_hdr_res*) #2

declare dso_local i64 @process_op(i32, %struct.svc_rqst*, %struct.xdr_stream*, i32, %struct.xdr_stream*, i32, %struct.cb_process_state*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @nfs4_cb_free_slot(%struct.cb_process_state*) #2

declare dso_local i32 @pr_warn_ratelimited(i8*) #2

declare dso_local i64 @svc_return_autherr(%struct.svc_rqst*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
