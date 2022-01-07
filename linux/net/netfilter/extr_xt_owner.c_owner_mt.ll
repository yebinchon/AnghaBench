; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_owner.c_owner_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_owner.c_owner_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_owner_match_info* }
%struct.xt_owner_match_info = type { i32, i32, i32, i32, i32, i32 }
%struct.file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.group_info*, i32 }
%struct.group_info = type { i32, i32* }
%struct.sock = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.file* }
%struct.net = type { i32 }

@XT_OWNER_SOCKET = common dso_local global i32 0, align 4
@XT_OWNER_UID = common dso_local global i32 0, align 4
@XT_OWNER_GID = common dso_local global i32 0, align 4
@XT_OWNER_SUPPL_GROUPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @owner_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owner_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.xt_owner_match_info*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.group_info*, align 8
  %17 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %18 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %19 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %18, i32 0, i32 0
  %20 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %19, align 8
  store %struct.xt_owner_match_info* %20, %struct.xt_owner_match_info** %6, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call %struct.sock* @skb_to_full_sk(%struct.sk_buff* %21)
  store %struct.sock* %22, %struct.sock** %8, align 8
  %23 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %24 = call %struct.net* @xt_net(%struct.xt_action_param* %23)
  store %struct.net* %24, %struct.net** %9, align 8
  %25 = load %struct.sock*, %struct.sock** %8, align 8
  %26 = icmp ne %struct.sock* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %2
  %28 = load %struct.sock*, %struct.sock** %8, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = icmp ne %struct.TYPE_3__* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.net*, %struct.net** %9, align 8
  %34 = load %struct.sock*, %struct.sock** %8, align 8
  %35 = call i32 @sock_net(%struct.sock* %34)
  %36 = call i32 @net_eq(%struct.net* %33, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %32, %27, %2
  %39 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %40 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %43 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = xor i32 %41, %44
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %3, align 4
  br label %240

48:                                               ; preds = %32
  %49 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %50 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %53 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %51, %54
  %56 = load i32, i32* @XT_OWNER_SOCKET, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %240

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.sock*, %struct.sock** %8, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load %struct.file*, %struct.file** %65, align 8
  store %struct.file* %66, %struct.file** %7, align 8
  %67 = load %struct.file*, %struct.file** %7, align 8
  %68 = icmp eq %struct.file* %67, null
  br i1 %68, label %69, label %83

69:                                               ; preds = %61
  %70 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %71 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %74 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = xor i32 %72, %75
  %77 = load i32, i32* @XT_OWNER_UID, align 4
  %78 = load i32, i32* @XT_OWNER_GID, align 4
  %79 = or i32 %77, %78
  %80 = and i32 %76, %79
  %81 = icmp eq i32 %80, 0
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %3, align 4
  br label %240

83:                                               ; preds = %61
  %84 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %85 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @XT_OWNER_UID, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %137

90:                                               ; preds = %83
  %91 = load %struct.net*, %struct.net** %9, align 8
  %92 = getelementptr inbounds %struct.net, %struct.net* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %95 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @make_kuid(i32 %93, i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = load %struct.net*, %struct.net** %9, align 8
  %99 = getelementptr inbounds %struct.net, %struct.net* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %102 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @make_kuid(i32 %100, i32 %103)
  store i32 %104, i32* %11, align 4
  %105 = load %struct.file*, %struct.file** %7, align 8
  %106 = getelementptr inbounds %struct.file, %struct.file* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i64 @uid_gte(i32 %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %90
  %114 = load %struct.file*, %struct.file** %7, align 8
  %115 = getelementptr inbounds %struct.file, %struct.file* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = call i64 @uid_lte(i32 %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br label %122

122:                                              ; preds = %113, %90
  %123 = phi i1 [ false, %90 ], [ %121, %113 ]
  %124 = zext i1 %123 to i32
  %125 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %126 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @XT_OWNER_UID, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = xor i32 %124, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %122
  store i32 0, i32* %3, align 4
  br label %240

136:                                              ; preds = %122
  br label %137

137:                                              ; preds = %136, %83
  %138 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %139 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @XT_OWNER_GID, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %239

144:                                              ; preds = %137
  store i32 0, i32* %13, align 4
  %145 = load %struct.net*, %struct.net** %9, align 8
  %146 = getelementptr inbounds %struct.net, %struct.net* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %149 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @make_kgid(i32 %147, i32 %150)
  store i32 %151, i32* %14, align 4
  %152 = load %struct.net*, %struct.net** %9, align 8
  %153 = getelementptr inbounds %struct.net, %struct.net* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %156 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @make_kgid(i32 %154, i32 %157)
  store i32 %158, i32* %15, align 4
  %159 = load %struct.file*, %struct.file** %7, align 8
  %160 = getelementptr inbounds %struct.file, %struct.file* %159, i32 0, i32 0
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load %struct.group_info*, %struct.group_info** %162, align 8
  store %struct.group_info* %163, %struct.group_info** %16, align 8
  %164 = load %struct.file*, %struct.file** %7, align 8
  %165 = getelementptr inbounds %struct.file, %struct.file* %164, i32 0, i32 0
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %14, align 4
  %170 = call i64 @gid_gte(i32 %168, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %144
  %173 = load %struct.file*, %struct.file** %7, align 8
  %174 = getelementptr inbounds %struct.file, %struct.file* %173, i32 0, i32 0
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %15, align 4
  %179 = call i64 @gid_lte(i32 %177, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %172
  store i32 1, i32* %13, align 4
  br label %182

182:                                              ; preds = %181, %172, %144
  %183 = load i32, i32* %13, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %225, label %185

185:                                              ; preds = %182
  %186 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %187 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @XT_OWNER_SUPPL_GROUPS, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %225

192:                                              ; preds = %185
  %193 = load %struct.group_info*, %struct.group_info** %16, align 8
  %194 = icmp ne %struct.group_info* %193, null
  br i1 %194, label %195, label %225

195:                                              ; preds = %192
  store i32 0, i32* %12, align 4
  br label %196

196:                                              ; preds = %221, %195
  %197 = load i32, i32* %12, align 4
  %198 = load %struct.group_info*, %struct.group_info** %16, align 8
  %199 = getelementptr inbounds %struct.group_info, %struct.group_info* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp ult i32 %197, %200
  br i1 %201, label %202, label %224

202:                                              ; preds = %196
  %203 = load %struct.group_info*, %struct.group_info** %16, align 8
  %204 = getelementptr inbounds %struct.group_info, %struct.group_info* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %12, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %17, align 4
  %210 = load i32, i32* %17, align 4
  %211 = load i32, i32* %14, align 4
  %212 = call i64 @gid_gte(i32 %210, i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %202
  %215 = load i32, i32* %17, align 4
  %216 = load i32, i32* %15, align 4
  %217 = call i64 @gid_lte(i32 %215, i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %214
  store i32 1, i32* %13, align 4
  br label %224

220:                                              ; preds = %214, %202
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %12, align 4
  %223 = add i32 %222, 1
  store i32 %223, i32* %12, align 4
  br label %196

224:                                              ; preds = %219, %196
  br label %225

225:                                              ; preds = %224, %192, %185, %182
  %226 = load i32, i32* %13, align 4
  %227 = load %struct.xt_owner_match_info*, %struct.xt_owner_match_info** %6, align 8
  %228 = getelementptr inbounds %struct.xt_owner_match_info, %struct.xt_owner_match_info* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @XT_OWNER_GID, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  %233 = xor i1 %232, true
  %234 = zext i1 %233 to i32
  %235 = xor i32 %226, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %225
  store i32 0, i32* %3, align 4
  br label %240

238:                                              ; preds = %225
  br label %239

239:                                              ; preds = %238, %137
  store i32 1, i32* %3, align 4
  br label %240

240:                                              ; preds = %239, %237, %135, %69, %59, %38
  %241 = load i32, i32* %3, align 4
  ret i32 %241
}

declare dso_local %struct.sock* @skb_to_full_sk(%struct.sk_buff*) #1

declare dso_local %struct.net* @xt_net(%struct.xt_action_param*) #1

declare dso_local i32 @net_eq(%struct.net*, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @make_kuid(i32, i32) #1

declare dso_local i64 @uid_gte(i32, i32) #1

declare dso_local i64 @uid_lte(i32, i32) #1

declare dso_local i32 @make_kgid(i32, i32) #1

declare dso_local i64 @gid_gte(i32, i32) #1

declare dso_local i64 @gid_lte(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
