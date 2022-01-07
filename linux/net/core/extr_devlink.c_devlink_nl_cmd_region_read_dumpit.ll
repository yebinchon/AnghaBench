; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_region_read_dumpit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_region_read_dumpit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_6__*, %struct.TYPE_9__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.devlink_region = type { i32 }
%struct.nlattr = type { i32 }
%struct.devlink = type { i32 }
%struct.TYPE_8__ = type { i32 }

@DEVLINK_ATTR_MAX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GENL_HDRLEN = common dso_local global i64 0, align 8
@devlink_nl_family = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@devlink_mutex = common dso_local global i32 0, align 4
@DEVLINK_ATTR_REGION_NAME = common dso_local global i64 0, align 8
@DEVLINK_ATTR_REGION_SNAPSHOT_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NLM_F_ACK = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@DEVLINK_CMD_REGION_READ = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@DEVLINK_ATTR_REGION_CHUNKS = common dso_local global i32 0, align 4
@DEVLINK_ATTR_REGION_CHUNK_ADDR = common dso_local global i64 0, align 8
@DEVLINK_ATTR_REGION_CHUNK_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @devlink_nl_cmd_region_read_dumpit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_cmd_region_read_dumpit(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.devlink_region*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.devlink*, align 8
  %13 = alloca %struct.nlattr**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_8__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  store i64 0, i64* %8, align 8
  store i32 1, i32* %14, align 4
  %18 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %19 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = bitcast i32* %21 to i64*
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* @DEVLINK_ATTR_MAX, align 8
  %25 = add nsw i64 %24, 1
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.nlattr** @kmalloc_array(i64 %25, i32 8, i32 %26)
  store %struct.nlattr** %27, %struct.nlattr*** %13, align 8
  %28 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %29 = icmp ne %struct.nlattr** %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %240

33:                                               ; preds = %2
  %34 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %35 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load i64, i64* @GENL_HDRLEN, align 8
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @devlink_nl_family, i32 0, i32 1), align 8
  %39 = add nsw i64 %37, %38
  %40 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %41 = load i64, i64* @DEVLINK_ATTR_MAX, align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @devlink_nl_family, i32 0, i32 0), align 8
  %43 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %44 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @nlmsg_parse_deprecated(%struct.TYPE_6__* %36, i64 %39, %struct.nlattr** %40, i64 %41, i32 %42, i32 %45)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %33
  br label %236

