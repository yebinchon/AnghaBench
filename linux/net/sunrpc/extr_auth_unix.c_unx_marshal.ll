; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_auth_unix.c_unx_marshal.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_auth_unix.c_unx_marshal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_namespace = type { i32 }
%struct.rpc_task = type { %struct.TYPE_4__*, %struct.rpc_clnt* }
%struct.TYPE_4__ = type { %struct.rpc_cred* }
%struct.rpc_cred = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, %struct.group_info* }
%struct.group_info = type { i32, i32* }
%struct.rpc_clnt = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.user_namespace* }
%struct.xdr_stream = type { i32 }

@init_user_ns = common dso_local global %struct.user_namespace zeroinitializer, align 4
@rpc_auth_unix = common dso_local global i32 0, align 4
@xdr_zero = common dso_local global i8* null, align 8
@UNX_NGROUPS = common dso_local global i32 0, align 4
@rpc_auth_null = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.xdr_stream*)* @unx_marshal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unx_marshal(%struct.rpc_task* %0, %struct.xdr_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca %struct.rpc_clnt*, align 8
  %7 = alloca %struct.rpc_cred*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.group_info*, align 8
  %13 = alloca %struct.user_namespace*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  %14 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %15 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %14, i32 0, i32 1
  %16 = load %struct.rpc_clnt*, %struct.rpc_clnt** %15, align 8
  store %struct.rpc_clnt* %16, %struct.rpc_clnt** %6, align 8
  %17 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %18 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.rpc_cred*, %struct.rpc_cred** %20, align 8
  store %struct.rpc_cred* %21, %struct.rpc_cred** %7, align 8
  %22 = load %struct.rpc_cred*, %struct.rpc_cred** %7, align 8
  %23 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load %struct.group_info*, %struct.group_info** %25, align 8
  store %struct.group_info* %26, %struct.group_info** %12, align 8
  %27 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %28 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %33 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %32, i32 0, i32 2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.user_namespace*, %struct.user_namespace** %35, align 8
  br label %38

37:                                               ; preds = %2
  br label %38

38:                                               ; preds = %37, %31
  %39 = phi %struct.user_namespace* [ %36, %31 ], [ @init_user_ns, %37 ]
  store %struct.user_namespace* %39, %struct.user_namespace** %13, align 8
  %40 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %41 = call i8** @xdr_reserve_space(%struct.xdr_stream* %40, i32 24)
  store i8** %41, i8*** %8, align 8
  %42 = load i8**, i8*** %8, align 8
  %43 = icmp ne i8** %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %177

45:                                               ; preds = %38
  %46 = load i32, i32* @rpc_auth_unix, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = load i8**, i8*** %8, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i32 1
  store i8** %50, i8*** %8, align 8
  store i8* %48, i8** %49, align 8
  %51 = load i8**, i8*** %8, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i32 1
  store i8** %52, i8*** %8, align 8
  store i8** %51, i8*** %9, align 8
  %53 = load i8*, i8** @xdr_zero, align 8
  %54 = load i8**, i8*** %8, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i32 1
  store i8** %55, i8*** %8, align 8
  store i8* %53, i8** %54, align 8
  %56 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %57 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %58 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rpc_clnt*, %struct.rpc_clnt** %6, align 8
  %61 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @xdr_stream_encode_opaque(%struct.xdr_stream* %56, i32 %59, i32 %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %45
  br label %177

66:                                               ; preds = %45
  %67 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %68 = call i8** @xdr_reserve_space(%struct.xdr_stream* %67, i32 24)
  store i8** %68, i8*** %8, align 8
  %69 = load i8**, i8*** %8, align 8
  %70 = icmp ne i8** %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %177

72:                                               ; preds = %66
  %73 = load %struct.user_namespace*, %struct.user_namespace** %13, align 8
  %74 = load %struct.rpc_cred*, %struct.rpc_cred** %7, align 8
  %75 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @from_kuid_munged(%struct.user_namespace* %73, i32 %78)
  %80 = call i8* @cpu_to_be32(i32 %79)
  %81 = load i8**, i8*** %8, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i32 1
  store i8** %82, i8*** %8, align 8
  store i8* %80, i8** %81, align 8
  %83 = load %struct.user_namespace*, %struct.user_namespace** %13, align 8
  %84 = load %struct.rpc_cred*, %struct.rpc_cred** %7, align 8
  %85 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @from_kgid_munged(%struct.user_namespace* %83, i32 %88)
  %90 = call i8* @cpu_to_be32(i32 %89)
  %91 = load i8**, i8*** %8, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i32 1
  store i8** %92, i8*** %8, align 8
  store i8* %90, i8** %91, align 8
  %93 = load i8**, i8*** %8, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i32 1
  store i8** %94, i8*** %8, align 8
  store i8** %93, i8*** %10, align 8
  %95 = load %struct.group_info*, %struct.group_info** %12, align 8
  %96 = icmp ne %struct.group_info* %95, null
  br i1 %96, label %97, label %127

97:                                               ; preds = %72
  store i32 0, i32* %11, align 4
  br label %98

98:                                               ; preds = %123, %97
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @UNX_NGROUPS, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load i32, i32* %11, align 4
  %104 = load %struct.group_info*, %struct.group_info** %12, align 8
  %105 = getelementptr inbounds %struct.group_info, %struct.group_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %103, %106
  br label %108

108:                                              ; preds = %102, %98
  %109 = phi i1 [ false, %98 ], [ %107, %102 ]
  br i1 %109, label %110, label %126

110:                                              ; preds = %108
  %111 = load %struct.user_namespace*, %struct.user_namespace** %13, align 8
  %112 = load %struct.group_info*, %struct.group_info** %12, align 8
  %113 = getelementptr inbounds %struct.group_info, %struct.group_info* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @from_kgid_munged(%struct.user_namespace* %111, i32 %118)
  %120 = call i8* @cpu_to_be32(i32 %119)
  %121 = load i8**, i8*** %8, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i32 1
  store i8** %122, i8*** %8, align 8
  store i8* %120, i8** %121, align 8
  br label %123

123:                                              ; preds = %110
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %98

126:                                              ; preds = %108
  br label %127

127:                                              ; preds = %126, %72
  %128 = load i8**, i8*** %8, align 8
  %129 = load i8**, i8*** %10, align 8
  %130 = ptrtoint i8** %128 to i64
  %131 = ptrtoint i8** %129 to i64
  %132 = sub i64 %130, %131
  %133 = sdiv exact i64 %132, 8
  %134 = sub nsw i64 %133, 1
  %135 = trunc i64 %134 to i32
  %136 = call i8* @cpu_to_be32(i32 %135)
  %137 = load i8**, i8*** %10, align 8
  store i8* %136, i8** %137, align 8
  %138 = load i8**, i8*** %8, align 8
  %139 = load i8**, i8*** %9, align 8
  %140 = ptrtoint i8** %138 to i64
  %141 = ptrtoint i8** %139 to i64
  %142 = sub i64 %140, %141
  %143 = sdiv exact i64 %142, 8
  %144 = sub nsw i64 %143, 1
  %145 = shl i64 %144, 2
  %146 = trunc i64 %145 to i32
  %147 = call i8* @cpu_to_be32(i32 %146)
  %148 = load i8**, i8*** %9, align 8
  store i8* %147, i8** %148, align 8
  %149 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %150 = load i8**, i8*** %8, align 8
  %151 = load i8**, i8*** %10, align 8
  %152 = ptrtoint i8** %150 to i64
  %153 = ptrtoint i8** %151 to i64
  %154 = sub i64 %152, %153
  %155 = sdiv exact i64 %154, 8
  %156 = sub nsw i64 %155, 1
  %157 = shl i64 %156, 2
  %158 = trunc i64 %157 to i32
  %159 = call i8** @xdr_reserve_space(%struct.xdr_stream* %149, i32 %158)
  store i8** %159, i8*** %8, align 8
  %160 = load i8**, i8*** %8, align 8
  %161 = icmp ne i8** %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %127
  br label %177

163:                                              ; preds = %127
  %164 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %165 = call i8** @xdr_reserve_space(%struct.xdr_stream* %164, i32 16)
  store i8** %165, i8*** %8, align 8
  %166 = load i8**, i8*** %8, align 8
  %167 = icmp ne i8** %166, null
  br i1 %167, label %169, label %168

168:                                              ; preds = %163
  br label %177

169:                                              ; preds = %163
  %170 = load i32, i32* @rpc_auth_null, align 4
  %171 = sext i32 %170 to i64
  %172 = inttoptr i64 %171 to i8*
  %173 = load i8**, i8*** %8, align 8
  %174 = getelementptr inbounds i8*, i8** %173, i32 1
  store i8** %174, i8*** %8, align 8
  store i8* %172, i8** %173, align 8
  %175 = load i8*, i8** @xdr_zero, align 8
  %176 = load i8**, i8*** %8, align 8
  store i8* %175, i8** %176, align 8
  store i32 0, i32* %3, align 4
  br label %180

177:                                              ; preds = %168, %162, %71, %65, %44
  %178 = load i32, i32* @EMSGSIZE, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %177, %169
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i8** @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i64 @xdr_stream_encode_opaque(%struct.xdr_stream*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @from_kuid_munged(%struct.user_namespace*, i32) #1

declare dso_local i32 @from_kgid_munged(%struct.user_namespace*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
