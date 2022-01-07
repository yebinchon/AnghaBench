; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_newobj.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_newobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nfgenmsg = type { i32 }
%struct.nft_object_type = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.nft_ctx*, %struct.nft_table*)* }
%struct.nft_ctx = type { i32 }
%struct.nft_table = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.nft_table*, %struct.nft_table* }
%struct.nft_object = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32, i32, i32, i32 }

@NFTA_OBJ_TYPE = common dso_local global i64 0, align 8
@NFTA_OBJ_NAME = common dso_local global i64 0, align 8
@NFTA_OBJ_DATA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFTA_OBJ_TABLE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@NLM_F_EXCL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@NLM_F_REPLACE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFT_MSG_NEWOBJ = common dso_local global i32 0, align 4
@nft_objname_ht = common dso_local global i32 0, align 4
@nft_objname_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @nf_tables_newobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_newobj(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.nfgenmsg*, align 8
  %15 = alloca %struct.nft_object_type*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.nft_table*, align 8
  %19 = alloca %struct.nft_object*, align 8
  %20 = alloca %struct.nft_ctx, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %23 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %24 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %23)
  store %struct.nfgenmsg* %24, %struct.nfgenmsg** %14, align 8
  %25 = load %struct.net*, %struct.net** %8, align 8
  %26 = call i32 @nft_genmask_next(%struct.net* %25)
  store i32 %26, i32* %16, align 4
  %27 = load %struct.nfgenmsg*, %struct.nfgenmsg** %14, align 8
  %28 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %17, align 4
  %30 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %31 = load i64, i64* @NFTA_OBJ_TYPE, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = icmp ne %struct.nlattr* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %6
  %36 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %37 = load i64, i64* @NFTA_OBJ_NAME, align 8
  %38 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %37
  %39 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %40 = icmp ne %struct.nlattr* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %43 = load i64, i64* @NFTA_OBJ_DATA, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %42, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41, %35, %6
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %282

50:                                               ; preds = %41
  %51 = load %struct.net*, %struct.net** %8, align 8
  %52 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %53 = load i64, i64* @NFTA_OBJ_TABLE, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %52, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %16, align 4
  %58 = call %struct.nft_table* @nft_table_lookup(%struct.net* %51, %struct.nlattr* %55, i32 %56, i32 %57)
  store %struct.nft_table* %58, %struct.nft_table** %18, align 8
  %59 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %60 = call i64 @IS_ERR(%struct.nft_table* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %50
  %63 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %64 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %65 = load i64, i64* @NFTA_OBJ_TABLE, align 8
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %64, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %63, %struct.nlattr* %67)
  %69 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %70 = call i32 @PTR_ERR(%struct.nft_table* %69)
  store i32 %70, i32* %7, align 4
  br label %282

71:                                               ; preds = %50
  %72 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %73 = load i64, i64* @NFTA_OBJ_TYPE, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %72, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = call i32 @nla_get_be32(%struct.nlattr* %75)
  %77 = call i32 @ntohl(i32 %76)
  store i32 %77, i32* %21, align 4
  %78 = load %struct.net*, %struct.net** %8, align 8
  %79 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %80 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %81 = load i64, i64* @NFTA_OBJ_NAME, align 8
  %82 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %80, i64 %81
  %83 = load %struct.nlattr*, %struct.nlattr** %82, align 8
  %84 = load i32, i32* %21, align 4
  %85 = load i32, i32* %16, align 4
  %86 = call %struct.nft_table* @nft_obj_lookup(%struct.net* %78, %struct.nft_table* %79, %struct.nlattr* %83, i32 %84, i32 %85)
  %87 = bitcast %struct.nft_table* %86 to %struct.nft_object*
  store %struct.nft_object* %87, %struct.nft_object** %19, align 8
  %88 = load %struct.nft_object*, %struct.nft_object** %19, align 8
  %89 = bitcast %struct.nft_object* %88 to %struct.nft_table*
  %90 = call i64 @IS_ERR(%struct.nft_table* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %71
  %93 = load %struct.nft_object*, %struct.nft_object** %19, align 8
  %94 = bitcast %struct.nft_object* %93 to %struct.nft_table*
  %95 = call i32 @PTR_ERR(%struct.nft_table* %94)
  store i32 %95, i32* %22, align 4
  %96 = load i32, i32* %22, align 4
  %97 = load i32, i32* @ENOENT, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp ne i32 %96, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %92
  %101 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %102 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %103 = load i64, i64* @NFTA_OBJ_NAME, align 8
  %104 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %102, i64 %103
  %105 = load %struct.nlattr*, %struct.nlattr** %104, align 8
  %106 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %101, %struct.nlattr* %105)
  %107 = load i32, i32* %22, align 4
  store i32 %107, i32* %7, align 4
  br label %282

