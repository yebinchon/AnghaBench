; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_unseal.c_gss_verify_mic_v1.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_gss_krb5_unseal.c_gss_verify_mic_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_ctx = type { i64, i64, %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.xdr_buf = type { i32 }
%struct.xdr_netobj = type { i32, i8* }

@GSS_KRB5_MAX_CKSUM_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"RPC:       krb5_read_token\0A\00", align 1
@GSS_S_DEFECTIVE_TOKEN = common dso_local global i32 0, align 4
@KG_TOK_MIC_MSG = common dso_local global i32 0, align 4
@SEAL_ALG_NONE = common dso_local global i32 0, align 4
@KG_USAGE_SIGN = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i32 0, align 4
@GSS_KRB5_TOK_HDR_LEN = common dso_local global i32 0, align 4
@GSS_S_BAD_SIG = common dso_local global i32 0, align 4
@GSS_S_CONTEXT_EXPIRED = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.krb5_ctx*, %struct.xdr_buf*, %struct.xdr_netobj*)* @gss_verify_mic_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_verify_mic_v1(%struct.krb5_ctx* %0, %struct.xdr_buf* %1, %struct.xdr_netobj* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.krb5_ctx*, align 8
  %6 = alloca %struct.xdr_buf*, align 8
  %7 = alloca %struct.xdr_netobj*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.xdr_netobj, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.krb5_ctx* %0, %struct.krb5_ctx** %5, align 8
  store %struct.xdr_buf* %1, %struct.xdr_buf** %6, align 8
  store %struct.xdr_netobj* %2, %struct.xdr_netobj** %7, align 8
  %20 = load i32, i32* @GSS_KRB5_MAX_CKSUM_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %10, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %24 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %12, i32 0, i32 0
  %25 = trunc i64 %21 to i32
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %12, i32 0, i32 1
  store i8* %23, i8** %26, align 8
  %27 = load %struct.xdr_netobj*, %struct.xdr_netobj** %7, align 8
  %28 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %16, align 8
  %30 = call i32 @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %32 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %31, i32 0, i32 4
  %33 = load %struct.xdr_netobj*, %struct.xdr_netobj** %7, align 8
  %34 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @g_verify_token_header(i32* %32, i32* %17, i8** %16, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %39, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %188

40:                                               ; preds = %3
  %41 = load i8*, i8** %16, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = load i32, i32* @KG_TOK_MIC_MSG, align 4
  %46 = ashr i32 %45, 8
  %47 = and i32 %46, 255
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %40
  %50 = load i8*, i8** %16, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = load i32, i32* @KG_TOK_MIC_MSG, align 4
  %55 = and i32 %54, 255
  %56 = icmp ne i32 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %49, %40
  %58 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %58, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %188

59:                                               ; preds = %49
  %60 = load i8*, i8** %16, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8*, i8** %16, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 3
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = shl i32 %67, 8
  %69 = add nsw i32 %63, %68
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %72 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %70, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %59
  %78 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %78, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %188

79:                                               ; preds = %59
  %80 = load i8*, i8** %16, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 4
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = load i8*, i8** %16, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 5
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = shl i32 %87, 8
  %89 = add nsw i32 %83, %88
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @SEAL_ALG_NONE, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %79
  %94 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %94, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %188

95:                                               ; preds = %79
  %96 = load i8*, i8** %16, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 6
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp ne i32 %99, 255
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load i8*, i8** %16, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 7
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp ne i32 %105, 255
  br i1 %106, label %107, label %109

107:                                              ; preds = %101, %95
  %108 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %108, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %188

109:                                              ; preds = %101
  %110 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %111 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %110, i32 0, i32 2
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %118 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  store i32* %119, i32** %18, align 8
  br label %121

120:                                              ; preds = %109
  store i32* null, i32** %18, align 8
  br label %121

121:                                              ; preds = %120, %116
  %122 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %123 = load i8*, i8** %16, align 8
  %124 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %125 = load i32*, i32** %18, align 8
  %126 = load i32, i32* @KG_USAGE_SIGN, align 4
  %127 = call i64 @make_checksum(%struct.krb5_ctx* %122, i8* %123, i32 8, %struct.xdr_buf* %124, i32 0, i32* %125, i32 %126, %struct.xdr_netobj* %12)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %121
  %130 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %130, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %188

131:                                              ; preds = %121
  %132 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %12, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = load i8*, i8** %16, align 8
  %135 = load i32, i32* @GSS_KRB5_TOK_HDR_LEN, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %139 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %138, i32 0, i32 2
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @memcmp(i8* %133, i8* %137, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %131
  %146 = load i32, i32* @GSS_S_BAD_SIG, align 4
  store i32 %146, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %188

147:                                              ; preds = %131
  %148 = call i64 (...) @get_seconds()
  store i64 %148, i64* %13, align 8
  %149 = load i64, i64* %13, align 8
  %150 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %151 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp sgt i64 %149, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  %155 = load i32, i32* @GSS_S_CONTEXT_EXPIRED, align 4
  store i32 %155, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %188

156:                                              ; preds = %147
  %157 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %158 = load i8*, i8** %16, align 8
  %159 = load i32, i32* @GSS_KRB5_TOK_HDR_LEN, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = load i8*, i8** %16, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 8
  %164 = call i64 @krb5_get_seq_num(%struct.krb5_ctx* %157, i8* %161, i8* %163, i32* %14, i32* %15)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %156
  %167 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %167, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %188

168:                                              ; preds = %156
  %169 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %170 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load i32, i32* %14, align 4
  %175 = icmp ne i32 %174, 255
  br i1 %175, label %184, label %176

176:                                              ; preds = %173, %168
  %177 = load %struct.krb5_ctx*, %struct.krb5_ctx** %5, align 8
  %178 = getelementptr inbounds %struct.krb5_ctx, %struct.krb5_ctx* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %176
  %182 = load i32, i32* %14, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %181, %173
  %185 = load i32, i32* @GSS_S_BAD_SIG, align 4
  store i32 %185, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %188

186:                                              ; preds = %181, %176
  %187 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %187, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %188

188:                                              ; preds = %186, %184, %166, %154, %145, %129, %107, %93, %77, %57, %38
  %189 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %189)
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dprintk(i8*) #2

declare dso_local i64 @g_verify_token_header(i32*, i32*, i8**, i32) #2

declare dso_local i64 @make_checksum(%struct.krb5_ctx*, i8*, i32, %struct.xdr_buf*, i32, i32*, i32, %struct.xdr_netobj*) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i64 @get_seconds(...) #2

declare dso_local i64 @krb5_get_seq_num(%struct.krb5_ctx*, i8*, i8*, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
