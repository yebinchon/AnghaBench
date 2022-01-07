; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_rpc_xdr.c_gssx_dec_linux_creds.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_rpc_xdr.c_gssx_dec_linux_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.svc_cred = type { %struct.TYPE_4__*, i8*, i32 }
%struct.TYPE_4__ = type { i8** }

@ENOSPC = common dso_local global i32 0, align 4
@NGROUPS_MAX = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.svc_cred*)* @gssx_dec_linux_creds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gssx_dec_linux_creds(%struct.xdr_stream* %0, %struct.svc_cred* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.svc_cred*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.svc_cred* %1, %struct.svc_cred** %5, align 8
  %13 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %14 = call i32* @xdr_inline_decode(%struct.xdr_stream* %13, i32 4)
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOSPC, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %133

23:                                               ; preds = %2
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @be32_to_cpup(i32* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = load i32, i32* @NGROUPS_MAX, align 4
  %29 = add nsw i32 3, %28
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = icmp ugt i64 %27, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i32, i32* @ENOSPC, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %133

36:                                               ; preds = %23
  %37 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %38 = call i32 @get_host_u32(%struct.xdr_stream* %37, i32* %8)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %3, align 4
  br label %133

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @make_kuid(i32* @init_user_ns, i32 %44)
  %46 = load %struct.svc_cred*, %struct.svc_cred** %5, align 8
  %47 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %49 = call i32 @get_host_u32(%struct.xdr_stream* %48, i32* %8)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %3, align 4
  br label %133

54:                                               ; preds = %43
  %55 = load i32, i32* %8, align 4
  %56 = call i8* @make_kgid(i32* @init_user_ns, i32 %55)
  %57 = load %struct.svc_cred*, %struct.svc_cred** %5, align 8
  %58 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %60 = call i32 @get_host_u32(%struct.xdr_stream* %59, i32* %8)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %3, align 4
  br label %133

65:                                               ; preds = %54
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 3, %67
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 4
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp ne i64 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %133

77:                                               ; preds = %65
  %78 = load i32, i32* %9, align 4
  %79 = call %struct.TYPE_4__* @groups_alloc(i32 %78)
  %80 = load %struct.svc_cred*, %struct.svc_cred** %5, align 8
  %81 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %80, i32 0, i32 0
  store %struct.TYPE_4__* %79, %struct.TYPE_4__** %81, align 8
  %82 = load %struct.svc_cred*, %struct.svc_cred** %5, align 8
  %83 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = icmp eq %struct.TYPE_4__* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %77
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %133

89:                                               ; preds = %77
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %119, %89
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %122

94:                                               ; preds = %90
  %95 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %96 = call i32 @get_host_u32(%struct.xdr_stream* %95, i32* %8)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %127

100:                                              ; preds = %94
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i8* @make_kgid(i32* @init_user_ns, i32 %103)
  store i8* %104, i8** %12, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = call i32 @gid_valid(i8* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %100
  br label %127

109:                                              ; preds = %100
  %110 = load i8*, i8** %12, align 8
  %111 = load %struct.svc_cred*, %struct.svc_cred** %5, align 8
  %112 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i8**, i8*** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %115, i64 %117
  store i8* %110, i8** %118, align 8
  br label %119

119:                                              ; preds = %109
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  br label %90

122:                                              ; preds = %90
  %123 = load %struct.svc_cred*, %struct.svc_cred** %5, align 8
  %124 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = call i32 @groups_sort(%struct.TYPE_4__* %125)
  store i32 0, i32* %3, align 4
  br label %133

127:                                              ; preds = %108, %99
  %128 = load %struct.svc_cred*, %struct.svc_cred** %5, align 8
  %129 = getelementptr inbounds %struct.svc_cred, %struct.svc_cred* %128, i32 0, i32 0
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = call i32 @groups_free(%struct.TYPE_4__* %130)
  %132 = load i32, i32* %11, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %127, %122, %86, %74, %63, %52, %41, %33, %20
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @get_host_u32(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @make_kuid(i32*, i32) #1

declare dso_local i8* @make_kgid(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @groups_alloc(i32) #1

declare dso_local i32 @gid_valid(i8*) #1

declare dso_local i32 @groups_sort(%struct.TYPE_4__*) #1

declare dso_local i32 @groups_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
