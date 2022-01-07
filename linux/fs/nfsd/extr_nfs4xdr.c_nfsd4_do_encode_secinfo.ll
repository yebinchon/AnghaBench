; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_do_encode_secinfo.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_do_encode_secinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.svc_export = type { i64, %struct.TYPE_6__*, %struct.exp_flavor_info* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.exp_flavor_info = type { i64 }
%struct.rpcsec_gss_info = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@nfsd4_do_encode_secinfo.report = internal global i32 1, align 4
@RPC_AUTH_UNIX = common dso_local global i64 0, align 8
@RPC_AUTH_NULL = common dso_local global i64 0, align 8
@RPC_AUTH_GSS = common dso_local global i64 0, align 8
@nfserr_resource = common dso_local global i32 0, align 4
@RPC_AUTH_MAXFLAVOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"NFS: SECINFO: security flavor %u is not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.svc_export*)* @nfsd4_do_encode_secinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_do_encode_secinfo(%struct.xdr_stream* %0, %struct.svc_export* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.svc_export*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.exp_flavor_info*, align 8
  %10 = alloca [2 x %struct.exp_flavor_info], align 16
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.rpcsec_gss_info, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.svc_export* %1, %struct.svc_export** %5, align 8
  %15 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %16 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %21 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %20, i32 0, i32 2
  %22 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %21, align 8
  store %struct.exp_flavor_info* %22, %struct.exp_flavor_info** %9, align 8
  %23 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %24 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %7, align 8
  br label %77

26:                                               ; preds = %2
  %27 = getelementptr inbounds [2 x %struct.exp_flavor_info], [2 x %struct.exp_flavor_info]* %10, i64 0, i64 0
  store %struct.exp_flavor_info* %27, %struct.exp_flavor_info** %9, align 8
  %28 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %29 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RPC_AUTH_UNIX, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %26
  store i64 2, i64* %7, align 8
  %38 = load i64, i64* @RPC_AUTH_UNIX, align 8
  %39 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %9, align 8
  %40 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %39, i64 0
  %41 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  %42 = load i64, i64* @RPC_AUTH_NULL, align 8
  %43 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %9, align 8
  %44 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %43, i64 1
  %45 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %44, i32 0, i32 0
  store i64 %42, i64* %45, align 8
  br label %76

46:                                               ; preds = %26
  %47 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %48 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @RPC_AUTH_GSS, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %46
  store i64 1, i64* %7, align 8
  %57 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %58 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = call i64 @svcauth_gss_flavor(%struct.TYPE_6__* %59)
  %61 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %9, align 8
  %62 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %61, i64 0
  %63 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  br label %75

64:                                               ; preds = %46
  store i64 1, i64* %7, align 8
  %65 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  %66 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %9, align 8
  %73 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %72, i64 0
  %74 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %73, i32 0, i32 0
  store i64 %71, i64* %74, align 8
  br label %75

75:                                               ; preds = %64, %56
  br label %76

76:                                               ; preds = %75, %37
  br label %77

77:                                               ; preds = %76, %19
  store i64 0, i64* %8, align 8
  %78 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %79 = call i32* @xdr_reserve_space(%struct.xdr_stream* %78, i32 4)
  store i32* %79, i32** %11, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @nfserr_resource, align 4
  store i32 %83, i32* %3, align 4
  br label %182

84:                                               ; preds = %77
  %85 = load i32*, i32** %11, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %11, align 8
  store i32* %85, i32** %12, align 8
  store i64 0, i64* %6, align 8
  br label %87

87:                                               ; preds = %170, %84
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* %7, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %173

91:                                               ; preds = %87
  %92 = load %struct.exp_flavor_info*, %struct.exp_flavor_info** %9, align 8
  %93 = load i64, i64* %6, align 8
  %94 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %92, i64 %93
  %95 = getelementptr inbounds %struct.exp_flavor_info, %struct.exp_flavor_info* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %13, align 8
  %97 = load i64, i64* %13, align 8
  %98 = call i64 @rpcauth_get_gssinfo(i64 %97, %struct.rpcsec_gss_info* %14)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %142

100:                                              ; preds = %91
  %101 = load i64, i64* %8, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %8, align 8
  %103 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %104 = getelementptr inbounds %struct.rpcsec_gss_info, %struct.rpcsec_gss_info* %14, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @XDR_LEN(i32 %106)
  %108 = add nsw i32 8, %107
  %109 = add nsw i32 %108, 4
  %110 = add nsw i32 %109, 4
  %111 = call i32* @xdr_reserve_space(%struct.xdr_stream* %103, i32 %110)
  store i32* %111, i32** %11, align 8
  %112 = load i32*, i32** %11, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %100
  %115 = load i32, i32* @nfserr_resource, align 4
  store i32 %115, i32* %3, align 4
  br label %182

116:                                              ; preds = %100
  %117 = load i64, i64* @RPC_AUTH_GSS, align 8
  %118 = call i8* @cpu_to_be32(i64 %117)
  %119 = ptrtoint i8* %118 to i32
  %120 = load i32*, i32** %11, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %11, align 8
  store i32 %119, i32* %120, align 4
  %122 = load i32*, i32** %11, align 8
  %123 = getelementptr inbounds %struct.rpcsec_gss_info, %struct.rpcsec_gss_info* %14, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.rpcsec_gss_info, %struct.rpcsec_gss_info* %14, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32* @xdr_encode_opaque(i32* %122, i32 %125, i32 %128)
  store i32* %129, i32** %11, align 8
  %130 = getelementptr inbounds %struct.rpcsec_gss_info, %struct.rpcsec_gss_info* %14, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i8* @cpu_to_be32(i64 %131)
  %133 = ptrtoint i8* %132 to i32
  %134 = load i32*, i32** %11, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %11, align 8
  store i32 %133, i32* %134, align 4
  %136 = getelementptr inbounds %struct.rpcsec_gss_info, %struct.rpcsec_gss_info* %14, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i8* @cpu_to_be32(i64 %137)
  %139 = ptrtoint i8* %138 to i32
  %140 = load i32*, i32** %11, align 8
  %141 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %141, i32** %11, align 8
  store i32 %139, i32* %140, align 4
  br label %169

142:                                              ; preds = %91
  %143 = load i64, i64* %13, align 8
  %144 = load i64, i64* @RPC_AUTH_MAXFLAVOR, align 8
  %145 = icmp slt i64 %143, %144
  br i1 %145, label %146, label %161

146:                                              ; preds = %142
  %147 = load i64, i64* %8, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %8, align 8
  %149 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %150 = call i32* @xdr_reserve_space(%struct.xdr_stream* %149, i32 4)
  store i32* %150, i32** %11, align 8
  %151 = load i32*, i32** %11, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %155, label %153

153:                                              ; preds = %146
  %154 = load i32, i32* @nfserr_resource, align 4
  store i32 %154, i32* %3, align 4
  br label %182

155:                                              ; preds = %146
  %156 = load i64, i64* %13, align 8
  %157 = call i8* @cpu_to_be32(i64 %156)
  %158 = ptrtoint i8* %157 to i32
  %159 = load i32*, i32** %11, align 8
  %160 = getelementptr inbounds i32, i32* %159, i32 1
  store i32* %160, i32** %11, align 8
  store i32 %158, i32* %159, align 4
  br label %168

161:                                              ; preds = %142
  %162 = load i32, i32* @nfsd4_do_encode_secinfo.report, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i64, i64* %13, align 8
  %166 = call i32 @pr_warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %165)
  br label %167

167:                                              ; preds = %164, %161
  br label %168

168:                                              ; preds = %167, %155
  br label %169

169:                                              ; preds = %168, %116
  br label %170

170:                                              ; preds = %169
  %171 = load i64, i64* %6, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %6, align 8
  br label %87

173:                                              ; preds = %87
  %174 = load i64, i64* %7, align 8
  %175 = load i64, i64* %8, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  store i32 0, i32* @nfsd4_do_encode_secinfo.report, align 4
  br label %178

178:                                              ; preds = %177, %173
  %179 = load i64, i64* %8, align 8
  %180 = call i32 @htonl(i64 %179)
  %181 = load i32*, i32** %12, align 8
  store i32 %180, i32* %181, align 4
  store i32 0, i32* %3, align 4
  br label %182

182:                                              ; preds = %178, %153, %114, %82
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i64 @svcauth_gss_flavor(%struct.TYPE_6__*) #1

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i64 @rpcauth_get_gssinfo(i64, %struct.rpcsec_gss_info*) #1

declare dso_local i32 @XDR_LEN(i32) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i32* @xdr_encode_opaque(i32*, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i64) #1

declare dso_local i32 @htonl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
