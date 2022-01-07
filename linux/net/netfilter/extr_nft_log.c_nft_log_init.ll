; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_log.c_nft_log_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_log.c_nft_log_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_log = type { i8*, %struct.nf_loginfo }
%struct.nf_loginfo = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i8*, i8*, i32, i8* }

@NFTA_LOG_LEVEL = common dso_local global i64 0, align 8
@NFTA_LOG_GROUP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFTA_LOG_FLAGS = common dso_local global i64 0, align 8
@NFTA_LOG_PREFIX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nft_log_null_prefix = common dso_local global i8* null, align 8
@NFT_LOGLEVEL_WARNING = common dso_local global i64 0, align 8
@NFT_LOGLEVEL_AUDIT = common dso_local global i64 0, align 8
@NF_LOG_MASK = common dso_local global i32 0, align 4
@NFTA_LOG_SNAPLEN = common dso_local global i64 0, align 8
@NF_LOG_F_COPY_LEN = common dso_local global i32 0, align 4
@NFTA_LOG_QTHRESHOLD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_log_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_log_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_log*, align 8
  %9 = alloca %struct.nf_loginfo*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %12 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %13 = call %struct.nft_log* @nft_expr_priv(%struct.nft_expr* %12)
  store %struct.nft_log* %13, %struct.nft_log** %8, align 8
  %14 = load %struct.nft_log*, %struct.nft_log** %8, align 8
  %15 = getelementptr inbounds %struct.nft_log, %struct.nft_log* %14, i32 0, i32 1
  store %struct.nf_loginfo* %15, %struct.nf_loginfo** %9, align 8
  %16 = load %struct.nf_loginfo*, %struct.nf_loginfo** %9, align 8
  %17 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %16, i32 0, i32 0
  store i32 129, i32* %17, align 8
  %18 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %19 = load i64, i64* @NFTA_LOG_LEVEL, align 8
  %20 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %19
  %21 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %22 = icmp ne %struct.nlattr* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %25 = load i64, i64* @NFTA_LOG_GROUP, align 8
  %26 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %25
  %27 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  %28 = icmp ne %struct.nlattr* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %242

32:                                               ; preds = %23, %3
  %33 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %34 = load i64, i64* @NFTA_LOG_GROUP, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %33, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  %39 = load %struct.nf_loginfo*, %struct.nf_loginfo** %9, align 8
  %40 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %39, i32 0, i32 0
  store i32 128, i32* %40, align 8
  %41 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %42 = load i64, i64* @NFTA_LOG_FLAGS, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = icmp ne %struct.nlattr* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %242

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %32
  %51 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %52 = load i64, i64* @NFTA_LOG_PREFIX, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %51, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  store %struct.nlattr* %54, %struct.nlattr** %10, align 8
  %55 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %56 = icmp ne %struct.nlattr* %55, null
  br i1 %56, label %57, label %81

57:                                               ; preds = %50
  %58 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %59 = call i64 @nla_len(%struct.nlattr* %58)
  %60 = add nsw i64 %59, 1
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i8* @kmalloc(i64 %60, i32 %61)
  %63 = load %struct.nft_log*, %struct.nft_log** %8, align 8
  %64 = getelementptr inbounds %struct.nft_log, %struct.nft_log* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.nft_log*, %struct.nft_log** %8, align 8
  %66 = getelementptr inbounds %struct.nft_log, %struct.nft_log* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %57
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %242

72:                                               ; preds = %57
  %73 = load %struct.nft_log*, %struct.nft_log** %8, align 8
  %74 = getelementptr inbounds %struct.nft_log, %struct.nft_log* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %77 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %78 = call i64 @nla_len(%struct.nlattr* %77)
  %79 = add nsw i64 %78, 1
  %80 = call i32 @nla_strlcpy(i8* %75, %struct.nlattr* %76, i64 %79)
  br label %85

81:                                               ; preds = %50
  %82 = load i8*, i8** @nft_log_null_prefix, align 8
  %83 = load %struct.nft_log*, %struct.nft_log** %8, align 8
  %84 = getelementptr inbounds %struct.nft_log, %struct.nft_log* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %81, %72
  %86 = load %struct.nf_loginfo*, %struct.nf_loginfo** %9, align 8
  %87 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  switch i32 %88, label %208 [
    i32 129, label %89
    i32 128, label %156
  ]

89:                                               ; preds = %85
  %90 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %91 = load i64, i64* @NFTA_LOG_LEVEL, align 8
  %92 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %90, i64 %91
  %93 = load %struct.nlattr*, %struct.nlattr** %92, align 8
  %94 = icmp ne %struct.nlattr* %93, null
  br i1 %94, label %95, label %107

95:                                               ; preds = %89
  %96 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %97 = load i64, i64* @NFTA_LOG_LEVEL, align 8
  %98 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %96, i64 %97
  %99 = load %struct.nlattr*, %struct.nlattr** %98, align 8
  %100 = call i32 @nla_get_be32(%struct.nlattr* %99)
  %101 = call i8* @ntohl(i32 %100)
  %102 = ptrtoint i8* %101 to i64
  %103 = load %struct.nf_loginfo*, %struct.nf_loginfo** %9, align 8
  %104 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i64 %102, i64* %106, align 8
  br label %113

107:                                              ; preds = %89
  %108 = load i64, i64* @NFT_LOGLEVEL_WARNING, align 8
  %109 = load %struct.nf_loginfo*, %struct.nf_loginfo** %9, align 8
  %110 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  store i64 %108, i64* %112, align 8
  br label %113

113:                                              ; preds = %107, %95
  %114 = load %struct.nf_loginfo*, %struct.nf_loginfo** %9, align 8
  %115 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @NFT_LOGLEVEL_AUDIT, align 8
  %120 = icmp sgt i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %11, align 4
  br label %229

