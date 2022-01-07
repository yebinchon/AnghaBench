; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_route.c_route4_classify.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_route.c_route4_classify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.route4_filter = type { i64, i32, i32, %struct.tcf_result }
%struct.tcf_result = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcf_proto = type { i32 }
%struct.route4_head = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, %struct.route4_filter* }
%struct.dst_entry = type { i64 }
%struct.route4_bucket = type { i32* }

@fastmap_lock = common dso_local global i32 0, align 4
@ROUTE4_FAILURE = common dso_local global %struct.route4_filter* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcf_proto*, %struct.tcf_result*)* @route4_classify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @route4_classify(%struct.sk_buff* %0, %struct.tcf_proto* %1, %struct.tcf_result* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcf_proto*, align 8
  %7 = alloca %struct.tcf_result*, align 8
  %8 = alloca %struct.route4_head*, align 8
  %9 = alloca %struct.dst_entry*, align 8
  %10 = alloca %struct.route4_bucket*, align 8
  %11 = alloca %struct.route4_filter*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tcf_proto* %1, %struct.tcf_proto** %6, align 8
  store %struct.tcf_result* %2, %struct.tcf_result** %7, align 8
  %16 = load %struct.tcf_proto*, %struct.tcf_proto** %6, align 8
  %17 = getelementptr inbounds %struct.tcf_proto, %struct.tcf_proto* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @rcu_dereference_bh(i32 %18)
  %20 = bitcast i8* %19 to %struct.route4_head*
  store %struct.route4_head* %20, %struct.route4_head** %8, align 8
  store i32 0, i32* %15, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %21)
  store %struct.dst_entry* %22, %struct.dst_entry** %9, align 8
  %23 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %24 = icmp ne %struct.dst_entry* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  br label %185

26:                                               ; preds = %3
  %27 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %28 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %12, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call i32 @inet_iif(%struct.sk_buff* %30)
  store i32 %31, i32* %14, align 4
  %32 = load i64, i64* %12, align 8
  %33 = load i32, i32* %14, align 4
  %34 = call i64 @route4_fastmap_hash(i64 %32, i32 %33)
  store i64 %34, i64* %13, align 8
  %35 = call i32 @spin_lock(i32* @fastmap_lock)
  %36 = load i64, i64* %12, align 8
  %37 = load %struct.route4_head*, %struct.route4_head** %8, align 8
  %38 = getelementptr inbounds %struct.route4_head, %struct.route4_head* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i64, i64* %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %36, %43
  br i1 %44, label %45, label %77

45:                                               ; preds = %26
  %46 = load i32, i32* %14, align 4
  %47 = load %struct.route4_head*, %struct.route4_head** %8, align 8
  %48 = getelementptr inbounds %struct.route4_head, %struct.route4_head* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i64, i64* %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %46, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %45
  %56 = load %struct.route4_head*, %struct.route4_head** %8, align 8
  %57 = getelementptr inbounds %struct.route4_head, %struct.route4_head* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i64, i64* %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load %struct.route4_filter*, %struct.route4_filter** %61, align 8
  store %struct.route4_filter* %62, %struct.route4_filter** %11, align 8
  %63 = icmp ne %struct.route4_filter* %62, null
  br i1 %63, label %64, label %77

64:                                               ; preds = %55
  %65 = load %struct.route4_filter*, %struct.route4_filter** %11, align 8
  %66 = load %struct.route4_filter*, %struct.route4_filter** @ROUTE4_FAILURE, align 8
  %67 = icmp eq %struct.route4_filter* %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32 @spin_unlock(i32* @fastmap_lock)
  br label %185

70:                                               ; preds = %64
  %71 = load %struct.tcf_result*, %struct.tcf_result** %7, align 8
  %72 = load %struct.route4_filter*, %struct.route4_filter** %11, align 8
  %73 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %72, i32 0, i32 3
  %74 = bitcast %struct.tcf_result* %71 to i8*
  %75 = bitcast %struct.tcf_result* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 8 %75, i64 4, i1 false)
  %76 = call i32 @spin_unlock(i32* @fastmap_lock)
  store i32 0, i32* %4, align 4
  br label %186

77:                                               ; preds = %55, %45, %26
  %78 = call i32 @spin_unlock(i32* @fastmap_lock)
  %79 = load i64, i64* %12, align 8
  %80 = call i64 @route4_hash_to(i64 %79)
  store i64 %80, i64* %13, align 8
  br label %81

81:                                               ; preds = %172, %77
  %82 = load %struct.route4_head*, %struct.route4_head** %8, align 8
  %83 = getelementptr inbounds %struct.route4_head, %struct.route4_head* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* %13, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @rcu_dereference_bh(i32 %87)
  %89 = bitcast i8* %88 to %struct.route4_bucket*
  store %struct.route4_bucket* %89, %struct.route4_bucket** %10, align 8
  %90 = load %struct.route4_bucket*, %struct.route4_bucket** %10, align 8
  %91 = icmp ne %struct.route4_bucket* %90, null
  br i1 %91, label %92, label %169

92:                                               ; preds = %81
  %93 = load %struct.route4_bucket*, %struct.route4_bucket** %10, align 8
  %94 = getelementptr inbounds %struct.route4_bucket, %struct.route4_bucket* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* %12, align 8
  %97 = call i64 @route4_hash_from(i64 %96)
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @rcu_dereference_bh(i32 %99)
  %101 = bitcast i8* %100 to %struct.route4_filter*
  store %struct.route4_filter* %101, %struct.route4_filter** %11, align 8
  br label %102

