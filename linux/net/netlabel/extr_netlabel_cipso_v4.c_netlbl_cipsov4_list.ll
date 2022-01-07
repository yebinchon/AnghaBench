; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_cipso_v4.c_netlbl_cipsov4_list.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_cipso_v4.c_netlbl_cipsov4_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32* }
%struct.nlattr = type { i32 }
%struct.cipso_v4_doi = type { i64, i64*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64* }
%struct.TYPE_5__ = type { i64, i64* }

@NLBL_CIPSOV4_A_DOI = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@netlbl_cipsov4_gnl_family = common dso_local global i32 0, align 4
@NLBL_CIPSOV4_C_LIST = common dso_local global i32 0, align 4
@NLBL_CIPSOV4_A_MTYPE = common dso_local global i32 0, align 4
@NLBL_CIPSOV4_A_TAGLST = common dso_local global i32 0, align 4
@CIPSO_V4_TAG_MAXCNT = common dso_local global i64 0, align 8
@CIPSO_V4_TAG_INVALID = common dso_local global i64 0, align 8
@NLBL_CIPSOV4_A_TAG = common dso_local global i32 0, align 4
@NLBL_CIPSOV4_A_MLSLVLLST = common dso_local global i32 0, align 4
@CIPSO_V4_INV_LVL = common dso_local global i64 0, align 8
@NLBL_CIPSOV4_A_MLSLVL = common dso_local global i32 0, align 4
@NLBL_CIPSOV4_A_MLSLVLLOC = common dso_local global i32 0, align 4
@NLBL_CIPSOV4_A_MLSLVLREM = common dso_local global i32 0, align 4
@NLBL_CIPSOV4_A_MLSCATLST = common dso_local global i32 0, align 4
@CIPSO_V4_INV_CAT = common dso_local global i64 0, align 8
@NLBL_CIPSOV4_A_MLSCAT = common dso_local global i32 0, align 4
@NLBL_CIPSOV4_A_MLSCATLOC = common dso_local global i32 0, align 4
@NLBL_CIPSOV4_A_MLSCATREM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @netlbl_cipsov4_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlbl_cipsov4_list(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca %struct.cipso_v4_doi*, align 8
  %14 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  store i64 1, i64* %8, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @NLBL_CIPSOV4_A_DOI, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %299

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %290, %25
  %27 = load i64, i64* @NLMSG_DEFAULT_SIZE, align 8
  %28 = load i64, i64* %8, align 8
  %29 = mul i64 %27, %28
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.sk_buff* @nlmsg_new(i64 %29, i32 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %7, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = icmp eq %struct.sk_buff* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %299

37:                                               ; preds = %26
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %40 = load i32, i32* @NLBL_CIPSOV4_C_LIST, align 4
  %41 = call i8* @genlmsg_put_reply(%struct.sk_buff* %38, %struct.genl_info* %39, i32* @netlbl_cipsov4_gnl_family, i32 0, i32 %40)
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %299

47:                                               ; preds = %37
  %48 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %49 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @NLBL_CIPSOV4_A_DOI, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @nla_get_u32(i32 %53)
  store i64 %54, i64* %10, align 8
  %55 = call i32 (...) @rcu_read_lock()
  %56 = load i64, i64* %10, align 8
  %57 = call %struct.cipso_v4_doi* @cipso_v4_doi_getdef(i64 %56)
  store %struct.cipso_v4_doi* %57, %struct.cipso_v4_doi** %13, align 8
  %58 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %13, align 8
  %59 = icmp eq %struct.cipso_v4_doi* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %47
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %297

63:                                               ; preds = %47
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = load i32, i32* @NLBL_CIPSOV4_A_MTYPE, align 4
  %66 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %13, align 8
  %67 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @nla_put_u32(%struct.sk_buff* %64, i32 %65, i64 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %297

73:                                               ; preds = %63
  %74 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %75 = load i32, i32* @NLBL_CIPSOV4_A_TAGLST, align 4
  %76 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %74, i32 %75)
  store %struct.nlattr* %76, %struct.nlattr** %11, align 8
  %77 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %78 = icmp eq %struct.nlattr* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %297

82:                                               ; preds = %73
  store i64 0, i64* %14, align 8
  br label %83

83:                                               ; preds = %112, %82
  %84 = load i64, i64* %14, align 8
  %85 = load i64, i64* @CIPSO_V4_TAG_MAXCNT, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %83
  %88 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %13, align 8
  %89 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %88, i32 0, i32 1
  %90 = load i64*, i64** %89, align 8
  %91 = load i64, i64* %14, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @CIPSO_V4_TAG_INVALID, align 8
  %95 = icmp ne i64 %93, %94
  br label %96

96:                                               ; preds = %87, %83
  %97 = phi i1 [ false, %83 ], [ %95, %87 ]
  br i1 %97, label %98, label %115

98:                                               ; preds = %96
  %99 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %100 = load i32, i32* @NLBL_CIPSOV4_A_TAG, align 4
  %101 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %13, align 8
  %102 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %101, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = load i64, i64* %14, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @nla_put_u8(%struct.sk_buff* %99, i32 %100, i64 %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %98
  br label %297

111:                                              ; preds = %98
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %14, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %14, align 8
  br label %83

115:                                              ; preds = %96
  %116 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %117 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %118 = call i32 @nla_nest_end(%struct.sk_buff* %116, %struct.nlattr* %117)
  %119 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %13, align 8
  %120 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  switch i64 %121, label %279 [
    i64 128, label %122
  ]

122:                                              ; preds = %115
  %123 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %124 = load i32, i32* @NLBL_CIPSOV4_A_MLSLVLLST, align 4
  %125 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %123, i32 %124)
  store %struct.nlattr* %125, %struct.nlattr** %11, align 8
  %126 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %127 = icmp eq %struct.nlattr* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %6, align 4
  br label %297

131:                                              ; preds = %122
  store i64 0, i64* %14, align 8
  br label %132

132:                                              ; preds = %194, %131
  %133 = load i64, i64* %14, align 8
  %134 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %13, align 8
  %135 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ult i64 %133, %140
  br i1 %141, label %142, label %197

142:                                              ; preds = %132
  %143 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %13, align 8
  %144 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i64*, i64** %148, align 8
  %150 = load i64, i64* %14, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @CIPSO_V4_INV_LVL, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %142
  br label %194

156:                                              ; preds = %142
  %157 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %158 = load i32, i32* @NLBL_CIPSOV4_A_MLSLVL, align 4
  %159 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %157, i32 %158)
  store %struct.nlattr* %159, %struct.nlattr** %12, align 8
  %160 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %161 = icmp eq %struct.nlattr* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %156
  %163 = load i32, i32* @ENOMEM, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %6, align 4
  br label %287

165:                                              ; preds = %156
  %166 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %167 = load i32, i32* @NLBL_CIPSOV4_A_MLSLVLLOC, align 4
  %168 = load i64, i64* %14, align 8
  %169 = call i32 @nla_put_u32(%struct.sk_buff* %166, i32 %167, i64 %168)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %6, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  br label %287

173:                                              ; preds = %165
  %174 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %175 = load i32, i32* @NLBL_CIPSOV4_A_MLSLVLREM, align 4
  %176 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %13, align 8
  %177 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = load i64*, i64** %181, align 8
  %183 = load i64, i64* %14, align 8
  %184 = getelementptr inbounds i64, i64* %182, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @nla_put_u32(%struct.sk_buff* %174, i32 %175, i64 %185)
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %6, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %173
  br label %287

190:                                              ; preds = %173
  %191 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %192 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %193 = call i32 @nla_nest_end(%struct.sk_buff* %191, %struct.nlattr* %192)
  br label %194

194:                                              ; preds = %190, %155
  %195 = load i64, i64* %14, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %14, align 8
  br label %132

197:                                              ; preds = %132
  %198 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %199 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %200 = call i32 @nla_nest_end(%struct.sk_buff* %198, %struct.nlattr* %199)
  %201 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %202 = load i32, i32* @NLBL_CIPSOV4_A_MLSCATLST, align 4
  %203 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %201, i32 %202)
  store %struct.nlattr* %203, %struct.nlattr** %11, align 8
  %204 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %205 = icmp eq %struct.nlattr* %204, null
  br i1 %205, label %206, label %209

