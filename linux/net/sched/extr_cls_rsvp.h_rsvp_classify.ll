; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_rsvp.h_rsvp_classify.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_rsvp.h_rsvp_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.tcf_result = type { i64 }
%struct.rsvp_head = type { i32* }
%struct.rsvp_session = type { i64*, i64, i64, i32*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.rsvp_filter = type { i64*, i64, %struct.tcf_result, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.iphdr = type { i64, i64, i64, i64, i32 }

@RSVP_DST_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*)* @rsvp_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsvp_classify(%struct.sk_buff* %0, %struct.tcf_proto* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca %struct.tcf_result*, align 8
  %8 = alloca %struct.rsvp_head*, align 8
  %9 = alloca %struct.rsvp_session*, align 8
  %10 = alloca %struct.rsvp_filter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca %struct.iphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %6, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %7, align 8
  %19 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %20 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @rcu_dereference_bh(i32 %21)
  %23 = bitcast i8* %22 to %struct.rsvp_head*
  store %struct.rsvp_head* %23, %struct.rsvp_head** %8, align 8
  store i64 0, i64* %16, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i32 @pskb_network_may_pull(%struct.sk_buff* %24, i32 40)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %235

28:                                               ; preds = %3
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %29)
  store %struct.iphdr* %30, %struct.iphdr** %18, align 8
  br label %31

31:                                               ; preds = %182, %28
  %32 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %33 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %32, i32 0, i32 0
  store i64* %33, i64** %14, align 8
  %34 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %35 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %34, i32 0, i32 1
  store i64* %35, i64** %13, align 8
  %36 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %37 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %15, align 8
  %39 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %40 = bitcast %struct.iphdr* %39 to i64*
  %41 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %42 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = shl i32 %43, 2
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %40, i64 %45
  store i64* %46, i64** %17, align 8
  %47 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %48 = call i64 @ip_is_fragment(%struct.iphdr* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %31
  store i32 -1, i32* %4, align 4
  br label %235

51:                                               ; preds = %31
  %52 = load i64*, i64** %13, align 8
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* %16, align 8
  %55 = call i32 @hash_dst(i64* %52, i64 %53, i64 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i64*, i64** %14, align 8
  %57 = call i32 @hash_src(i64* %56)
  store i32 %57, i32* %12, align 4
  %58 = load %struct.rsvp_head*, %struct.rsvp_head** %8, align 8
  %59 = getelementptr inbounds %struct.rsvp_head, %struct.rsvp_head* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @rcu_dereference_bh(i32 %64)
  %66 = bitcast i8* %65 to %struct.rsvp_session*
  store %struct.rsvp_session* %66, %struct.rsvp_session** %9, align 8
  br label %67

67:                                               ; preds = %228, %51
  %68 = load %struct.rsvp_session*, %struct.rsvp_session** %9, align 8
  %69 = icmp ne %struct.rsvp_session* %68, null
  br i1 %69, label %70, label %234

70:                                               ; preds = %67
  %71 = load i64*, i64** %13, align 8
  %72 = load i32, i32* @RSVP_DST_LEN, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %71, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.rsvp_session*, %struct.rsvp_session** %9, align 8
  %78 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* @RSVP_DST_LEN, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %79, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %76, %84
  br i1 %85, label %86, label %227

86:                                               ; preds = %70
  %87 = load i64, i64* %15, align 8
  %88 = load %struct.rsvp_session*, %struct.rsvp_session** %9, align 8
  %89 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %87, %90
  br i1 %91, label %92, label %227

92:                                               ; preds = %86
  %93 = load %struct.rsvp_session*, %struct.rsvp_session** %9, align 8
  %94 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i64*, i64** %17, align 8
  %98 = load %struct.rsvp_session*, %struct.rsvp_session** %9, align 8
  %99 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %97, i64 %102
  %104 = bitcast i64* %103 to i32*
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.rsvp_session*, %struct.rsvp_session** %9, align 8
  %107 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = xor i32 %105, %109
  %111 = and i32 %96, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %227, label %113

113:                                              ; preds = %92
  %114 = load i64, i64* %16, align 8
  %115 = load %struct.rsvp_session*, %struct.rsvp_session** %9, align 8
  %116 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %114, %117
  br i1 %118, label %119, label %227

119:                                              ; preds = %113
  %120 = load %struct.rsvp_session*, %struct.rsvp_session** %9, align 8
  %121 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @rcu_dereference_bh(i32 %126)
  %128 = bitcast i8* %127 to %struct.rsvp_filter*
  store %struct.rsvp_filter* %128, %struct.rsvp_filter** %10, align 8
  br label %129

129:                                              ; preds = %196, %119
  %130 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %131 = icmp ne %struct.rsvp_filter* %130, null
  br i1 %131, label %132, label %202

132:                                              ; preds = %129
  %133 = load i64*, i64** %14, align 8
  %134 = load i32, i32* @RSVP_DST_LEN, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %133, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %140 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %139, i32 0, i32 0
  %141 = load i64*, i64** %140, align 8
  %142 = load i32, i32* @RSVP_DST_LEN, align 4
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %141, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %138, %146
  br i1 %147, label %148, label %195

148:                                              ; preds = %132
  %149 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %150 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i64*, i64** %17, align 8
  %154 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %155 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %153, i64 %158
  %160 = bitcast i64* %159 to i32*
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %163 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = xor i32 %161, %165
  %167 = and i32 %152, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %195, label %169

169:                                              ; preds = %148
  %170 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %171 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %172 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %171, i32 0, i32 2
  %173 = bitcast %struct.tcf_result* %170 to i8*
  %174 = bitcast %struct.tcf_result* %172 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %173, i8* align 8 %174, i64 8, i1 false)
  %175 = call i32 (...) @RSVP_APPLY_RESULT()
  br label %176

176:                                              ; preds = %213, %169
  %177 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %178 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  store i32 0, i32* %4, align 4
  br label %235

182:                                              ; preds = %176
  %183 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %184 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.tcf_result, %struct.tcf_result* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %16, align 8
  %187 = load i64*, i64** %17, align 8
  %188 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %189 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds i64, i64* %187, i64 %190
  %192 = getelementptr inbounds i64, i64* %191, i64 -40
  %193 = bitcast i64* %192 to i8*
  %194 = bitcast i8* %193 to %struct.iphdr*
  store %struct.iphdr* %194, %struct.iphdr** %18, align 8
  br label %31

195:                                              ; preds = %148, %132
  br label %196

196:                                              ; preds = %195
  %197 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %198 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = call i8* @rcu_dereference_bh(i32 %199)
  %201 = bitcast i8* %200 to %struct.rsvp_filter*
  store %struct.rsvp_filter* %201, %struct.rsvp_filter** %10, align 8
  br label %129

202:                                              ; preds = %129
  %203 = load %struct.rsvp_session*, %struct.rsvp_session** %9, align 8
  %204 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %203, i32 0, i32 3
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 16
  %207 = load i32, i32* %206, align 4
  %208 = call i8* @rcu_dereference_bh(i32 %207)
  %209 = bitcast i8* %208 to %struct.rsvp_filter*
  store %struct.rsvp_filter* %209, %struct.rsvp_filter** %10, align 8
  br label %210

210:                                              ; preds = %220, %202
  %211 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %212 = icmp ne %struct.rsvp_filter* %211, null
  br i1 %212, label %213, label %226

213:                                              ; preds = %210
  %214 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %215 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %216 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %215, i32 0, i32 2
  %217 = bitcast %struct.tcf_result* %214 to i8*
  %218 = bitcast %struct.tcf_result* %216 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %217, i8* align 8 %218, i64 8, i1 false)
  %219 = call i32 (...) @RSVP_APPLY_RESULT()
  br label %176

220:                                              ; No predecessors!
  %221 = load %struct.rsvp_filter*, %struct.rsvp_filter** %10, align 8
  %222 = getelementptr inbounds %struct.rsvp_filter, %struct.rsvp_filter* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = call i8* @rcu_dereference_bh(i32 %223)
  %225 = bitcast i8* %224 to %struct.rsvp_filter*
  store %struct.rsvp_filter* %225, %struct.rsvp_filter** %10, align 8
  br label %210

226:                                              ; preds = %210
  store i32 -1, i32* %4, align 4
  br label %235

227:                                              ; preds = %113, %92, %86, %70
  br label %228

228:                                              ; preds = %227
  %229 = load %struct.rsvp_session*, %struct.rsvp_session** %9, align 8
  %230 = getelementptr inbounds %struct.rsvp_session, %struct.rsvp_session* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 4
  %232 = call i8* @rcu_dereference_bh(i32 %231)
  %233 = bitcast i8* %232 to %struct.rsvp_session*
  store %struct.rsvp_session* %233, %struct.rsvp_session** %9, align 8
  br label %67

234:                                              ; preds = %67
  store i32 -1, i32* %4, align 4
  br label %235

235:                                              ; preds = %234, %226, %181, %50, %27
  %236 = load i32, i32* %4, align 4
  ret i32 %236
}

declare dso_local i8* @rcu_dereference_bh(i32) #1

declare dso_local i32 @pskb_network_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ip_is_fragment(%struct.iphdr*) #1

declare dso_local i32 @hash_dst(i64*, i64, i64) #1

declare dso_local i32 @hash_src(i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @RSVP_APPLY_RESULT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