108:                                              ; preds = %92
  br label %156

109:                                              ; preds = %71
  %110 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %111 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @NLM_F_EXCL, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %109
  %117 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %118 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %119 = load i64, i64* @NFTA_OBJ_NAME, align 8
  %120 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %118, i64 %119
  %121 = load %struct.nlattr*, %struct.nlattr** %120, align 8
  %122 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %117, %struct.nlattr* %121)
  %123 = load i32, i32* @EEXIST, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %7, align 4
  br label %282

125:                                              ; preds = %109
  %126 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %127 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @NLM_F_REPLACE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = load i32, i32* @EOPNOTSUPP, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %7, align 4
  br label %282

135:                                              ; preds = %125
  %136 = load %struct.net*, %struct.net** %8, align 8
  %137 = load i32, i32* %21, align 4
  %138 = call %struct.nft_table* @nft_obj_type_get(%struct.net* %136, i32 %137)
  %139 = bitcast %struct.nft_table* %138 to %struct.nft_object_type*
  store %struct.nft_object_type* %139, %struct.nft_object_type** %15, align 8
  %140 = load %struct.net*, %struct.net** %8, align 8
  %141 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %142 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %143 = load i32, i32* %17, align 4
  %144 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %145 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %146 = call i32 @nft_ctx_init(%struct.nft_ctx* %20, %struct.net* %140, %struct.sk_buff* %141, %struct.nlmsghdr* %142, i32 %143, %struct.nft_table* %144, i32* null, %struct.nlattr** %145)
  %147 = load %struct.nft_object_type*, %struct.nft_object_type** %15, align 8
  %148 = bitcast %struct.nft_object_type* %147 to %struct.nft_table*
  %149 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %150 = load i64, i64* @NFTA_OBJ_DATA, align 8
  %151 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %149, i64 %150
  %152 = load %struct.nlattr*, %struct.nlattr** %151, align 8
  %153 = load %struct.nft_object*, %struct.nft_object** %19, align 8
  %154 = bitcast %struct.nft_object* %153 to %struct.nft_table*
  %155 = call i32 @nf_tables_updobj(%struct.nft_ctx* %20, %struct.nft_table* %148, %struct.nlattr* %152, %struct.nft_table* %154)
  store i32 %155, i32* %7, align 4
  br label %282

