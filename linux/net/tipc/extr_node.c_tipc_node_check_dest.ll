; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_check_dest.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_node.c_tipc_node_check_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.tipc_bearer = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.tipc_media_addr = type { i32 }
%struct.tipc_node = type { i64, i32, i64, i32, i32, %struct.TYPE_2__, i32, i32, %struct.tipc_link_entry* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tipc_link_entry = type { i32, %struct.tipc_link*, i32 }
%struct.tipc_link = type { i32 }

@TIPC_DUMP_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"link created!\00", align 1
@LINK_RESET_EVT = common dso_local global i32 0, align 4
@NODE_FAILINGOVER = common dso_local global i64 0, align 8
@LINK_FAILOVER_BEGIN_EVT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_node_check_dest(%struct.net* %0, i64 %1, i32* %2, %struct.tipc_bearer* %3, i32 %4, i64 %5, %struct.tipc_media_addr* %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.net*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.tipc_bearer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.tipc_media_addr*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.tipc_node*, align 8
  %20 = alloca %struct.tipc_link*, align 8
  %21 = alloca %struct.tipc_link_entry*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32* %2, i32** %12, align 8
  store %struct.tipc_bearer* %3, %struct.tipc_bearer** %13, align 8
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store %struct.tipc_media_addr* %6, %struct.tipc_media_addr** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 1, i32* %26, align 4
  %30 = load i32*, i32** %18, align 8
  store i32 0, i32* %30, align 4
  %31 = load i32*, i32** %17, align 8
  store i32 0, i32* %31, align 4
  %32 = load %struct.net*, %struct.net** %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = load i32, i32* %14, align 4
  %36 = call %struct.tipc_node* @tipc_node_create(%struct.net* %32, i64 %33, i32* %34, i32 %35)
  store %struct.tipc_node* %36, %struct.tipc_node** %19, align 8
  %37 = load %struct.tipc_node*, %struct.tipc_node** %19, align 8
  %38 = icmp ne %struct.tipc_node* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %9
  br label %322

40:                                               ; preds = %9
  %41 = load %struct.tipc_node*, %struct.tipc_node** %19, align 8
  %42 = call i32 @tipc_node_write_lock(%struct.tipc_node* %41)
  %43 = load %struct.tipc_node*, %struct.tipc_node** %19, align 8
  %44 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %43, i32 0, i32 8
  %45 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %44, align 8
  %46 = load %struct.tipc_bearer*, %struct.tipc_bearer** %13, align 8
  %47 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %45, i64 %48
  store %struct.tipc_link_entry* %49, %struct.tipc_link_entry** %21, align 8
  %50 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %21, align 8
  %51 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %50, i32 0, i32 1
  %52 = load %struct.tipc_link*, %struct.tipc_link** %51, align 8
  store %struct.tipc_link* %52, %struct.tipc_link** %20, align 8
  %53 = load %struct.tipc_link*, %struct.tipc_link** %20, align 8
  %54 = icmp ne %struct.tipc_link* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %40
  %56 = load %struct.tipc_link*, %struct.tipc_link** %20, align 8
  %57 = call i64 @tipc_link_is_up(%struct.tipc_link* %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %55, %40
  %60 = phi i1 [ false, %40 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %24, align 4
  %62 = load %struct.tipc_link*, %struct.tipc_link** %20, align 8
  %63 = icmp ne %struct.tipc_link* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %21, align 8
  %66 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %65, i32 0, i32 0
  %67 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %16, align 8
  %68 = call i32 @memcmp(i32* %66, %struct.tipc_media_addr* %67, i32 4)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  br label %71

71:                                               ; preds = %64, %59
  %72 = phi i1 [ false, %59 ], [ %70, %64 ]
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %22, align 4
  %74 = load i64, i64* %15, align 8
  %75 = load %struct.tipc_node*, %struct.tipc_node** %19, align 8
  %76 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %23, align 4
  %80 = load i32, i32* %23, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %71
  %83 = load i32, i32* %22, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* %24, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store i32 0, i32* %26, align 4
  br label %181

89:                                               ; preds = %85, %82, %71
  %90 = load i32, i32* %23, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load i32, i32* %22, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i32, i32* %24, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = load i32*, i32** %17, align 8
  store i32 1, i32* %99, align 4
  br label %180

100:                                              ; preds = %95, %92, %89
  %101 = load i32, i32* %23, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load i32, i32* %22, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %24, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32*, i32** %18, align 8
  store i32 1, i32* %110, align 4
  br label %179

111:                                              ; preds = %106, %103, %100
  %112 = load i32, i32* %23, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = load i32, i32* %22, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %24, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %117
  store i32 1, i32* %25, align 4
  %121 = load i32*, i32** %17, align 8
  store i32 1, i32* %121, align 4
  br label %178

122:                                              ; preds = %117, %114, %111
  %123 = load i32, i32* %23, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %135, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %22, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load i32, i32* %24, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load i64, i64* %15, align 8
  %133 = load %struct.tipc_node*, %struct.tipc_node** %19, align 8
  %134 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  br label %177

135:                                              ; preds = %128, %125, %122
  %136 = load i32, i32* %23, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %149, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* %22, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %138
  %142 = load i32, i32* %24, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %141
  %145 = load i64, i64* %15, align 8
  %146 = load %struct.tipc_node*, %struct.tipc_node** %19, align 8
  %147 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  %148 = load i32*, i32** %17, align 8
  store i32 1, i32* %148, align 4
  br label %176

149:                                              ; preds = %141, %138, %135
  %150 = load i32, i32* %23, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %160, label %152

152:                                              ; preds = %149
  %153 = load i32, i32* %22, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %152
  %156 = load i32, i32* %24, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load i32*, i32** %18, align 8
  store i32 1, i32* %159, align 4
  br label %175

160:                                              ; preds = %155, %152, %149
  %161 = load i32, i32* %23, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %174, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %22, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %174, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %24, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %174, label %169

169:                                              ; preds = %166
  %170 = load i64, i64* %15, align 8
  %171 = load %struct.tipc_node*, %struct.tipc_node** %19, align 8
  %172 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %171, i32 0, i32 0
  store i64 %170, i64* %172, align 8
  store i32 1, i32* %25, align 4
  %173 = load i32*, i32** %17, align 8
  store i32 1, i32* %173, align 4
  br label %174

174:                                              ; preds = %169, %166, %163, %160
  br label %175

175:                                              ; preds = %174, %158
  br label %176

176:                                              ; preds = %175, %144
  br label %177

177:                                              ; preds = %176, %131
  br label %178

178:                                              ; preds = %177, %120
  br label %179

179:                                              ; preds = %178, %109
  br label %180

180:                                              ; preds = %179, %98
  br label %181

181:                                              ; preds = %180, %88
  %182 = load i32, i32* %25, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %181
  br label %301

185:                                              ; preds = %181
  %186 = load %struct.tipc_link*, %struct.tipc_link** %20, align 8
  %187 = icmp ne %struct.tipc_link* %186, null
  br i1 %187, label %296, label %188

188:                                              ; preds = %185
  %189 = load %struct.tipc_node*, %struct.tipc_node** %19, align 8
  %190 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = icmp eq i32 %191, 2
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  br label %301

194:                                              ; preds = %188
  %195 = load %struct.tipc_bearer*, %struct.tipc_bearer** %13, align 8
  %196 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %195, i32 0, i32 6
  %197 = load i32, i32* %196, align 4
  %198 = call i8* @strchr(i32 %197, i8 signext 58)
  %199 = getelementptr inbounds i8, i8* %198, i64 1
  store i8* %199, i8** %27, align 8
  %200 = call i32 @get_random_bytes(i32* %29, i32 4)
  %201 = load %struct.net*, %struct.net** %10, align 8
  %202 = load i8*, i8** %27, align 8
  %203 = load %struct.tipc_bearer*, %struct.tipc_bearer** %13, align 8
  %204 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.tipc_bearer*, %struct.tipc_bearer** %13, align 8
  %207 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.tipc_bearer*, %struct.tipc_bearer** %13, align 8
  %210 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.tipc_bearer*, %struct.tipc_bearer** %13, align 8
  %213 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.tipc_bearer*, %struct.tipc_bearer** %13, align 8
  %216 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.tipc_bearer*, %struct.tipc_bearer** %13, align 8
  %219 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* %29, align 4
  %222 = load %struct.net*, %struct.net** %10, align 8
  %223 = call i32 @tipc_own_addr(%struct.net* %222)
  %224 = load i64, i64* %11, align 8
  %225 = load i32*, i32** %12, align 8
  %226 = load %struct.tipc_node*, %struct.tipc_node** %19, align 8
  %227 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %226, i32 0, i32 7
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.tipc_node*, %struct.tipc_node** %19, align 8
  %230 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %229, i32 0, i32 6
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @tipc_bc_sndlink(i32 %231)
  %233 = load %struct.tipc_node*, %struct.tipc_node** %19, align 8
  %234 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %233, i32 0, i32 5
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %21, align 8
  %238 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %237, i32 0, i32 2
  %239 = load %struct.tipc_node*, %struct.tipc_node** %19, align 8
  %240 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %239, i32 0, i32 5
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 0
  %242 = call i32 @tipc_link_create(%struct.net* %201, i8* %202, i64 %205, i32 %208, i32 %211, i32 %214, i32 %217, i32 %220, i32 %221, i32 %223, i64 %224, i32* %225, i32 %228, i32 %232, i32 %236, i32* %238, i32* %241, %struct.tipc_link** %20)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %246, label %244

244:                                              ; preds = %194
  %245 = load i32*, i32** %17, align 8
  store i32 0, i32* %245, align 4
  br label %301

246:                                              ; preds = %194
  %247 = load %struct.tipc_link*, %struct.tipc_link** %20, align 8
  %248 = load i32, i32* @TIPC_DUMP_ALL, align 4
  %249 = call i32 @trace_tipc_link_reset(%struct.tipc_link* %247, i32 %248, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %250 = load %struct.tipc_link*, %struct.tipc_link** %20, align 8
  %251 = call i32 @tipc_link_reset(%struct.tipc_link* %250)
  %252 = load %struct.tipc_link*, %struct.tipc_link** %20, align 8
  %253 = load i32, i32* @LINK_RESET_EVT, align 4
  %254 = call i32 @tipc_link_fsm_evt(%struct.tipc_link* %252, i32 %253)
  %255 = load %struct.tipc_node*, %struct.tipc_node** %19, align 8
  %256 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @NODE_FAILINGOVER, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %264

260:                                              ; preds = %246
  %261 = load %struct.tipc_link*, %struct.tipc_link** %20, align 8
  %262 = load i32, i32* @LINK_FAILOVER_BEGIN_EVT, align 4
  %263 = call i32 @tipc_link_fsm_evt(%struct.tipc_link* %261, i32 %262)
  br label %264

264:                                              ; preds = %260, %246
  %265 = load %struct.tipc_link*, %struct.tipc_link** %20, align 8
  %266 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %21, align 8
  %267 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %266, i32 0, i32 1
  store %struct.tipc_link* %265, %struct.tipc_link** %267, align 8
  %268 = load %struct.tipc_node*, %struct.tipc_node** %19, align 8
  %269 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %269, align 8
  %272 = load %struct.tipc_node*, %struct.tipc_node** %19, align 8
  %273 = load %struct.tipc_link*, %struct.tipc_link** %20, align 8
  %274 = call i32 @tipc_node_calculate_timer(%struct.tipc_node* %272, %struct.tipc_link* %273)
  %275 = load %struct.tipc_node*, %struct.tipc_node** %19, align 8
  %276 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = icmp eq i32 %277, 1
  br i1 %278, label %279, label %295

279:                                              ; preds = %264
  %280 = load i64, i64* @jiffies, align 8
  %281 = load %struct.tipc_node*, %struct.tipc_node** %19, align 8
  %282 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 4
  %284 = call i64 @msecs_to_jiffies(i32 %283)
  %285 = add i64 %280, %284
  store i64 %285, i64* %28, align 8
  %286 = load %struct.tipc_node*, %struct.tipc_node** %19, align 8
  %287 = getelementptr inbounds %struct.tipc_node, %struct.tipc_node* %286, i32 0, i32 3
  %288 = load i64, i64* %28, align 8
  %289 = call i32 @mod_timer(i32* %287, i64 %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %294, label %291

291:                                              ; preds = %279
  %292 = load %struct.tipc_node*, %struct.tipc_node** %19, align 8
  %293 = call i32 @tipc_node_get(%struct.tipc_node* %292)
  br label %294

294:                                              ; preds = %291, %279
  br label %295

295:                                              ; preds = %294, %264
  br label %296

296:                                              ; preds = %295, %185
  %297 = load %struct.tipc_link_entry*, %struct.tipc_link_entry** %21, align 8
  %298 = getelementptr inbounds %struct.tipc_link_entry, %struct.tipc_link_entry* %297, i32 0, i32 0
  %299 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %16, align 8
  %300 = call i32 @memcpy(i32* %298, %struct.tipc_media_addr* %299, i32 4)
  br label %301

301:                                              ; preds = %296, %244, %193, %184
  %302 = load %struct.tipc_node*, %struct.tipc_node** %19, align 8
  %303 = call i32 @tipc_node_write_unlock(%struct.tipc_node* %302)
  %304 = load i32, i32* %26, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %319

306:                                              ; preds = %301
  %307 = load %struct.tipc_link*, %struct.tipc_link** %20, align 8
  %308 = icmp ne %struct.tipc_link* %307, null
  br i1 %308, label %309, label %319

309:                                              ; preds = %306
  %310 = load %struct.tipc_link*, %struct.tipc_link** %20, align 8
  %311 = call i32 @tipc_link_is_reset(%struct.tipc_link* %310)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %319, label %313

313:                                              ; preds = %309
  %314 = load %struct.tipc_node*, %struct.tipc_node** %19, align 8
  %315 = load %struct.tipc_bearer*, %struct.tipc_bearer** %13, align 8
  %316 = getelementptr inbounds %struct.tipc_bearer, %struct.tipc_bearer* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = call i32 @tipc_node_link_down(%struct.tipc_node* %314, i64 %317, i32 0)
  br label %319

319:                                              ; preds = %313, %309, %306, %301
  %320 = load %struct.tipc_node*, %struct.tipc_node** %19, align 8
  %321 = call i32 @tipc_node_put(%struct.tipc_node* %320)
  br label %322

322:                                              ; preds = %319, %39
  ret void
}

declare dso_local %struct.tipc_node* @tipc_node_create(%struct.net*, i64, i32*, i32) #1

declare dso_local i32 @tipc_node_write_lock(%struct.tipc_node*) #1

declare dso_local i64 @tipc_link_is_up(%struct.tipc_link*) #1

declare dso_local i32 @memcmp(i32*, %struct.tipc_media_addr*, i32) #1

declare dso_local i8* @strchr(i32, i8 signext) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @tipc_link_create(%struct.net*, i8*, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32*, i32, i32, i32, i32*, i32*, %struct.tipc_link**) #1

declare dso_local i32 @tipc_own_addr(%struct.net*) #1

declare dso_local i32 @tipc_bc_sndlink(i32) #1

declare dso_local i32 @trace_tipc_link_reset(%struct.tipc_link*, i32, i8*) #1

declare dso_local i32 @tipc_link_reset(%struct.tipc_link*) #1

declare dso_local i32 @tipc_link_fsm_evt(%struct.tipc_link*, i32) #1

declare dso_local i32 @tipc_node_calculate_timer(%struct.tipc_node*, %struct.tipc_link*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @tipc_node_get(%struct.tipc_node*) #1

declare dso_local i32 @memcpy(i32*, %struct.tipc_media_addr*, i32) #1

declare dso_local i32 @tipc_node_write_unlock(%struct.tipc_node*) #1

declare dso_local i32 @tipc_link_is_reset(%struct.tipc_link*) #1

declare dso_local i32 @tipc_node_link_down(%struct.tipc_node*, i64, i32) #1

declare dso_local i32 @tipc_node_put(%struct.tipc_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
