; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_add_1.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_fib.c_fib6_add_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.fib6_table = type { i32 }
%struct.fib6_node = type { i32, i32, i32, i32, i32, i32 }
%struct.in6_addr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.rt6key = type { %struct.in6_addr }
%struct.fib6_info = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"fib6_add_1\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Can not replace route - no match found\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Can't replace route, no match found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"NLM_F_CREATE should be set when creating new route\0A\00", align 1
@RTN_RTINFO = common dso_local global i32 0, align 4
@RTN_TL_ROOT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fib6_node* (%struct.net*, %struct.fib6_table*, %struct.fib6_node*, %struct.in6_addr*, i32, i32, i32, i32, %struct.netlink_ext_ack*)* @fib6_add_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fib6_node* @fib6_add_1(%struct.net* %0, %struct.fib6_table* %1, %struct.fib6_node* %2, %struct.in6_addr* %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.netlink_ext_ack* %8) #0 {
  %10 = alloca %struct.fib6_node*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.fib6_table*, align 8
  %13 = alloca %struct.fib6_node*, align 8
  %14 = alloca %struct.in6_addr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.netlink_ext_ack*, align 8
  %20 = alloca %struct.fib6_node*, align 8
  %21 = alloca %struct.fib6_node*, align 8
  %22 = alloca %struct.fib6_node*, align 8
  %23 = alloca %struct.fib6_node*, align 8
  %24 = alloca %struct.rt6key*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca %struct.fib6_info*, align 8
  store %struct.net* %0, %struct.net** %11, align 8
  store %struct.fib6_table* %1, %struct.fib6_table** %12, align 8
  store %struct.fib6_node* %2, %struct.fib6_node** %13, align 8
  store %struct.in6_addr* %3, %struct.in6_addr** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store %struct.netlink_ext_ack* %8, %struct.netlink_ext_ack** %19, align 8
  store %struct.fib6_node* null, %struct.fib6_node** %23, align 8
  store i64 0, i64* %26, align 8
  %28 = call i32 @RT6_TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.fib6_node*, %struct.fib6_node** %13, align 8
  store %struct.fib6_node* %29, %struct.fib6_node** %20, align 8
  br label %30

30:                                               ; preds = %148, %9
  %31 = load %struct.fib6_node*, %struct.fib6_node** %20, align 8
  %32 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.fib6_table*, %struct.fib6_table** %12, align 8
  %35 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %34, i32 0, i32 0
  %36 = call i32 @lockdep_is_held(i32* %35)
  %37 = call i8* @rcu_dereference_protected(i32 %33, i32 %36)
  %38 = bitcast i8* %37 to %struct.fib6_info*
  store %struct.fib6_info* %38, %struct.fib6_info** %27, align 8
  %39 = load %struct.fib6_info*, %struct.fib6_info** %27, align 8
  %40 = bitcast %struct.fib6_info* %39 to i32*
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = bitcast i32* %43 to %struct.rt6key*
  store %struct.rt6key* %44, %struct.rt6key** %24, align 8
  %45 = load i32, i32* %15, align 4
  %46 = load %struct.fib6_node*, %struct.fib6_node** %20, align 8
  %47 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %59, label %50