124:                                              ; preds = %113
  %125 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %126 = load i64, i64* @NFTA_LOG_FLAGS, align 8
  %127 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %125, i64 %126
  %128 = load %struct.nlattr*, %struct.nlattr** %127, align 8
  %129 = icmp ne %struct.nlattr* %128, null
  br i1 %129, label %130, label %155

130:                                              ; preds = %124
  %131 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %132 = load i64, i64* @NFTA_LOG_FLAGS, align 8
  %133 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %131, i64 %132
  %134 = load %struct.nlattr*, %struct.nlattr** %133, align 8
  %135 = call i32 @nla_get_be32(%struct.nlattr* %134)
  %136 = call i8* @ntohl(i32 %135)
  %137 = ptrtoint i8* %136 to i32
  %138 = load %struct.nf_loginfo*, %struct.nf_loginfo** %9, align 8
  %139 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  store i32 %137, i32* %141, align 8
  %142 = load %struct.nf_loginfo*, %struct.nf_loginfo** %9, align 8
  %143 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @NF_LOG_MASK, align 4
  %148 = xor i32 %147, -1
  %149 = and i32 %146, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %130
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %11, align 4
  br label %229

154:                                              ; preds = %130
  br label %155

155:                                              ; preds = %154, %124
  br label %208

156:                                              ; preds = %85
  %157 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %158 = load i64, i64* @NFTA_LOG_GROUP, align 8
  %159 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %157, i64 %158
  %160 = load %struct.nlattr*, %struct.nlattr** %159, align 8
  %161 = call i32 @nla_get_be16(%struct.nlattr* %160)
  %162 = call i8* @ntohs(i32 %161)
  %163 = load %struct.nf_loginfo*, %struct.nf_loginfo** %9, align 8
  %164 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 3
  store i8* %162, i8** %166, align 8
  %167 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %168 = load i64, i64* @NFTA_LOG_SNAPLEN, align 8
  %169 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %167, i64 %168
  %170 = load %struct.nlattr*, %struct.nlattr** %169, align 8
  %171 = icmp ne %struct.nlattr* %170, null
  br i1 %171, label %172, label %190

172:                                              ; preds = %156
  %173 = load i32, i32* @NF_LOG_F_COPY_LEN, align 4
  %174 = load %struct.nf_loginfo*, %struct.nf_loginfo** %9, align 8
  %175 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = or i32 %178, %173
  store i32 %179, i32* %177, align 8
  %180 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %181 = load i64, i64* @NFTA_LOG_SNAPLEN, align 8
  %182 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %180, i64 %181
  %183 = load %struct.nlattr*, %struct.nlattr** %182, align 8
  %184 = call i32 @nla_get_be32(%struct.nlattr* %183)
  %185 = call i8* @ntohl(i32 %184)
  %186 = load %struct.nf_loginfo*, %struct.nf_loginfo** %9, align 8
  %187 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  store i8* %185, i8** %189, align 8
  br label %190

190:                                              ; preds = %172, %156
  %191 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %192 = load i64, i64* @NFTA_LOG_QTHRESHOLD, align 8
  %193 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %191, i64 %192
  %194 = load %struct.nlattr*, %struct.nlattr** %193, align 8
  %195 = icmp ne %struct.nlattr* %194, null
  br i1 %195, label %196, label %207

196:                                              ; preds = %190
  %197 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %198 = load i64, i64* @NFTA_LOG_QTHRESHOLD, align 8
  %199 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %197, i64 %198
  %200 = load %struct.nlattr*, %struct.nlattr** %199, align 8
  %201 = call i32 @nla_get_be16(%struct.nlattr* %200)
  %202 = call i8* @ntohs(i32 %201)
  %203 = load %struct.nf_loginfo*, %struct.nf_loginfo** %9, align 8
  %204 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  store i8* %202, i8** %206, align 8
  br label %207

207:                                              ; preds = %196, %190
  br label %208

208:                                              ; preds = %85, %207, %155
  %209 = load %struct.nf_loginfo*, %struct.nf_loginfo** %9, align 8
  %210 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @NFT_LOGLEVEL_AUDIT, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %208
  store i32 0, i32* %4, align 4
  br label %242

217:                                              ; preds = %208
  %218 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %219 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.nf_loginfo*, %struct.nf_loginfo** %9, align 8
  %222 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @nf_logger_find_get(i32 %220, i32 %223)
  store i32 %224, i32* %11, align 4
  %225 = load i32, i32* %11, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %217
  br label %229

228:                                              ; preds = %217
  store i32 0, i32* %4, align 4
  br label %242

229:                                              ; preds = %227, %151, %121
  %230 = load %struct.nft_log*, %struct.nft_log** %8, align 8
  %231 = getelementptr inbounds %struct.nft_log, %struct.nft_log* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = load i8*, i8** @nft_log_null_prefix, align 8
  %234 = icmp ne i8* %232, %233
  br i1 %234, label %235, label %240

235:                                              ; preds = %229
  %236 = load %struct.nft_log*, %struct.nft_log** %8, align 8
  %237 = getelementptr inbounds %struct.nft_log, %struct.nft_log* %236, i32 0, i32 0
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @kfree(i8* %238)
  br label %240

240:                                              ; preds = %235, %229
  %241 = load i32, i32* %11, align 4
  store i32 %241, i32* %4, align 4
  br label %242

242:                                              ; preds = %240, %228, %216, %69, %46, %29
  %243 = load i32, i32* %4, align 4
  ret i32 %243
}

declare dso_local %struct.nft_log* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @nla_strlcpy(i8*, %struct.nlattr*, i64) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #1

declare dso_local i32 @nf_logger_find_get(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