206:                                              ; preds = %197
  %207 = load i32, i32* @ENOMEM, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %6, align 4
  br label %287

209:                                              ; preds = %197
  store i64 0, i64* %14, align 8
  br label %210

210:                                              ; preds = %272, %209
  %211 = load i64, i64* %14, align 8
  %212 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %13, align 8
  %213 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp ult i64 %211, %218
  br i1 %219, label %220, label %275

220:                                              ; preds = %210
  %221 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %13, align 8
  %222 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 1
  %227 = load i64*, i64** %226, align 8
  %228 = load i64, i64* %14, align 8
  %229 = getelementptr inbounds i64, i64* %227, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @CIPSO_V4_INV_CAT, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %220
  br label %272

234:                                              ; preds = %220
  %235 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %236 = load i32, i32* @NLBL_CIPSOV4_A_MLSCAT, align 4
  %237 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %235, i32 %236)
  store %struct.nlattr* %237, %struct.nlattr** %12, align 8
  %238 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %239 = icmp eq %struct.nlattr* %238, null
  br i1 %239, label %240, label %243

240:                                              ; preds = %234
  %241 = load i32, i32* @ENOMEM, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %6, align 4
  br label %287

243:                                              ; preds = %234
  %244 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %245 = load i32, i32* @NLBL_CIPSOV4_A_MLSCATLOC, align 4
  %246 = load i64, i64* %14, align 8
  %247 = call i32 @nla_put_u32(%struct.sk_buff* %244, i32 %245, i64 %246)
  store i32 %247, i32* %6, align 4
  %248 = load i32, i32* %6, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %243
  br label %287