50:                                               ; preds = %30
  %51 = load %struct.rt6key*, %struct.rt6key** %24, align 8
  %52 = getelementptr inbounds %struct.rt6key, %struct.rt6key* %51, i32 0, i32 0
  %53 = load %struct.in6_addr*, %struct.in6_addr** %14, align 8
  %54 = load %struct.fib6_node*, %struct.fib6_node** %20, align 8
  %55 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ipv6_prefix_equal(%struct.in6_addr* %52, %struct.in6_addr* %53, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %50, %30
  %60 = load i32, i32* %17, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %18, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %67 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %68 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @ENOENT, align 4
  %70 = sub nsw i32 0, %69
  %71 = call %struct.fib6_node* @ERR_PTR(i32 %70)
  store %struct.fib6_node* %71, %struct.fib6_node** %10, align 8
  br label %379

72:                                               ; preds = %62
  %73 = call i32 @pr_warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %59
  br label %200

75:                                               ; preds = %50
  %76 = load i32, i32* %15, align 4
  %77 = load %struct.fib6_node*, %struct.fib6_node** %20, align 8
  %78 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %76, %79
  br i1 %80, label %81, label %120

81:                                               ; preds = %75
  %82 = load %struct.fib6_node*, %struct.fib6_node** %20, align 8
  %83 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @RTN_RTINFO, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %81
  %89 = load %struct.fib6_node*, %struct.fib6_node** %20, align 8
  %90 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @RCU_INIT_POINTER(i32 %91, %struct.fib6_node* null)
  %93 = load %struct.fib6_info*, %struct.fib6_info** %27, align 8
  %94 = call i32 @fib6_info_release(%struct.fib6_info* %93)
  br label %118

95:                                               ; preds = %81
  %96 = load %struct.fib6_node*, %struct.fib6_node** %20, align 8
  %97 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @RTN_TL_ROOT, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %95
  %103 = load %struct.fib6_node*, %struct.fib6_node** %20, align 8
  %104 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @rcu_access_pointer(i32 %105)
  %107 = load %struct.net*, %struct.net** %11, align 8
  %108 = getelementptr inbounds %struct.net, %struct.net* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %106, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %102
  %113 = load %struct.fib6_node*, %struct.fib6_node** %20, align 8
  %114 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @RCU_INIT_POINTER(i32 %115, %struct.fib6_node* null)
  br label %117

117:                                              ; preds = %112, %102, %95
  br label %118

118:                                              ; preds = %117, %88
  %119 = load %struct.fib6_node*, %struct.fib6_node** %20, align 8
  store %struct.fib6_node* %119, %struct.fib6_node** %10, align 8
  br label %379

120:                                              ; preds = %75
  %121 = load %struct.in6_addr*, %struct.in6_addr** %14, align 8
  %122 = load %struct.fib6_node*, %struct.fib6_node** %20, align 8
  %123 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @addr_bit_set(%struct.in6_addr* %121, i32 %124)
  store i64 %125, i64* %26, align 8
  %126 = load %struct.fib6_node*, %struct.fib6_node** %20, align 8
  store %struct.fib6_node* %126, %struct.fib6_node** %23, align 8
  %127 = load i64, i64* %26, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %120
  %130 = load %struct.fib6_node*, %struct.fib6_node** %20, align 8
  %131 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.fib6_table*, %struct.fib6_table** %12, align 8
  %134 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %133, i32 0, i32 0
  %135 = call i32 @lockdep_is_held(i32* %134)
  %136 = call i8* @rcu_dereference_protected(i32 %132, i32 %135)
  br label %145

137:                                              ; preds = %120
  %138 = load %struct.fib6_node*, %struct.fib6_node** %20, align 8
  %139 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.fib6_table*, %struct.fib6_table** %12, align 8
  %142 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %141, i32 0, i32 0
  %143 = call i32 @lockdep_is_held(i32* %142)
  %144 = call i8* @rcu_dereference_protected(i32 %140, i32 %143)
  br label %145

145:                                              ; preds = %137, %129
  %146 = phi i8* [ %136, %129 ], [ %144, %137 ]
  %147 = bitcast i8* %146 to %struct.fib6_node*
  store %struct.fib6_node* %147, %struct.fib6_node** %20, align 8
  br label %148

148:                                              ; preds = %145
  %149 = load %struct.fib6_node*, %struct.fib6_node** %20, align 8
  %150 = icmp ne %struct.fib6_node* %149, null
  br i1 %150, label %30, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %17, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %166, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* %18, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %154
  %158 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  %159 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %158, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %160 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %161 = load i32, i32* @ENOENT, align 4
  %162 = sub nsw i32 0, %161
  %163 = call %struct.fib6_node* @ERR_PTR(i32 %162)
  store %struct.fib6_node* %163, %struct.fib6_node** %10, align 8
  br label %379

164:                                              ; preds = %154
  %165 = call i32 @pr_warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %166

166:                                              ; preds = %164, %151
  %167 = load %struct.net*, %struct.net** %11, align 8
  %168 = call %struct.fib6_node* @node_alloc(%struct.net* %167)
  store %struct.fib6_node* %168, %struct.fib6_node** %22, align 8
  %169 = load %struct.fib6_node*, %struct.fib6_node** %22, align 8
  %170 = icmp ne %struct.fib6_node* %169, null
  br i1 %170, label %175, label %171

171:                                              ; preds = %166
  %172 = load i32, i32* @ENOMEM, align 4
  %173 = sub nsw i32 0, %172
  %174 = call %struct.fib6_node* @ERR_PTR(i32 %173)
  store %struct.fib6_node* %174, %struct.fib6_node** %10, align 8
  br label %379

175:                                              ; preds = %166
  %176 = load i32, i32* %15, align 4
  %177 = load %struct.fib6_node*, %struct.fib6_node** %22, align 8
  %178 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 4
  %179 = load %struct.fib6_node*, %struct.fib6_node** %22, align 8
  %180 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.fib6_node*, %struct.fib6_node** %23, align 8
  %183 = call i32 @RCU_INIT_POINTER(i32 %181, %struct.fib6_node* %182)
  %184 = load i64, i64* %26, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %175
  %187 = load %struct.fib6_node*, %struct.fib6_node** %23, align 8
  %188 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.fib6_node*, %struct.fib6_node** %22, align 8
  %191 = call i32 @rcu_assign_pointer(i32 %189, %struct.fib6_node* %190)
  br label %198

192:                                              ; preds = %175
  %193 = load %struct.fib6_node*, %struct.fib6_node** %23, align 8
  %194 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.fib6_node*, %struct.fib6_node** %22, align 8
  %197 = call i32 @rcu_assign_pointer(i32 %195, %struct.fib6_node* %196)
  br label %198

198:                                              ; preds = %192, %186
  %199 = load %struct.fib6_node*, %struct.fib6_node** %22, align 8
  store %struct.fib6_node* %199, %struct.fib6_node** %10, align 8
  br label %379

200:                                              ; preds = %74
  %201 = load %struct.fib6_node*, %struct.fib6_node** %20, align 8
  %202 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.fib6_table*, %struct.fib6_table** %12, align 8
  %205 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %204, i32 0, i32 0
  %206 = call i32 @lockdep_is_held(i32* %205)
  %207 = call i8* @rcu_dereference_protected(i32 %203, i32 %206)
  %208 = bitcast i8* %207 to %struct.fib6_node*
  store %struct.fib6_node* %208, %struct.fib6_node** %23, align 8
  %209 = load %struct.in6_addr*, %struct.in6_addr** %14, align 8
  %210 = load %struct.rt6key*, %struct.rt6key** %24, align 8
  %211 = getelementptr inbounds %struct.rt6key, %struct.rt6key* %210, i32 0, i32 0
  %212 = call i32 @__ipv6_addr_diff(%struct.in6_addr* %209, %struct.in6_addr* %211, i32 4)
  store i32 %212, i32* %25, align 4
  %213 = load i32, i32* %15, align 4
  %214 = load i32, i32* %25, align 4
  %215 = icmp sgt i32 %213, %214
  br i1 %215, label %216, label %321

216:                                              ; preds = %200
  %217 = load %struct.net*, %struct.net** %11, align 8
  %218 = call %struct.fib6_node* @node_alloc(%struct.net* %217)
  store %struct.fib6_node* %218, %struct.fib6_node** %21, align 8
  %219 = load %struct.net*, %struct.net** %11, align 8
  %220 = call %struct.fib6_node* @node_alloc(%struct.net* %219)
  store %struct.fib6_node* %220, %struct.fib6_node** %22, align 8
  %221 = load %struct.fib6_node*, %struct.fib6_node** %21, align 8
  %222 = icmp ne %struct.fib6_node* %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %216
  %224 = load %struct.fib6_node*, %struct.fib6_node** %22, align 8
  %225 = icmp ne %struct.fib6_node* %224, null
  br i1 %225, label %244, label %226

226:                                              ; preds = %223, %216
  %227 = load %struct.fib6_node*, %struct.fib6_node** %21, align 8
  %228 = icmp ne %struct.fib6_node* %227, null
  br i1 %228, label %229, label %233

229:                                              ; preds = %226
  %230 = load %struct.net*, %struct.net** %11, align 8
  %231 = load %struct.fib6_node*, %struct.fib6_node** %21, align 8
  %232 = call i32 @node_free_immediate(%struct.net* %230, %struct.fib6_node* %231)
  br label %233

233:                                              ; preds = %229, %226
  %234 = load %struct.fib6_node*, %struct.fib6_node** %22, align 8
  %235 = icmp ne %struct.fib6_node* %234, null
  br i1 %235, label %236, label %240

236:                                              ; preds = %233
  %237 = load %struct.net*, %struct.net** %11, align 8
  %238 = load %struct.fib6_node*, %struct.fib6_node** %22, align 8
  %239 = call i32 @node_free_immediate(%struct.net* %237, %struct.fib6_node* %238)
  br label %240

240:                                              ; preds = %236, %233
  %241 = load i32, i32* @ENOMEM, align 4
  %242 = sub nsw i32 0, %241
  %243 = call %struct.fib6_node* @ERR_PTR(i32 %242)
  store %struct.fib6_node* %243, %struct.fib6_node** %10, align 8
  br label %379

244:                                              ; preds = %223
  %245 = load i32, i32* %25, align 4
  %246 = load %struct.fib6_node*, %struct.fib6_node** %21, align 8
  %247 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %246, i32 0, i32 0
  store i32 %245, i32* %247, align 4
  %248 = load %struct.fib6_node*, %struct.fib6_node** %21, align 8
  %249 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.fib6_node*, %struct.fib6_node** %23, align 8
  %252 = call i32 @RCU_INIT_POINTER(i32 %250, %struct.fib6_node* %251)
  %253 = load %struct.fib6_node*, %struct.fib6_node** %20, align 8
  %254 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.fib6_node*, %struct.fib6_node** %21, align 8
  %257 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %256, i32 0, i32 5
  store i32 %255, i32* %257, align 4
  %258 = load %struct.fib6_node*, %struct.fib6_node** %21, align 8
  %259 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %258, i32 0, i32 5
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.fib6_table*, %struct.fib6_table** %12, align 8
  %262 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %261, i32 0, i32 0
  %263 = call i32 @lockdep_is_held(i32* %262)
  %264 = call i8* @rcu_dereference_protected(i32 %260, i32 %263)
  %265 = call i32 @fib6_info_hold(i8* %264)
  %266 = load i64, i64* %26, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %244
  %269 = load %struct.fib6_node*, %struct.fib6_node** %23, align 8
  %270 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.fib6_node*, %struct.fib6_node** %21, align 8
  %273 = call i32 @rcu_assign_pointer(i32 %271, %struct.fib6_node* %272)
  br label %280

274:                                              ; preds = %244
  %275 = load %struct.fib6_node*, %struct.fib6_node** %23, align 8
  %276 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.fib6_node*, %struct.fib6_node** %21, align 8
  %279 = call i32 @rcu_assign_pointer(i32 %277, %struct.fib6_node* %278)
  br label %280

280:                                              ; preds = %274, %268
  %281 = load i32, i32* %15, align 4
  %282 = load %struct.fib6_node*, %struct.fib6_node** %22, align 8
  %283 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %282, i32 0, i32 0
  store i32 %281, i32* %283, align 4
  %284 = load %struct.fib6_node*, %struct.fib6_node** %22, align 8
  %285 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %284, i32 0, i32 4
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.fib6_node*, %struct.fib6_node** %21, align 8
  %288 = call i32 @RCU_INIT_POINTER(i32 %286, %struct.fib6_node* %287)
  %289 = load %struct.fib6_node*, %struct.fib6_node** %20, align 8
  %290 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.fib6_node*, %struct.fib6_node** %21, align 8
  %293 = call i32 @rcu_assign_pointer(i32 %291, %struct.fib6_node* %292)
  %294 = load %struct.in6_addr*, %struct.in6_addr** %14, align 8
  %295 = load i32, i32* %25, align 4
  %296 = call i64 @addr_bit_set(%struct.in6_addr* %294, i32 %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %309

298:                                              ; preds = %280
  %299 = load %struct.fib6_node*, %struct.fib6_node** %21, align 8
  %300 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.fib6_node*, %struct.fib6_node** %22, align 8
  %303 = call i32 @rcu_assign_pointer(i32 %301, %struct.fib6_node* %302)
  %304 = load %struct.fib6_node*, %struct.fib6_node** %21, align 8
  %305 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.fib6_node*, %struct.fib6_node** %20, align 8
  %308 = call i32 @rcu_assign_pointer(i32 %306, %struct.fib6_node* %307)
  br label %320

309:                                              ; preds = %280
  %310 = load %struct.fib6_node*, %struct.fib6_node** %21, align 8
  %311 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.fib6_node*, %struct.fib6_node** %22, align 8
  %314 = call i32 @rcu_assign_pointer(i32 %312, %struct.fib6_node* %313)
  %315 = load %struct.fib6_node*, %struct.fib6_node** %21, align 8
  %316 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.fib6_node*, %struct.fib6_node** %20, align 8
  %319 = call i32 @rcu_assign_pointer(i32 %317, %struct.fib6_node* %318)
  br label %320

320:                                              ; preds = %309, %298
  br label %377

321:                                              ; preds = %200
  %322 = load %struct.net*, %struct.net** %11, align 8
  %323 = call %struct.fib6_node* @node_alloc(%struct.net* %322)
  store %struct.fib6_node* %323, %struct.fib6_node** %22, align 8
  %324 = load %struct.fib6_node*, %struct.fib6_node** %22, align 8
  %325 = icmp ne %struct.fib6_node* %324, null
  br i1 %325, label %330, label %326

326:                                              ; preds = %321
  %327 = load i32, i32* @ENOMEM, align 4
  %328 = sub nsw i32 0, %327
  %329 = call %struct.fib6_node* @ERR_PTR(i32 %328)
  store %struct.fib6_node* %329, %struct.fib6_node** %10, align 8
  br label %379

330:                                              ; preds = %321
  %331 = load i32, i32* %15, align 4
  %332 = load %struct.fib6_node*, %struct.fib6_node** %22, align 8
  %333 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %332, i32 0, i32 0
  store i32 %331, i32* %333, align 4
  %334 = load %struct.fib6_node*, %struct.fib6_node** %22, align 8
  %335 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %334, i32 0, i32 4
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.fib6_node*, %struct.fib6_node** %23, align 8
  %338 = call i32 @RCU_INIT_POINTER(i32 %336, %struct.fib6_node* %337)
  %339 = load %struct.rt6key*, %struct.rt6key** %24, align 8
  %340 = getelementptr inbounds %struct.rt6key, %struct.rt6key* %339, i32 0, i32 0
  %341 = load i32, i32* %15, align 4
  %342 = call i64 @addr_bit_set(%struct.in6_addr* %340, i32 %341)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %350

344:                                              ; preds = %330
  %345 = load %struct.fib6_node*, %struct.fib6_node** %22, align 8
  %346 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.fib6_node*, %struct.fib6_node** %20, align 8
  %349 = call i32 @RCU_INIT_POINTER(i32 %347, %struct.fib6_node* %348)
  br label %356

350:                                              ; preds = %330
  %351 = load %struct.fib6_node*, %struct.fib6_node** %22, align 8
  %352 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.fib6_node*, %struct.fib6_node** %20, align 8
  %355 = call i32 @RCU_INIT_POINTER(i32 %353, %struct.fib6_node* %354)
  br label %356

356:                                              ; preds = %350, %344
  %357 = load %struct.fib6_node*, %struct.fib6_node** %20, align 8
  %358 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %357, i32 0, i32 4
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.fib6_node*, %struct.fib6_node** %22, align 8
  %361 = call i32 @rcu_assign_pointer(i32 %359, %struct.fib6_node* %360)
  %362 = load i64, i64* %26, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %370

364:                                              ; preds = %356
  %365 = load %struct.fib6_node*, %struct.fib6_node** %23, align 8
  %366 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %365, i32 0, i32 3
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.fib6_node*, %struct.fib6_node** %22, align 8
  %369 = call i32 @rcu_assign_pointer(i32 %367, %struct.fib6_node* %368)
  br label %376

370:                                              ; preds = %356
  %371 = load %struct.fib6_node*, %struct.fib6_node** %23, align 8
  %372 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.fib6_node*, %struct.fib6_node** %22, align 8
  %375 = call i32 @rcu_assign_pointer(i32 %373, %struct.fib6_node* %374)
  br label %376

376:                                              ; preds = %370, %364
  br label %377

377:                                              ; preds = %376, %320
  %378 = load %struct.fib6_node*, %struct.fib6_node** %22, align 8
  store %struct.fib6_node* %378, %struct.fib6_node** %10, align 8
  br label %379

379:                                              ; preds = %377, %326, %240, %198, %171, %157, %118, %65
  %380 = load %struct.fib6_node*, %struct.fib6_node** %10, align 8
  ret %struct.fib6_node* %380
}

declare dso_local i32 @RT6_TRACE(i8*) #1

declare dso_local i8* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @ipv6_prefix_equal(%struct.in6_addr*, %struct.in6_addr*, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local %struct.fib6_node* @ERR_PTR(i32) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, %struct.fib6_node*) #1

declare dso_local i32 @fib6_info_release(%struct.fib6_info*) #1

declare dso_local i64 @rcu_access_pointer(i32) #1

declare dso_local i64 @addr_bit_set(%struct.in6_addr*, i32) #1

declare dso_local %struct.fib6_node* @node_alloc(%struct.net*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.fib6_node*) #1

declare dso_local i32 @__ipv6_addr_diff(%struct.in6_addr*, %struct.in6_addr*, i32) #1

declare dso_local i32 @node_free_immediate(%struct.net*, %struct.fib6_node*) #1

declare dso_local i32 @fib6_info_hold(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