50:                                               ; preds = %33
  %51 = call i32 @mutex_lock(i32* @devlink_mutex)
  %52 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %53 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %52, i32 0, i32 2
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @sock_net(i32 %56)
  %58 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %59 = call %struct.devlink* @devlink_get_from_attrs(i32 %57, %struct.nlattr** %58)
  store %struct.devlink* %59, %struct.devlink** %12, align 8
  %60 = load %struct.devlink*, %struct.devlink** %12, align 8
  %61 = call i64 @IS_ERR(%struct.devlink* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %50
  %64 = load %struct.devlink*, %struct.devlink** %12, align 8
  %65 = call i32 @PTR_ERR(%struct.devlink* %64)
  store i32 %65, i32* %16, align 4
  br label %234

66:                                               ; preds = %50
  %67 = load %struct.devlink*, %struct.devlink** %12, align 8
  %68 = getelementptr inbounds %struct.devlink, %struct.devlink* %67, i32 0, i32 0
  %69 = call i32 @mutex_lock(i32* %68)
  %70 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %71 = load i64, i64* @DEVLINK_ATTR_REGION_NAME, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %70, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = icmp ne %struct.nlattr* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %66
  %76 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %77 = load i64, i64* @DEVLINK_ATTR_REGION_SNAPSHOT_ID, align 8
  %78 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %76, i64 %77
  %79 = load %struct.nlattr*, %struct.nlattr** %78, align 8
  %80 = icmp ne %struct.nlattr* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %75, %66
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %16, align 4
  br label %230

84:                                               ; preds = %75
  %85 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %86 = load i64, i64* @DEVLINK_ATTR_REGION_NAME, align 8
  %87 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %85, i64 %86
  %88 = load %struct.nlattr*, %struct.nlattr** %87, align 8
  %89 = call i8* @nla_data(%struct.nlattr* %88)
  store i8* %89, i8** %11, align 8
  %90 = load %struct.devlink*, %struct.devlink** %12, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = call %struct.devlink_region* @devlink_region_get_by_name(%struct.devlink* %90, i8* %91)
  store %struct.devlink_region* %92, %struct.devlink_region** %9, align 8
  %93 = load %struct.devlink_region*, %struct.devlink_region** %9, align 8
  %94 = icmp ne %struct.devlink_region* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %84
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %16, align 4
  br label %230

98:                                               ; preds = %84
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %100 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %101 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %100, i32 0, i32 2
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = call i32 @NETLINK_CB(%struct.TYPE_9__* %102)
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i32 %103, i32* %104, align 4
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %108 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %107, i32 0, i32 1
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @NLM_F_ACK, align 4
  %113 = load i32, i32* @NLM_F_MULTI, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @DEVLINK_CMD_REGION_READ, align 4
  %116 = call i8* @genlmsg_put(%struct.sk_buff* %99, i32 %106, i32 %111, %struct.TYPE_7__* @devlink_nl_family, i32 %114, i32 %115)
  store i8* %116, i8** %15, align 8
  %117 = load i8*, i8** %15, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %98
  %120 = load i32, i32* @EMSGSIZE, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %16, align 4
  br label %230

122:                                              ; preds = %98
  %123 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %124 = load %struct.devlink*, %struct.devlink** %12, align 8
  %125 = call i32 @devlink_nl_put_handle(%struct.sk_buff* %123, %struct.devlink* %124)
  store i32 %125, i32* %16, align 4
  %126 = load i32, i32* %16, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %226

129:                                              ; preds = %122
  %130 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %131 = load i64, i64* @DEVLINK_ATTR_REGION_NAME, align 8
  %132 = load i8*, i8** %11, align 8
  %133 = call i32 @nla_put_string(%struct.sk_buff* %130, i64 %131, i8* %132)
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* %16, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %226

137:                                              ; preds = %129
  %138 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %139 = load i32, i32* @DEVLINK_ATTR_REGION_CHUNKS, align 4
  %140 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %138, i32 %139)
  store %struct.nlattr* %140, %struct.nlattr** %10, align 8
  %141 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %142 = icmp ne %struct.nlattr* %141, null
  br i1 %142, label %146, label %143

143:                                              ; preds = %137
  %144 = load i32, i32* @EMSGSIZE, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %16, align 4
  br label %226

146:                                              ; preds = %137
  %147 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %148 = load i64, i64* @DEVLINK_ATTR_REGION_CHUNK_ADDR, align 8
  %149 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %147, i64 %148
  %150 = load %struct.nlattr*, %struct.nlattr** %149, align 8
  %151 = icmp ne %struct.nlattr* %150, null
  br i1 %151, label %152, label %180

152:                                              ; preds = %146
  %153 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %154 = load i64, i64* @DEVLINK_ATTR_REGION_CHUNK_LEN, align 8
  %155 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %153, i64 %154
  %156 = load %struct.nlattr*, %struct.nlattr** %155, align 8
  %157 = icmp ne %struct.nlattr* %156, null
  br i1 %157, label %158, label %180

158:                                              ; preds = %152
  %159 = load i64, i64* %7, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %158
  %162 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %163 = load i64, i64* @DEVLINK_ATTR_REGION_CHUNK_ADDR, align 8
  %164 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %162, i64 %163
  %165 = load %struct.nlattr*, %struct.nlattr** %164, align 8
  %166 = call i64 @nla_get_u64(%struct.nlattr* %165)
  store i64 %166, i64* %7, align 8
  br label %167

167:                                              ; preds = %161, %158
  %168 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %169 = load i64, i64* @DEVLINK_ATTR_REGION_CHUNK_ADDR, align 8
  %170 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %168, i64 %169
  %171 = load %struct.nlattr*, %struct.nlattr** %170, align 8
  %172 = call i64 @nla_get_u64(%struct.nlattr* %171)
  store i64 %172, i64* %8, align 8
  %173 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %174 = load i64, i64* @DEVLINK_ATTR_REGION_CHUNK_LEN, align 8
  %175 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %173, i64 %174
  %176 = load %struct.nlattr*, %struct.nlattr** %175, align 8
  %177 = call i64 @nla_get_u64(%struct.nlattr* %176)
  %178 = load i64, i64* %8, align 8
  %179 = add nsw i64 %178, %177
  store i64 %179, i64* %8, align 8
  store i32 0, i32* %14, align 4
  br label %180

