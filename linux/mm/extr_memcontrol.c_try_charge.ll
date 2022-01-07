; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_try_charge.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_try_charge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.mem_cgroup = type { i64, i32, i32, i32, i32 }
%struct.page_counter = type { i32 }

@MEMCG_CHARGE_BATCH = common dso_local global i32 0, align 4
@MEM_CGROUP_RECLAIM_RETRIES = common dso_local global i32 0, align 4
@memory = common dso_local global i32 0, align 4
@memsw = common dso_local global i32 0, align 4
@__GFP_ATOMIC = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_5__* null, align 8
@PF_MEMALLOC = common dso_local global i32 0, align 4
@MEMCG_MAX = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@PAGE_ALLOC_COSTLY_ORDER = common dso_local global i32 0, align 4
@__GFP_RETRY_MAYFAIL = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_cgroup*, i32, i32)* @try_charge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_charge(%struct.mem_cgroup* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem_cgroup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mem_cgroup*, align 8
  %11 = alloca %struct.page_counter*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* @MEMCG_CHARGE_BATCH, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @max(i32 %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @MEM_CGROUP_RECLAIM_RETRIES, align 4
  store i32 %19, i32* %9, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %21 = call i64 @mem_cgroup_is_root(%struct.mem_cgroup* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %245

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %171, %144, %139, %134, %117, %113, %67, %24
  %26 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @consume_stock(%struct.mem_cgroup* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %245

31:                                               ; preds = %25
  %32 = call i64 (...) @do_memsw_account()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %36 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %35, i32 0, i32 4
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @page_counter_try_charge(i32* %36, i32 %37, %struct.page_counter** %11)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %34, %31
  %41 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %42 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %41, i32 0, i32 2
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @page_counter_try_charge(i32* %42, i32 %43, %struct.page_counter** %11)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %201

47:                                               ; preds = %40
  %48 = call i64 (...) @do_memsw_account()
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %52 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %51, i32 0, i32 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @page_counter_uncharge(i32* %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %47
  %56 = load %struct.page_counter*, %struct.page_counter** %11, align 8
  %57 = load i32, i32* @memory, align 4
  %58 = call %struct.mem_cgroup* @mem_cgroup_from_counter(%struct.page_counter* %56, i32 %57)
  store %struct.mem_cgroup* %58, %struct.mem_cgroup** %10, align 8
  br label %63

59:                                               ; preds = %34
  %60 = load %struct.page_counter*, %struct.page_counter** %11, align 8
  %61 = load i32, i32* @memsw, align 4
  %62 = call %struct.mem_cgroup* @mem_cgroup_from_counter(%struct.page_counter* %60, i32 %61)
  store %struct.mem_cgroup* %62, %struct.mem_cgroup** %10, align 8
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %59, %55
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ugt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %8, align 4
  br label %25

69:                                               ; preds = %63
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @__GFP_ATOMIC, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %184

75:                                               ; preds = %69
  %76 = call i32 (...) @should_force_charge()
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %184

80:                                               ; preds = %75
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @PF_MEMALLOC, align 4
  %85 = and i32 %83, %84
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %184

89:                                               ; preds = %80
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %91 = call i32 @task_in_memcg_oom(%struct.TYPE_5__* %90)
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %175

95:                                               ; preds = %89
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @gfpflags_allow_blocking(i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  br label %175

100:                                              ; preds = %95
  %101 = load %struct.mem_cgroup*, %struct.mem_cgroup** %10, align 8
  %102 = load i32, i32* @MEMCG_MAX, align 4
  %103 = call i32 @memcg_memory_event(%struct.mem_cgroup* %101, i32 %102)
  %104 = load %struct.mem_cgroup*, %struct.mem_cgroup** %10, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %13, align 4
  %108 = call i64 @try_to_free_mem_cgroup_pages(%struct.mem_cgroup* %104, i32 %105, i32 %106, i32 %107)
  store i64 %108, i64* %12, align 8
  %109 = load %struct.mem_cgroup*, %struct.mem_cgroup** %10, align 8
  %110 = call i32 @mem_cgroup_margin(%struct.mem_cgroup* %109)
  %111 = load i32, i32* %7, align 4
  %112 = icmp uge i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %100
  br label %25

114:                                              ; preds = %100
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load %struct.mem_cgroup*, %struct.mem_cgroup** %10, align 8
  %119 = call i32 @drain_all_stock(%struct.mem_cgroup* %118)
  store i32 1, i32* %14, align 4
  br label %25

120:                                              ; preds = %114
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @__GFP_NORETRY, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %175

126:                                              ; preds = %120
  %127 = load i64, i64* %12, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @PAGE_ALLOC_COSTLY_ORDER, align 4
  %132 = shl i32 1, %131
  %133 = icmp ule i32 %130, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %25

135:                                              ; preds = %129, %126
  %136 = load %struct.mem_cgroup*, %struct.mem_cgroup** %10, align 8
  %137 = call i64 @mem_cgroup_wait_acct_move(%struct.mem_cgroup* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  br label %25

140:                                              ; preds = %135
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %9, align 4
  %143 = icmp ne i32 %141, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %25

145:                                              ; preds = %140
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @__GFP_RETRY_MAYFAIL, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %175

151:                                              ; preds = %145
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* @__GFP_NOFAIL, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  br label %184

157:                                              ; preds = %151
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %159 = call i64 @fatal_signal_pending(%struct.TYPE_5__* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  br label %184

162:                                              ; preds = %157
  %163 = load %struct.mem_cgroup*, %struct.mem_cgroup** %10, align 8
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* @PAGE_SIZE, align 4
  %167 = mul i32 %165, %166
  %168 = call i32 @get_order(i32 %167)
  %169 = call i32 @mem_cgroup_oom(%struct.mem_cgroup* %163, i32 %164, i32 %168)
  store i32 %169, i32* %15, align 4
  %170 = load i32, i32* %15, align 4
  switch i32 %170, label %174 [
    i32 128, label %171
    i32 129, label %173
  ]

171:                                              ; preds = %162
  %172 = load i32, i32* @MEM_CGROUP_RECLAIM_RETRIES, align 4
  store i32 %172, i32* %9, align 4
  br label %25

173:                                              ; preds = %162
  br label %184

174:                                              ; preds = %162
  br label %175

175:                                              ; preds = %174, %150, %125, %99, %94
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* @__GFP_NOFAIL, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %175
  %181 = load i32, i32* @ENOMEM, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %4, align 4
  br label %245

183:                                              ; preds = %175
  br label %184

184:                                              ; preds = %183, %173, %161, %156, %88, %79, %74
  %185 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %186 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %185, i32 0, i32 2
  %187 = load i32, i32* %7, align 4
  %188 = call i32 @page_counter_charge(i32* %186, i32 %187)
  %189 = call i64 (...) @do_memsw_account()
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %184
  %192 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %193 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %192, i32 0, i32 4
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @page_counter_charge(i32* %193, i32 %194)
  br label %196

196:                                              ; preds = %191, %184
  %197 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %198 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %197, i32 0, i32 3
  %199 = load i32, i32* %7, align 4
  %200 = call i32 @css_get_many(i32* %198, i32 %199)
  store i32 0, i32* %4, align 4
  br label %245

201:                                              ; preds = %46
  %202 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %203 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %202, i32 0, i32 3
  %204 = load i32, i32* %8, align 4
  %205 = call i32 @css_get_many(i32* %203, i32 %204)
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* %7, align 4
  %208 = icmp ugt i32 %206, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %201
  %210 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* %7, align 4
  %213 = sub i32 %211, %212
  %214 = call i32 @refill_stock(%struct.mem_cgroup* %210, i32 %213)
  br label %215

215:                                              ; preds = %209, %201
  br label %216

216:                                              ; preds = %240, %215
  %217 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %218 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %217, i32 0, i32 2
  %219 = call i64 @page_counter_read(i32* %218)
  %220 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %221 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp sgt i64 %219, %222
  br i1 %223, label %224, label %239

224:                                              ; preds = %216
  %225 = call i64 (...) @in_interrupt()
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %224
  %228 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %229 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %228, i32 0, i32 1
  %230 = call i32 @schedule_work(i32* %229)
  br label %244

231:                                              ; preds = %224
  %232 = load i32, i32* %8, align 4
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = add i32 %235, %232
  store i32 %236, i32* %234, align 4
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %238 = call i32 @set_notify_resume(%struct.TYPE_5__* %237)
  br label %244

239:                                              ; preds = %216
  br label %240

240:                                              ; preds = %239
  %241 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %242 = call %struct.mem_cgroup* @parent_mem_cgroup(%struct.mem_cgroup* %241)
  store %struct.mem_cgroup* %242, %struct.mem_cgroup** %5, align 8
  %243 = icmp ne %struct.mem_cgroup* %242, null
  br i1 %243, label %216, label %244

244:                                              ; preds = %240, %231, %227
  store i32 0, i32* %4, align 4
  br label %245

245:                                              ; preds = %244, %196, %180, %30, %23
  %246 = load i32, i32* %4, align 4
  ret i32 %246
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @mem_cgroup_is_root(%struct.mem_cgroup*) #1

declare dso_local i64 @consume_stock(%struct.mem_cgroup*, i32) #1

declare dso_local i64 @do_memsw_account(...) #1

declare dso_local i64 @page_counter_try_charge(i32*, i32, %struct.page_counter**) #1

declare dso_local i32 @page_counter_uncharge(i32*, i32) #1

declare dso_local %struct.mem_cgroup* @mem_cgroup_from_counter(%struct.page_counter*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @should_force_charge(...) #1

declare dso_local i32 @task_in_memcg_oom(%struct.TYPE_5__*) #1

declare dso_local i32 @gfpflags_allow_blocking(i32) #1

declare dso_local i32 @memcg_memory_event(%struct.mem_cgroup*, i32) #1

declare dso_local i64 @try_to_free_mem_cgroup_pages(%struct.mem_cgroup*, i32, i32, i32) #1

declare dso_local i32 @mem_cgroup_margin(%struct.mem_cgroup*) #1

declare dso_local i32 @drain_all_stock(%struct.mem_cgroup*) #1

declare dso_local i64 @mem_cgroup_wait_acct_move(%struct.mem_cgroup*) #1

declare dso_local i64 @fatal_signal_pending(%struct.TYPE_5__*) #1

declare dso_local i32 @mem_cgroup_oom(%struct.mem_cgroup*, i32, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @page_counter_charge(i32*, i32) #1

declare dso_local i32 @css_get_many(i32*, i32) #1

declare dso_local i32 @refill_stock(%struct.mem_cgroup*, i32) #1

declare dso_local i64 @page_counter_read(i32*) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @set_notify_resume(%struct.TYPE_5__*) #1

declare dso_local %struct.mem_cgroup* @parent_mem_cgroup(%struct.mem_cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
