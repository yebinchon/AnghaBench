; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svcauth_unix.c_svcauth_unix_accept.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svcauth_unix.c_svcauth_unix_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_namespace = type { i32 }
%struct.svc_rqst = type { %struct.svc_cred, %struct.TYPE_10__*, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.svc_cred = type { i32, %struct.TYPE_11__*, i8*, i32 }
%struct.TYPE_11__ = type { i8** }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.user_namespace* }
%struct.TYPE_8__ = type { %struct.kvec* }
%struct.kvec = type { i32, i8* }
%struct.TYPE_7__ = type { %struct.kvec* }

@SVC_GARBAGE = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global %struct.user_namespace zeroinitializer, align 4
@UNX_NGROUPS = common dso_local global i32 0, align 4
@SVC_CLOSE = common dso_local global i32 0, align 4
@RPC_AUTH_NULL = common dso_local global i32 0, align 4
@rpc_autherr_badverf = common dso_local global i32 0, align 4
@SVC_DENIED = common dso_local global i32 0, align 4
@RPC_AUTH_UNIX = common dso_local global i32 0, align 4
@SVC_OK = common dso_local global i32 0, align 4
@rpc_autherr_badcred = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*, i32*)* @svcauth_unix_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svcauth_unix_accept(%struct.svc_rqst* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.kvec*, align 8
  %7 = alloca %struct.kvec*, align 8
  %8 = alloca %struct.svc_cred*, align 8
  %9 = alloca %struct.user_namespace*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %15 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.kvec*, %struct.kvec** %16, align 8
  %18 = getelementptr inbounds %struct.kvec, %struct.kvec* %17, i64 0
  store %struct.kvec* %18, %struct.kvec** %6, align 8
  %19 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %20 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.kvec*, %struct.kvec** %21, align 8
  %23 = getelementptr inbounds %struct.kvec, %struct.kvec* %22, i64 0
  store %struct.kvec* %23, %struct.kvec** %7, align 8
  %24 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %25 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %24, i32 0, i32 0
  store %struct.svc_cred* %25, %struct.svc_cred** %8, align 8
  %26 = load %struct.kvec*, %struct.kvec** %6, align 8
  %27 = getelementptr inbounds %struct.kvec, %struct.kvec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = sub nsw i32 %29, 12
  store i32 %30, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @SVC_GARBAGE, align 4
  store i32 %33, i32* %3, align 4
  br label %182

34:                                               ; preds = %2
  %35 = load %struct.kvec*, %struct.kvec** %6, align 8
  %36 = call i64 @svc_getu32(%struct.kvec* %35)
  %37 = load %struct.kvec*, %struct.kvec** %6, align 8
  %38 = call i64 @svc_getu32(%struct.kvec* %37)
  %39 = load %struct.kvec*, %struct.kvec** %6, align 8
  %40 = call i32 @svc_getnl(%struct.kvec* %39)
  %41 = call i32 @XDR_QUADLEN(i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp sgt i32 %42, 64
  br i1 %43, label %51, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 3
  %47 = mul nsw i32 %46, 4
  %48 = load i32, i32* %12, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %12, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44, %34
  br label %178

52:                                               ; preds = %44
  %53 = load %struct.kvec*, %struct.kvec** %6, align 8
  %54 = getelementptr inbounds %struct.kvec, %struct.kvec* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = bitcast i32* %59 to i8*
  %61 = load %struct.kvec*, %struct.kvec** %6, align 8
  %62 = getelementptr inbounds %struct.kvec, %struct.kvec* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* %10, align 4
  %64 = mul nsw i32 %63, 4
  %65 = load %struct.kvec*, %struct.kvec** %6, align 8
  %66 = getelementptr inbounds %struct.kvec, %struct.kvec* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %70 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %69, i32 0, i32 1
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = icmp ne %struct.TYPE_10__* %71, null
  br i1 %72, label %73, label %88

73:                                               ; preds = %52
  %74 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %75 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %74, i32 0, i32 1
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = icmp ne %struct.TYPE_9__* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %73
  %81 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %82 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %81, i32 0, i32 1
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load %struct.user_namespace*, %struct.user_namespace** %86, align 8
  br label %89

88:                                               ; preds = %73, %52
  br label %89

89:                                               ; preds = %88, %80
  %90 = phi %struct.user_namespace* [ %87, %80 ], [ @init_user_ns, %88 ]
  store %struct.user_namespace* %90, %struct.user_namespace** %9, align 8
  %91 = load %struct.user_namespace*, %struct.user_namespace** %9, align 8
  %92 = load %struct.kvec*, %struct.kvec** %6, align 8
  %93 = call i32 @svc_getnl(%struct.kvec* %92)
  %94 = call i32 @make_kuid(%struct.user_namespace* %91, i32 %93)
  %95 = load %struct.svc_cred*, %struct.svc_cred** %8, align 8
  %96 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  %97 = load %struct.user_namespace*, %struct.user_namespace** %9, align 8
  %98 = load %struct.kvec*, %struct.kvec** %6, align 8
  %99 = call i32 @svc_getnl(%struct.kvec* %98)
  %100 = call i8* @make_kgid(%struct.user_namespace* %97, i32 %99)
  %101 = load %struct.svc_cred*, %struct.svc_cred** %8, align 8
  %102 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  %103 = load %struct.kvec*, %struct.kvec** %6, align 8
  %104 = call i32 @svc_getnl(%struct.kvec* %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @UNX_NGROUPS, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %115, label %108

108:                                              ; preds = %89
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 2
  %111 = mul nsw i32 %110, 4
  %112 = load i32, i32* %12, align 4
  %113 = sub nsw i32 %112, %111
  store i32 %113, i32* %12, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108, %89
  br label %178

116:                                              ; preds = %108
  %117 = load i32, i32* %10, align 4
  %118 = call %struct.TYPE_11__* @groups_alloc(i32 %117)
  %119 = load %struct.svc_cred*, %struct.svc_cred** %8, align 8
  %120 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %119, i32 0, i32 1
  store %struct.TYPE_11__* %118, %struct.TYPE_11__** %120, align 8
  %121 = load %struct.svc_cred*, %struct.svc_cred** %8, align 8
  %122 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %121, i32 0, i32 1
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = icmp eq %struct.TYPE_11__* %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %116
  %126 = load i32, i32* @SVC_CLOSE, align 4
  store i32 %126, i32* %3, align 4
  br label %182

127:                                              ; preds = %116
  store i32 0, i32* %11, align 4
  br label %128

128:                                              ; preds = %146, %127
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %149

132:                                              ; preds = %128
  %133 = load %struct.user_namespace*, %struct.user_namespace** %9, align 8
  %134 = load %struct.kvec*, %struct.kvec** %6, align 8
  %135 = call i32 @svc_getnl(%struct.kvec* %134)
  %136 = call i8* @make_kgid(%struct.user_namespace* %133, i32 %135)
  store i8* %136, i8** %13, align 8
  %137 = load i8*, i8** %13, align 8
  %138 = load %struct.svc_cred*, %struct.svc_cred** %8, align 8
  %139 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %138, i32 0, i32 1
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i8**, i8*** %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  store i8* %137, i8** %145, align 8
  br label %146

146:                                              ; preds = %132
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %11, align 4
  br label %128

149:                                              ; preds = %128
  %150 = load %struct.svc_cred*, %struct.svc_cred** %8, align 8
  %151 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %150, i32 0, i32 1
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %151, align 8
  %153 = call i32 @groups_sort(%struct.TYPE_11__* %152)
  %154 = load %struct.kvec*, %struct.kvec** %6, align 8
  %155 = call i64 @svc_getu32(%struct.kvec* %154)
  %156 = load i32, i32* @RPC_AUTH_NULL, align 4
  %157 = call i64 @htonl(i32 %156)
  %158 = icmp ne i64 %155, %157
  br i1 %158, label %163, label %159

159:                                              ; preds = %149
  %160 = load %struct.kvec*, %struct.kvec** %6, align 8
  %161 = call i64 @svc_getu32(%struct.kvec* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %159, %149
  %164 = load i32, i32* @rpc_autherr_badverf, align 4
  %165 = load i32*, i32** %5, align 8
  store i32 %164, i32* %165, align 4
  %166 = load i32, i32* @SVC_DENIED, align 4
  store i32 %166, i32* %3, align 4
  br label %182

167:                                              ; preds = %159
  %168 = load %struct.kvec*, %struct.kvec** %7, align 8
  %169 = load i32, i32* @RPC_AUTH_NULL, align 4
  %170 = call i32 @svc_putnl(%struct.kvec* %168, i32 %169)
  %171 = load %struct.kvec*, %struct.kvec** %7, align 8
  %172 = call i32 @svc_putnl(%struct.kvec* %171, i32 0)
  %173 = load i32, i32* @RPC_AUTH_UNIX, align 4
  %174 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %175 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %175, i32 0, i32 0
  store i32 %173, i32* %176, align 8
  %177 = load i32, i32* @SVC_OK, align 4
  store i32 %177, i32* %3, align 4
  br label %182

178:                                              ; preds = %115, %51
  %179 = load i32, i32* @rpc_autherr_badcred, align 4
  %180 = load i32*, i32** %5, align 8
  store i32 %179, i32* %180, align 4
  %181 = load i32, i32* @SVC_DENIED, align 4
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %178, %167, %163, %125, %32
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i64 @svc_getu32(%struct.kvec*) #1

declare dso_local i32 @XDR_QUADLEN(i32) #1

declare dso_local i32 @svc_getnl(%struct.kvec*) #1

declare dso_local i32 @make_kuid(%struct.user_namespace*, i32) #1

declare dso_local i8* @make_kgid(%struct.user_namespace*, i32) #1

declare dso_local %struct.TYPE_11__* @groups_alloc(i32) #1

declare dso_local i32 @groups_sort(%struct.TYPE_11__*) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @svc_putnl(%struct.kvec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