156:                                              ; preds = %108
  %157 = load %struct.net*, %struct.net** %8, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %159 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %160 = load i32, i32* %17, align 4
  %161 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %162 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %163 = call i32 @nft_ctx_init(%struct.nft_ctx* %20, %struct.net* %157, %struct.sk_buff* %158, %struct.nlmsghdr* %159, i32 %160, %struct.nft_table* %161, i32* null, %struct.nlattr** %162)
  %164 = load %struct.net*, %struct.net** %8, align 8
  %165 = load i32, i32* %21, align 4
  %166 = call %struct.nft_table* @nft_obj_type_get(%struct.net* %164, i32 %165)
  %167 = bitcast %struct.nft_table* %166 to %struct.nft_object_type*
  store %struct.nft_object_type* %167, %struct.nft_object_type** %15, align 8
  %168 = load %struct.nft_object_type*, %struct.nft_object_type** %15, align 8
  %169 = bitcast %struct.nft_object_type* %168 to %struct.nft_table*
  %170 = call i64 @IS_ERR(%struct.nft_table* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %156
  %173 = load %struct.nft_object_type*, %struct.nft_object_type** %15, align 8
  %174 = bitcast %struct.nft_object_type* %173 to %struct.nft_table*
  %175 = call i32 @PTR_ERR(%struct.nft_table* %174)
  store i32 %175, i32* %7, align 4
  br label %282

176:                                              ; preds = %156
  %177 = load %struct.nft_object_type*, %struct.nft_object_type** %15, align 8
  %178 = bitcast %struct.nft_object_type* %177 to %struct.nft_table*
  %179 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %180 = load i64, i64* @NFTA_OBJ_DATA, align 8
  %181 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %179, i64 %180
  %182 = load %struct.nlattr*, %struct.nlattr** %181, align 8
  %183 = call %struct.nft_table* @nft_obj_init(%struct.nft_ctx* %20, %struct.nft_table* %178, %struct.nlattr* %182)
  %184 = bitcast %struct.nft_table* %183 to %struct.nft_object*
  store %struct.nft_object* %184, %struct.nft_object** %19, align 8
  %185 = load %struct.nft_object*, %struct.nft_object** %19, align 8
  %186 = bitcast %struct.nft_object* %185 to %struct.nft_table*
  %187 = call i64 @IS_ERR(%struct.nft_table* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %176
  %190 = load %struct.nft_object*, %struct.nft_object** %19, align 8
  %191 = bitcast %struct.nft_object* %190 to %struct.nft_table*
  %192 = call i32 @PTR_ERR(%struct.nft_table* %191)
  store i32 %192, i32* %22, align 4
  br label %276

193:                                              ; preds = %176
  %194 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %195 = load %struct.nft_object*, %struct.nft_object** %19, align 8
  %196 = getelementptr inbounds %struct.nft_object, %struct.nft_object* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 1
  store %struct.nft_table* %194, %struct.nft_table** %197, align 8
  %198 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %199 = call i32 @nf_tables_alloc_handle(%struct.nft_table* %198)
  %200 = load %struct.nft_object*, %struct.nft_object** %19, align 8
  %201 = getelementptr inbounds %struct.nft_object, %struct.nft_object* %200, i32 0, i32 7
  store i32 %199, i32* %201, align 8
  %202 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %203 = load i64, i64* @NFTA_OBJ_NAME, align 8
  %204 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %202, i64 %203
  %205 = load %struct.nlattr*, %struct.nlattr** %204, align 8
  %206 = load i32, i32* @GFP_KERNEL, align 4
  %207 = call %struct.nft_table* @nla_strdup(%struct.nlattr* %205, i32 %206)
  %208 = load %struct.nft_object*, %struct.nft_object** %19, align 8
  %209 = getelementptr inbounds %struct.nft_object, %struct.nft_object* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  store %struct.nft_table* %207, %struct.nft_table** %210, align 8
  %211 = load %struct.nft_object*, %struct.nft_object** %19, align 8
  %212 = getelementptr inbounds %struct.nft_object, %struct.nft_object* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 0
  %214 = load %struct.nft_table*, %struct.nft_table** %213, align 8
  %215 = icmp ne %struct.nft_table* %214, null
  br i1 %215, label %219, label %216

216:                                              ; preds = %193
  %217 = load i32, i32* @ENOMEM, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %22, align 4
  br label %256

219:                                              ; preds = %193
  %220 = load i32, i32* @NFT_MSG_NEWOBJ, align 4
  %221 = load %struct.nft_object*, %struct.nft_object** %19, align 8
  %222 = bitcast %struct.nft_object* %221 to %struct.nft_table*
  %223 = call i32 @nft_trans_obj_add(%struct.nft_ctx* %20, i32 %220, %struct.nft_table* %222)
  store i32 %223, i32* %22, align 4
  %224 = load i32, i32* %22, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %219
  br label %250

227:                                              ; preds = %219
  %228 = load %struct.nft_object*, %struct.nft_object** %19, align 8
  %229 = getelementptr inbounds %struct.nft_object, %struct.nft_object* %228, i32 0, i32 6
  %230 = load i32, i32* @nft_objname_ht_params, align 4
  %231 = call i32 @rhltable_insert(i32* @nft_objname_ht, i32* %229, i32 %230)
  store i32 %231, i32* %22, align 4
  %232 = load i32, i32* %22, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %227
  br label %245

235:                                              ; preds = %227
  %236 = load %struct.nft_object*, %struct.nft_object** %19, align 8
  %237 = getelementptr inbounds %struct.nft_object, %struct.nft_object* %236, i32 0, i32 3
  %238 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %239 = getelementptr inbounds %struct.nft_table, %struct.nft_table* %238, i32 0, i32 5
  %240 = call i32 @list_add_tail_rcu(i32* %237, i32* %239)
  %241 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %242 = getelementptr inbounds %struct.nft_table, %struct.nft_table* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %242, align 4
  store i32 0, i32* %7, align 4
  br label %282

245:                                              ; preds = %234
  %246 = load %struct.nft_object*, %struct.nft_object** %19, align 8
  %247 = getelementptr inbounds %struct.nft_object, %struct.nft_object* %246, i32 0, i32 3
  %248 = call i32 @INIT_LIST_HEAD(i32* %247)
  %249 = load i32, i32* %22, align 4
  store i32 %249, i32* %7, align 4
  br label %282

250:                                              ; preds = %226
  %251 = load %struct.nft_object*, %struct.nft_object** %19, align 8
  %252 = getelementptr inbounds %struct.nft_object, %struct.nft_object* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 0
  %254 = load %struct.nft_table*, %struct.nft_table** %253, align 8
  %255 = call i32 @kfree(%struct.nft_table* %254)
  br label %256

256:                                              ; preds = %250, %216
  %257 = load %struct.nft_object*, %struct.nft_object** %19, align 8
  %258 = getelementptr inbounds %struct.nft_object, %struct.nft_object* %257, i32 0, i32 1
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 0
  %261 = load i32 (%struct.nft_ctx*, %struct.nft_table*)*, i32 (%struct.nft_ctx*, %struct.nft_table*)** %260, align 8
  %262 = icmp ne i32 (%struct.nft_ctx*, %struct.nft_table*)* %261, null
  br i1 %262, label %263, label %272

263:                                              ; preds = %256
  %264 = load %struct.nft_object*, %struct.nft_object** %19, align 8
  %265 = getelementptr inbounds %struct.nft_object, %struct.nft_object* %264, i32 0, i32 1
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 0
  %268 = load i32 (%struct.nft_ctx*, %struct.nft_table*)*, i32 (%struct.nft_ctx*, %struct.nft_table*)** %267, align 8
  %269 = load %struct.nft_object*, %struct.nft_object** %19, align 8
  %270 = bitcast %struct.nft_object* %269 to %struct.nft_table*
  %271 = call i32 %268(%struct.nft_ctx* %20, %struct.nft_table* %270)
  br label %272

272:                                              ; preds = %263, %256
  %273 = load %struct.nft_object*, %struct.nft_object** %19, align 8
  %274 = bitcast %struct.nft_object* %273 to %struct.nft_table*
  %275 = call i32 @kfree(%struct.nft_table* %274)
  br label %276

276:                                              ; preds = %272, %189
  %277 = load %struct.nft_object_type*, %struct.nft_object_type** %15, align 8
  %278 = getelementptr inbounds %struct.nft_object_type, %struct.nft_object_type* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @module_put(i32 %279)
  %281 = load i32, i32* %22, align 4
  store i32 %281, i32* %7, align 4
  br label %282

282:                                              ; preds = %276, %245, %235, %172, %135, %132, %116, %100, %62, %47
  %283 = load i32, i32* %7, align 4
  ret i32 %283
}

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nft_genmask_next(%struct.net*) #1

declare dso_local %struct.nft_table* @nft_table_lookup(%struct.net*, %struct.nlattr*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nft_table*) #1

declare dso_local i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack*, %struct.nlattr*) #1

declare dso_local i32 @PTR_ERR(%struct.nft_table*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local %struct.nft_table* @nft_obj_lookup(%struct.net*, %struct.nft_table*, %struct.nlattr*, i32, i32) #1

declare dso_local %struct.nft_table* @nft_obj_type_get(%struct.net*, i32) #1

declare dso_local i32 @nft_ctx_init(%struct.nft_ctx*, %struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, i32, %struct.nft_table*, i32*, %struct.nlattr**) #1

declare dso_local i32 @nf_tables_updobj(%struct.nft_ctx*, %struct.nft_table*, %struct.nlattr*, %struct.nft_table*) #1

declare dso_local %struct.nft_table* @nft_obj_init(%struct.nft_ctx*, %struct.nft_table*, %struct.nlattr*) #1

declare dso_local i32 @nf_tables_alloc_handle(%struct.nft_table*) #1

declare dso_local %struct.nft_table* @nla_strdup(%struct.nlattr*, i32) #1

declare dso_local i32 @nft_trans_obj_add(%struct.nft_ctx*, i32, %struct.nft_table*) #1

declare dso_local i32 @rhltable_insert(i32*, i32*, i32) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kfree(%struct.nft_table*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