102:                                              ; preds = %114, %92
  %103 = load %struct.route4_filter*, %struct.route4_filter** %11, align 8
  %104 = icmp ne %struct.route4_filter* %103, null
  br i1 %104, label %105, label %120

105:                                              ; preds = %102
  %106 = load %struct.route4_filter*, %struct.route4_filter** %11, align 8
  %107 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %12, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = call i32 (...) @ROUTE4_APPLY_RESULT()
  br label %113

113:                                              ; preds = %111, %105
  br label %114

114:                                              ; preds = %113
  %115 = load %struct.route4_filter*, %struct.route4_filter** %11, align 8
  %116 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @rcu_dereference_bh(i32 %117)
  %119 = bitcast i8* %118 to %struct.route4_filter*
  store %struct.route4_filter* %119, %struct.route4_filter** %11, align 8
  br label %102

120:                                              ; preds = %102
  %121 = load %struct.route4_bucket*, %struct.route4_bucket** %10, align 8
  %122 = getelementptr inbounds %struct.route4_bucket, %struct.route4_bucket* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %14, align 4
  %125 = call i64 @route4_hash_iif(i32 %124)
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i8* @rcu_dereference_bh(i32 %127)
  %129 = bitcast i8* %128 to %struct.route4_filter*
  store %struct.route4_filter* %129, %struct.route4_filter** %11, align 8
  br label %130

130:                                              ; preds = %142, %120
  %131 = load %struct.route4_filter*, %struct.route4_filter** %11, align 8
  %132 = icmp ne %struct.route4_filter* %131, null
  br i1 %132, label %133, label %148

133:                                              ; preds = %130
  %134 = load %struct.route4_filter*, %struct.route4_filter** %11, align 8
  %135 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %14, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = call i32 (...) @ROUTE4_APPLY_RESULT()
  br label %141

141:                                              ; preds = %139, %133
  br label %142

142:                                              ; preds = %141
  %143 = load %struct.route4_filter*, %struct.route4_filter** %11, align 8
  %144 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = call i8* @rcu_dereference_bh(i32 %145)
  %147 = bitcast i8* %146 to %struct.route4_filter*
  store %struct.route4_filter* %147, %struct.route4_filter** %11, align 8
  br label %130

148:                                              ; preds = %130
  %149 = load %struct.route4_bucket*, %struct.route4_bucket** %10, align 8
  %150 = getelementptr inbounds %struct.route4_bucket, %struct.route4_bucket* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = call i64 (...) @route4_hash_wild()
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = call i8* @rcu_dereference_bh(i32 %154)
  %156 = bitcast i8* %155 to %struct.route4_filter*
  store %struct.route4_filter* %156, %struct.route4_filter** %11, align 8
  br label %157

157:                                              ; preds = %162, %148
  %158 = load %struct.route4_filter*, %struct.route4_filter** %11, align 8
  %159 = icmp ne %struct.route4_filter* %158, null
  br i1 %159, label %160, label %168

160:                                              ; preds = %157
  %161 = call i32 (...) @ROUTE4_APPLY_RESULT()
  br label %162

162:                                              ; preds = %160
  %163 = load %struct.route4_filter*, %struct.route4_filter** %11, align 8
  %164 = getelementptr inbounds %struct.route4_filter, %struct.route4_filter* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = call i8* @rcu_dereference_bh(i32 %165)
  %167 = bitcast i8* %166 to %struct.route4_filter*
  store %struct.route4_filter* %167, %struct.route4_filter** %11, align 8
  br label %157

168:                                              ; preds = %157
  br label %169

169:                                              ; preds = %168, %81
  %170 = load i64, i64* %13, align 8
  %171 = icmp ult i64 %170, 256
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  store i64 256, i64* %13, align 8
  %173 = load i64, i64* %12, align 8
  %174 = and i64 %173, -65536
  store i64 %174, i64* %12, align 8
  br label %81

175:                                              ; preds = %169
  %176 = load i32, i32* %15, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %175
  %179 = load %struct.route4_head*, %struct.route4_head** %8, align 8
  %180 = load i64, i64* %12, align 8
  %181 = load i32, i32* %14, align 4
  %182 = load %struct.route4_filter*, %struct.route4_filter** @ROUTE4_FAILURE, align 8
  %183 = call i32 @route4_set_fastmap(%struct.route4_head* %179, i64 %180, i32 %181, %struct.route4_filter* %182)
  br label %184

184:                                              ; preds = %178, %175
  br label %185

185:                                              ; preds = %184, %68, %25
  store i32 -1, i32* %4, align 4
  br label %186

186:                                              ; preds = %185, %70
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local i8* @rcu_dereference_bh(i32) #1

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @inet_iif(%struct.sk_buff*) #1

declare dso_local i64 @route4_fastmap_hash(i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @route4_hash_to(i64) #1

declare dso_local i64 @route4_hash_from(i64) #1

declare dso_local i32 @ROUTE4_APPLY_RESULT(...) #1

declare dso_local i64 @route4_hash_iif(i32) #1

declare dso_local i64 @route4_hash_wild(...) #1

declare dso_local i32 @route4_set_fastmap(%struct.route4_head*, i64, i32, %struct.route4_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
