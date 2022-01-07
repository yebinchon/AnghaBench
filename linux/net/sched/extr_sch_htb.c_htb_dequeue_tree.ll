; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_dequeue_tree.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_dequeue_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.htb_sched = type { i32*, %struct.htb_level* }
%struct.htb_level = type { %struct.htb_prio* }
%struct.htb_prio = type { i32 }
%struct.htb_class = type { i64, %struct.TYPE_12__, %struct.TYPE_10__*, i32 }
%struct.TYPE_12__ = type { i64*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.sk_buff* (%struct.TYPE_13__*)* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"htb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.htb_sched*, i32, i32)* @htb_dequeue_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @htb_dequeue_tree(%struct.htb_sched* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.htb_sched*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.htb_class*, align 8
  %10 = alloca %struct.htb_class*, align 8
  %11 = alloca %struct.htb_level*, align 8
  %12 = alloca %struct.htb_prio*, align 8
  %13 = alloca %struct.htb_class*, align 8
  store %struct.htb_sched* %0, %struct.htb_sched** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  %14 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %15 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %14, i32 0, i32 1
  %16 = load %struct.htb_level*, %struct.htb_level** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.htb_level, %struct.htb_level* %16, i64 %18
  store %struct.htb_level* %19, %struct.htb_level** %11, align 8
  %20 = load %struct.htb_level*, %struct.htb_level** %11, align 8
  %21 = getelementptr inbounds %struct.htb_level, %struct.htb_level* %20, i32 0, i32 0
  %22 = load %struct.htb_prio*, %struct.htb_prio** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.htb_prio, %struct.htb_prio* %22, i64 %24
  store %struct.htb_prio* %25, %struct.htb_prio** %12, align 8
  %26 = load %struct.htb_prio*, %struct.htb_prio** %12, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.htb_class* @htb_lookup_leaf(%struct.htb_prio* %26, i32 %27)
  store %struct.htb_class* %28, %struct.htb_class** %9, align 8
  store %struct.htb_class* %28, %struct.htb_class** %10, align 8
  br label %29

29:                                               ; preds = %131, %3
  br label %30

30:                                               ; preds = %75, %29
  %31 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %32 = icmp ne %struct.htb_class* %31, null
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %227

38:                                               ; preds = %30
  %39 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %40 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %38
  %51 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %52 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %53 = call i32 @htb_deactivate(%struct.htb_sched* %51, %struct.htb_class* %52)
  %54 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %55 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = shl i32 1, %61
  %63 = and i32 %60, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %50
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %227

66:                                               ; preds = %50
  %67 = load %struct.htb_prio*, %struct.htb_prio** %12, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call %struct.htb_class* @htb_lookup_leaf(%struct.htb_prio* %67, i32 %68)
  store %struct.htb_class* %69, %struct.htb_class** %13, align 8
  %70 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %71 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %72 = icmp eq %struct.htb_class* %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load %struct.htb_class*, %struct.htb_class** %13, align 8
  store %struct.htb_class* %74, %struct.htb_class** %10, align 8
  br label %75

75:                                               ; preds = %73, %66
  %76 = load %struct.htb_class*, %struct.htb_class** %13, align 8
  store %struct.htb_class* %76, %struct.htb_class** %9, align 8
  br label %30

77:                                               ; preds = %38
  %78 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %79 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load %struct.sk_buff* (%struct.TYPE_13__*)*, %struct.sk_buff* (%struct.TYPE_13__*)** %82, align 8
  %84 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %85 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = call %struct.sk_buff* %83(%struct.TYPE_13__* %87)
  store %struct.sk_buff* %88, %struct.sk_buff** %8, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %90 = icmp ne %struct.sk_buff* %89, null
  %91 = zext i1 %90 to i32
  %92 = call i64 @likely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %77
  br label %135

95:                                               ; preds = %77
  %96 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %97 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = call i32 @qdisc_warn_nonwc(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.TYPE_13__* %99)
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %95
  %104 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %105 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %104, i32 0, i32 2
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  br label %125

114:                                              ; preds = %95
  %115 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %116 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %115, i32 0, i32 1
  %117 = load %struct.htb_level*, %struct.htb_level** %116, align 8
  %118 = getelementptr inbounds %struct.htb_level, %struct.htb_level* %117, i64 0
  %119 = getelementptr inbounds %struct.htb_level, %struct.htb_level* %118, i32 0, i32 0
  %120 = load %struct.htb_prio*, %struct.htb_prio** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.htb_prio, %struct.htb_prio* %120, i64 %122
  %124 = getelementptr inbounds %struct.htb_prio, %struct.htb_prio* %123, i32 0, i32 0
  br label %125

125:                                              ; preds = %114, %103
  %126 = phi i32* [ %113, %103 ], [ %124, %114 ]
  %127 = call i32 @htb_next_rb_node(i32* %126)
  %128 = load %struct.htb_prio*, %struct.htb_prio** %12, align 8
  %129 = load i32, i32* %6, align 4
  %130 = call %struct.htb_class* @htb_lookup_leaf(%struct.htb_prio* %128, i32 %129)
  store %struct.htb_class* %130, %struct.htb_class** %9, align 8
  br label %131

131:                                              ; preds = %125
  %132 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %133 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %134 = icmp ne %struct.htb_class* %132, %133
  br i1 %134, label %29, label %135

135:                                              ; preds = %131, %94
  %136 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %137 = icmp ne %struct.sk_buff* %136, null
  %138 = zext i1 %137 to i32
  %139 = call i64 @likely(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %225

141:                                              ; preds = %135
  %142 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %143 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %142, i32 0, i32 3
  %144 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %145 = call i32 @bstats_update(i32* %143, %struct.sk_buff* %144)
  %146 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %147 = call i64 @qdisc_pkt_len(%struct.sk_buff* %146)
  %148 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %149 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i64*, i64** %150, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = sub nsw i64 %155, %147
  store i64 %156, i64* %154, align 8
  %157 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %158 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i64*, i64** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %160, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %166, label %206

166:                                              ; preds = %141
  %167 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %168 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %171 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = load i64*, i64** %172, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %173, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %177, %169
  store i64 %178, i64* %176, align 8
  %179 = load i32, i32* %7, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %192

181:                                              ; preds = %166
  %182 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %183 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %182, i32 0, i32 2
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %186, align 8
  %188 = load i32, i32* %6, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  br label %203

192:                                              ; preds = %166
  %193 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %194 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %193, i32 0, i32 1
  %195 = load %struct.htb_level*, %struct.htb_level** %194, align 8
  %196 = getelementptr inbounds %struct.htb_level, %struct.htb_level* %195, i64 0
  %197 = getelementptr inbounds %struct.htb_level, %struct.htb_level* %196, i32 0, i32 0
  %198 = load %struct.htb_prio*, %struct.htb_prio** %197, align 8
  %199 = load i32, i32* %6, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.htb_prio, %struct.htb_prio* %198, i64 %200
  %202 = getelementptr inbounds %struct.htb_prio, %struct.htb_prio* %201, i32 0, i32 0
  br label %203

203:                                              ; preds = %192, %181
  %204 = phi i32* [ %191, %181 ], [ %202, %192 ]
  %205 = call i32 @htb_next_rb_node(i32* %204)
  br label %206

206:                                              ; preds = %203, %141
  %207 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %208 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 1
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %206
  %216 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %217 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %218 = call i32 @htb_deactivate(%struct.htb_sched* %216, %struct.htb_class* %217)
  br label %219

219:                                              ; preds = %215, %206
  %220 = load %struct.htb_sched*, %struct.htb_sched** %5, align 8
  %221 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  %222 = load i32, i32* %7, align 4
  %223 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %224 = call i32 @htb_charge_class(%struct.htb_sched* %220, %struct.htb_class* %221, i32 %222, %struct.sk_buff* %223)
  br label %225

225:                                              ; preds = %219, %135
  %226 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %226, %struct.sk_buff** %4, align 8
  br label %227

227:                                              ; preds = %225, %65, %37
  %228 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %228
}

declare dso_local %struct.htb_class* @htb_lookup_leaf(%struct.htb_prio*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @htb_deactivate(%struct.htb_sched*, %struct.htb_class*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @qdisc_warn_nonwc(i8*, %struct.TYPE_13__*) #1

declare dso_local i32 @htb_next_rb_node(i32*) #1

declare dso_local i32 @bstats_update(i32*, %struct.sk_buff*) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @htb_charge_class(%struct.htb_sched*, %struct.htb_class*, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