251:                                              ; preds = %243
  %252 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %253 = load i32, i32* @NLBL_CIPSOV4_A_MLSCATREM, align 4
  %254 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %13, align 8
  %255 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 1
  %260 = load i64*, i64** %259, align 8
  %261 = load i64, i64* %14, align 8
  %262 = getelementptr inbounds i64, i64* %260, i64 %261
  %263 = load i64, i64* %262, align 8
  %264 = call i32 @nla_put_u32(%struct.sk_buff* %252, i32 %253, i64 %263)
  store i32 %264, i32* %6, align 4
  %265 = load i32, i32* %6, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %251
  br label %287

268:                                              ; preds = %251
  %269 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %270 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %271 = call i32 @nla_nest_end(%struct.sk_buff* %269, %struct.nlattr* %270)
  br label %272

272:                                              ; preds = %268, %233
  %273 = load i64, i64* %14, align 8
  %274 = add i64 %273, 1
  store i64 %274, i64* %14, align 8
  br label %210

275:                                              ; preds = %210
  %276 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %277 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %278 = call i32 @nla_nest_end(%struct.sk_buff* %276, %struct.nlattr* %277)
  br label %279

279:                                              ; preds = %115, %275
  %280 = call i32 (...) @rcu_read_unlock()
  %281 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %282 = load i8*, i8** %9, align 8
  %283 = call i32 @genlmsg_end(%struct.sk_buff* %281, i8* %282)
  %284 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %285 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %286 = call i32 @genlmsg_reply(%struct.sk_buff* %284, %struct.genl_info* %285)
  store i32 %286, i32* %3, align 4
  br label %303

287:                                              ; preds = %267, %250, %240, %206, %189, %172, %162
  %288 = load i64, i64* %8, align 8
  %289 = icmp ult i64 %288, 4
  br i1 %289, label %290, label %296

290:                                              ; preds = %287
  %291 = call i32 (...) @rcu_read_unlock()
  %292 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %293 = call i32 @kfree_skb(%struct.sk_buff* %292)
  %294 = load i64, i64* %8, align 8
  %295 = mul i64 %294, 2
  store i64 %295, i64* %8, align 8
  br label %26

296:                                              ; preds = %287
  br label %297

297:                                              ; preds = %296, %128, %110, %79, %72, %60
  %298 = call i32 (...) @rcu_read_unlock()
  br label %299

299:                                              ; preds = %297, %44, %34, %22
  %300 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %301 = call i32 @kfree_skb(%struct.sk_buff* %300)
  %302 = load i32, i32* %6, align 4
  store i32 %302, i32* %3, align 4
  br label %303

303:                                              ; preds = %299, %279
  %304 = load i32, i32* %3, align 4
  ret i32 %304
}

declare dso_local %struct.sk_buff* @nlmsg_new(i64, i32) #1

declare dso_local i8* @genlmsg_put_reply(%struct.sk_buff*, %struct.genl_info*, i32*, i32, i32) #1

declare dso_local i64 @nla_get_u32(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cipso_v4_doi* @cipso_v4_doi_getdef(i64) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i64) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_put_u8(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