180:                                              ; preds = %167, %152, %146
  %181 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %182 = load %struct.devlink*, %struct.devlink** %12, align 8
  %183 = load %struct.devlink_region*, %struct.devlink_region** %9, align 8
  %184 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %185 = load i64, i64* %7, align 8
  %186 = load i64, i64* %8, align 8
  %187 = load i32, i32* %14, align 4
  %188 = call i32 @devlink_nl_region_read_snapshot_fill(%struct.sk_buff* %181, %struct.devlink* %182, %struct.devlink_region* %183, %struct.nlattr** %184, i64 %185, i64 %186, i32 %187, i64* %6)
  store i32 %188, i32* %16, align 4
  %189 = load i32, i32* %16, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %180
  %192 = load i32, i32* %16, align 4
  %193 = load i32, i32* @EMSGSIZE, align 4
  %194 = sub nsw i32 0, %193
  %195 = icmp ne i32 %192, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %191
  br label %226

197:                                              ; preds = %191, %180
  %198 = load i64, i64* %6, align 8
  %199 = load i64, i64* %7, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %197
  %202 = load i32, i32* @EINVAL, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %16, align 4
  br label %226

204:                                              ; preds = %197
  %205 = load i64, i64* %6, align 8
  %206 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %207 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = bitcast i32* %209 to i64*
  store i64 %205, i64* %210, align 8
  %211 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %212 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %213 = call i32 @nla_nest_end(%struct.sk_buff* %211, %struct.nlattr* %212)
  %214 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %215 = load i8*, i8** %15, align 8
  %216 = call i32 @genlmsg_end(%struct.sk_buff* %214, i8* %215)
  %217 = load %struct.devlink*, %struct.devlink** %12, align 8
  %218 = getelementptr inbounds %struct.devlink, %struct.devlink* %217, i32 0, i32 0
  %219 = call i32 @mutex_unlock(i32* %218)
  %220 = call i32 @mutex_unlock(i32* @devlink_mutex)
  %221 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %222 = call i32 @kfree(%struct.nlattr** %221)
  %223 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %224 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %3, align 4
  br label %240

226:                                              ; preds = %201, %196, %143, %136, %128
  %227 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %228 = load i8*, i8** %15, align 8
  %229 = call i32 @genlmsg_cancel(%struct.sk_buff* %227, i8* %228)
  br label %230

230:                                              ; preds = %226, %119, %95, %81
  %231 = load %struct.devlink*, %struct.devlink** %12, align 8
  %232 = getelementptr inbounds %struct.devlink, %struct.devlink* %231, i32 0, i32 0
  %233 = call i32 @mutex_unlock(i32* %232)
  br label %234

234:                                              ; preds = %230, %63
  %235 = call i32 @mutex_unlock(i32* @devlink_mutex)
  br label %236

236:                                              ; preds = %234, %49
  %237 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %238 = call i32 @kfree(%struct.nlattr** %237)
  %239 = load i32, i32* %16, align 4
  store i32 %239, i32* %3, align 4
  br label %240

240:                                              ; preds = %236, %204, %30
  %241 = load i32, i32* %3, align 4
  ret i32 %241
}

declare dso_local %struct.nlattr** @kmalloc_array(i64, i32, i32) #1

declare dso_local i32 @nlmsg_parse_deprecated(%struct.TYPE_6__*, i64, %struct.nlattr**, i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.devlink* @devlink_get_from_attrs(i32, %struct.nlattr**) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i64 @IS_ERR(%struct.devlink*) #1

declare dso_local i32 @PTR_ERR(%struct.devlink*) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local %struct.devlink_region* @devlink_region_get_by_name(%struct.devlink*, i8*) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.TYPE_9__*) #1

declare dso_local i32 @devlink_nl_put_handle(%struct.sk_buff*, %struct.devlink*) #1

declare dso_local i32 @nla_put_string(%struct.sk_buff*, i64, i8*) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_get_u64(%struct.nlattr*) #1

declare dso_local i32 @devlink_nl_region_read_snapshot_fill(%struct.sk_buff*, %struct.devlink*, %struct.devlink_region*, %struct.nlattr**, i64, i64, i32, i64*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.nlattr**) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
