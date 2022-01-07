; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutree.c_srcu_funnel_gp_start.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_srcutree.c_srcu_funnel_gp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcu_struct = type { i64*, i64, i64, i64, %struct.TYPE_4__, i32*, %struct.srcu_struct* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.srcu_data = type { i32, %struct.srcu_struct* }
%struct.srcu_node = type { i64*, i64, i64, i64, %struct.TYPE_4__, i32*, %struct.srcu_node* }

@SRCU_INTERVAL = common dso_local global i32 0, align 4
@SRCU_STATE_IDLE = common dso_local global i64 0, align 8
@srcu_init_done = common dso_local global i32 0, align 4
@rcu_gp_wq = common dso_local global i32 0, align 4
@srcu_boot_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srcu_struct*, %struct.srcu_data*, i64, i32)* @srcu_funnel_gp_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srcu_funnel_gp_start(%struct.srcu_struct* %0, %struct.srcu_data* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.srcu_struct*, align 8
  %6 = alloca %struct.srcu_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.srcu_node*, align 8
  %12 = alloca i64, align 8
  store %struct.srcu_struct* %0, %struct.srcu_struct** %5, align 8
  store %struct.srcu_data* %1, %struct.srcu_data** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @rcu_seq_ctr(i64 %13)
  %15 = load %struct.srcu_data*, %struct.srcu_data** %6, align 8
  %16 = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %15, i32 0, i32 1
  %17 = load %struct.srcu_struct*, %struct.srcu_struct** %16, align 8
  %18 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = call i32 @ARRAY_SIZE(i64* %19)
  %21 = srem i32 %14, %20
  store i32 %21, i32* %10, align 4
  %22 = load %struct.srcu_data*, %struct.srcu_data** %6, align 8
  %23 = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %22, i32 0, i32 1
  %24 = load %struct.srcu_struct*, %struct.srcu_struct** %23, align 8
  %25 = bitcast %struct.srcu_struct* %24 to %struct.srcu_node*
  store %struct.srcu_node* %25, %struct.srcu_node** %11, align 8
  br label %26

26:                                               ; preds = %168, %4
  %27 = load %struct.srcu_node*, %struct.srcu_node** %11, align 8
  %28 = icmp ne %struct.srcu_node* %27, null
  br i1 %28, label %29, label %172

29:                                               ; preds = %26
  %30 = load %struct.srcu_struct*, %struct.srcu_struct** %5, align 8
  %31 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %30, i32 0, i32 1
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @rcu_seq_done(i64* %31, i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.srcu_node*, %struct.srcu_node** %11, align 8
  %37 = load %struct.srcu_data*, %struct.srcu_data** %6, align 8
  %38 = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %37, i32 0, i32 1
  %39 = load %struct.srcu_struct*, %struct.srcu_struct** %38, align 8
  %40 = bitcast %struct.srcu_struct* %39 to %struct.srcu_node*
  %41 = icmp ne %struct.srcu_node* %36, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %254

43:                                               ; preds = %35, %29
  %44 = load %struct.srcu_node*, %struct.srcu_node** %11, align 8
  %45 = bitcast %struct.srcu_node* %44 to %struct.srcu_struct*
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @spin_lock_irqsave_rcu_node(%struct.srcu_struct* %45, i64 %46)
  %48 = load %struct.srcu_node*, %struct.srcu_node** %11, align 8
  %49 = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i64 @ULONG_CMP_GE(i64 %54, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %123

58:                                               ; preds = %43
  %59 = load %struct.srcu_node*, %struct.srcu_node** %11, align 8
  %60 = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %12, align 8
  %66 = load %struct.srcu_node*, %struct.srcu_node** %11, align 8
  %67 = load %struct.srcu_data*, %struct.srcu_data** %6, align 8
  %68 = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %67, i32 0, i32 1
  %69 = load %struct.srcu_struct*, %struct.srcu_struct** %68, align 8
  %70 = bitcast %struct.srcu_struct* %69 to %struct.srcu_node*
  %71 = icmp eq %struct.srcu_node* %66, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %58
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* %7, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %72
  %77 = load %struct.srcu_data*, %struct.srcu_data** %6, align 8
  %78 = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.srcu_node*, %struct.srcu_node** %11, align 8
  %81 = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %80, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %79
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %76, %72, %58
  %89 = load %struct.srcu_node*, %struct.srcu_node** %11, align 8
  %90 = bitcast %struct.srcu_node* %89 to %struct.srcu_struct*
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @spin_unlock_irqrestore_rcu_node(%struct.srcu_struct* %90, i64 %91)
  %93 = load %struct.srcu_node*, %struct.srcu_node** %11, align 8
  %94 = load %struct.srcu_data*, %struct.srcu_data** %6, align 8
  %95 = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %94, i32 0, i32 1
  %96 = load %struct.srcu_struct*, %struct.srcu_struct** %95, align 8
  %97 = bitcast %struct.srcu_struct* %96 to %struct.srcu_node*
  %98 = icmp eq %struct.srcu_node* %93, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %88
  %100 = load i64, i64* %12, align 8
  %101 = load i64, i64* %7, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %99
  %104 = load %struct.srcu_data*, %struct.srcu_data** %6, align 8
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* @SRCU_INTERVAL, align 4
  br label %110

109:                                              ; preds = %103
  br label %110

110:                                              ; preds = %109, %107
  %111 = phi i32 [ %108, %107 ], [ 0, %109 ]
  %112 = call i32 @srcu_schedule_cbs_sdp(%struct.srcu_data* %104, i32 %111)
  br label %254

113:                                              ; preds = %99, %88
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %113
  %117 = load %struct.srcu_struct*, %struct.srcu_struct** %5, align 8
  %118 = load %struct.srcu_node*, %struct.srcu_node** %11, align 8
  %119 = bitcast %struct.srcu_node* %118 to %struct.srcu_struct*
  %120 = load i64, i64* %7, align 8
  %121 = call i32 @srcu_funnel_exp_start(%struct.srcu_struct* %117, %struct.srcu_struct* %119, i64 %120)
  br label %122

122:                                              ; preds = %116, %113
  br label %254

123:                                              ; preds = %43
  %124 = load i64, i64* %7, align 8
  %125 = load %struct.srcu_node*, %struct.srcu_node** %11, align 8
  %126 = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  store i64 %124, i64* %130, align 8
  %131 = load %struct.srcu_node*, %struct.srcu_node** %11, align 8
  %132 = load %struct.srcu_data*, %struct.srcu_data** %6, align 8
  %133 = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %132, i32 0, i32 1
  %134 = load %struct.srcu_struct*, %struct.srcu_struct** %133, align 8
  %135 = bitcast %struct.srcu_struct* %134 to %struct.srcu_node*
  %136 = icmp eq %struct.srcu_node* %131, %135
  br i1 %136, label %137, label %149

137:                                              ; preds = %123
  %138 = load %struct.srcu_data*, %struct.srcu_data** %6, align 8
  %139 = getelementptr inbounds %struct.srcu_data, %struct.srcu_data* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.srcu_node*, %struct.srcu_node** %11, align 8
  %142 = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %141, i32 0, i32 5
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %140
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %137, %123
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %163, label %152

152:                                              ; preds = %149
  %153 = load %struct.srcu_node*, %struct.srcu_node** %11, align 8
  %154 = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* %7, align 8
  %157 = call i64 @ULONG_CMP_LT(i64 %155, i64 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %152
  %160 = load i64, i64* %7, align 8
  %161 = load %struct.srcu_node*, %struct.srcu_node** %11, align 8
  %162 = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %161, i32 0, i32 2
  store i64 %160, i64* %162, align 8
  br label %163

163:                                              ; preds = %159, %152, %149
  %164 = load %struct.srcu_node*, %struct.srcu_node** %11, align 8
  %165 = bitcast %struct.srcu_node* %164 to %struct.srcu_struct*
  %166 = load i64, i64* %9, align 8
  %167 = call i32 @spin_unlock_irqrestore_rcu_node(%struct.srcu_struct* %165, i64 %166)
  br label %168

168:                                              ; preds = %163
  %169 = load %struct.srcu_node*, %struct.srcu_node** %11, align 8
  %170 = getelementptr inbounds %struct.srcu_node, %struct.srcu_node* %169, i32 0, i32 6
  %171 = load %struct.srcu_node*, %struct.srcu_node** %170, align 8
  store %struct.srcu_node* %171, %struct.srcu_node** %11, align 8
  br label %26

172:                                              ; preds = %26
  %173 = load %struct.srcu_struct*, %struct.srcu_struct** %5, align 8
  %174 = load i64, i64* %9, align 8
  %175 = call i32 @spin_lock_irqsave_rcu_node(%struct.srcu_struct* %173, i64 %174)
  %176 = load %struct.srcu_struct*, %struct.srcu_struct** %5, align 8
  %177 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* %7, align 8
  %180 = call i64 @ULONG_CMP_LT(i64 %178, i64 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %172
  %183 = load %struct.srcu_struct*, %struct.srcu_struct** %5, align 8
  %184 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %183, i32 0, i32 3
  %185 = load i64, i64* %7, align 8
  %186 = call i32 @smp_store_release(i64* %184, i64 %185)
  br label %187

187:                                              ; preds = %182, %172
  %188 = load i32, i32* %8, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %201, label %190

190:                                              ; preds = %187
  %191 = load %struct.srcu_struct*, %struct.srcu_struct** %5, align 8
  %192 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* %7, align 8
  %195 = call i64 @ULONG_CMP_LT(i64 %193, i64 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %190
  %198 = load i64, i64* %7, align 8
  %199 = load %struct.srcu_struct*, %struct.srcu_struct** %5, align 8
  %200 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %199, i32 0, i32 2
  store i64 %198, i64* %200, align 8
  br label %201

201:                                              ; preds = %197, %190, %187
  %202 = load %struct.srcu_struct*, %struct.srcu_struct** %5, align 8
  %203 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %202, i32 0, i32 1
  %204 = load i64, i64* %7, align 8
  %205 = call i64 @rcu_seq_done(i64* %203, i64 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %250, label %207

207:                                              ; preds = %201
  %208 = load %struct.srcu_struct*, %struct.srcu_struct** %5, align 8
  %209 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = call i64 @rcu_seq_state(i64 %210)
  %212 = load i64, i64* @SRCU_STATE_IDLE, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %250

214:                                              ; preds = %207
  %215 = load %struct.srcu_struct*, %struct.srcu_struct** %5, align 8
  %216 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.srcu_struct*, %struct.srcu_struct** %5, align 8
  %219 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = call i64 @ULONG_CMP_GE(i64 %217, i64 %220)
  %222 = call i32 @WARN_ON_ONCE(i64 %221)
  %223 = load %struct.srcu_struct*, %struct.srcu_struct** %5, align 8
  %224 = call i32 @srcu_gp_start(%struct.srcu_struct* %223)
  %225 = load i32, i32* @srcu_init_done, align 4
  %226 = call i64 @likely(i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %214
  %229 = load i32, i32* @rcu_gp_wq, align 4
  %230 = load %struct.srcu_struct*, %struct.srcu_struct** %5, align 8
  %231 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %230, i32 0, i32 4
  %232 = load %struct.srcu_struct*, %struct.srcu_struct** %5, align 8
  %233 = call i32 @srcu_get_delay(%struct.srcu_struct* %232)
  %234 = call i32 @queue_delayed_work(i32 %229, %struct.TYPE_4__* %231, i32 %233)
  br label %249

235:                                              ; preds = %214
  %236 = load %struct.srcu_struct*, %struct.srcu_struct** %5, align 8
  %237 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %236, i32 0, i32 4
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 0
  %240 = call i64 @list_empty(i32* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %235
  %243 = load %struct.srcu_struct*, %struct.srcu_struct** %5, align 8
  %244 = getelementptr inbounds %struct.srcu_struct, %struct.srcu_struct* %243, i32 0, i32 4
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 0
  %247 = call i32 @list_add(i32* %246, i32* @srcu_boot_list)
  br label %248

248:                                              ; preds = %242, %235
  br label %249

249:                                              ; preds = %248, %228
  br label %250

250:                                              ; preds = %249, %207, %201
  %251 = load %struct.srcu_struct*, %struct.srcu_struct** %5, align 8
  %252 = load i64, i64* %9, align 8
  %253 = call i32 @spin_unlock_irqrestore_rcu_node(%struct.srcu_struct* %251, i64 %252)
  br label %254

254:                                              ; preds = %250, %122, %110, %42
  ret void
}

declare dso_local i32 @rcu_seq_ctr(i64) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @rcu_seq_done(i64*, i64) #1

declare dso_local i32 @spin_lock_irqsave_rcu_node(%struct.srcu_struct*, i64) #1

declare dso_local i64 @ULONG_CMP_GE(i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore_rcu_node(%struct.srcu_struct*, i64) #1

declare dso_local i32 @srcu_schedule_cbs_sdp(%struct.srcu_data*, i32) #1

declare dso_local i32 @srcu_funnel_exp_start(%struct.srcu_struct*, %struct.srcu_struct*, i64) #1

declare dso_local i64 @ULONG_CMP_LT(i64, i64) #1

declare dso_local i32 @smp_store_release(i64*, i64) #1

declare dso_local i64 @rcu_seq_state(i64) #1

declare dso_local i32 @WARN_ON_ONCE(i64) #1

declare dso_local i32 @srcu_gp_start(%struct.srcu_struct*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @queue_delayed_work(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @srcu_get_delay(%struct.srcu_struct*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
