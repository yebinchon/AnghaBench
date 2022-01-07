; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_deactivate_agg.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_qfq.c_qfq_deactivate_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_sched = type { i64*, %struct.qfq_aggregate* }
%struct.qfq_aggregate = type { i32, i32, %struct.qfq_group* }
%struct.qfq_group = type { i64, i64, i64, i64, i64, i32*, i32 }

@IR = common dso_local global i64 0, align 8
@EB = common dso_local global i64 0, align 8
@IB = common dso_local global i64 0, align 8
@ER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_sched*, %struct.qfq_aggregate*)* @qfq_deactivate_agg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_deactivate_agg(%struct.qfq_sched* %0, %struct.qfq_aggregate* %1) #0 {
  %3 = alloca %struct.qfq_sched*, align 8
  %4 = alloca %struct.qfq_aggregate*, align 8
  %5 = alloca %struct.qfq_group*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.qfq_sched* %0, %struct.qfq_sched** %3, align 8
  store %struct.qfq_aggregate* %1, %struct.qfq_aggregate** %4, align 8
  %9 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %4, align 8
  %10 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %9, i32 0, i32 2
  %11 = load %struct.qfq_group*, %struct.qfq_group** %10, align 8
  store %struct.qfq_group* %11, %struct.qfq_group** %5, align 8
  %12 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %4, align 8
  %13 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %14 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %13, i32 0, i32 1
  %15 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %14, align 8
  %16 = icmp eq %struct.qfq_aggregate* %12, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %4, align 8
  %19 = call i32 @charge_actual_service(%struct.qfq_aggregate* %18)
  %20 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %21 = call %struct.qfq_aggregate* @qfq_choose_next_agg(%struct.qfq_sched* %20)
  %22 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %23 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %22, i32 0, i32 1
  store %struct.qfq_aggregate* %21, %struct.qfq_aggregate** %23, align 8
  br label %222

24:                                               ; preds = %2
  %25 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %4, align 8
  %26 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %4, align 8
  %29 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %31 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %32 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %4, align 8
  %33 = call i32 @qfq_slot_remove(%struct.qfq_sched* %30, %struct.qfq_group* %31, %struct.qfq_aggregate* %32)
  %34 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %35 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %134, label %38

38:                                               ; preds = %24
  %39 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %40 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %43 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* @IR, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = call i32 @__clear_bit(i64 %41, i64* %46)
  %48 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %49 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %52 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* @EB, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = call i32 @__clear_bit(i64 %50, i64* %55)
  %57 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %58 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %61 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* @IB, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = call i32 @__clear_bit(i64 %59, i64* %64)
  %66 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %67 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %70 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* @ER, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = call i64 @test_bit(i64 %68, i64* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %124

76:                                               ; preds = %38
  %77 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %78 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i64, i64* @ER, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %84 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = shl i64 1, %85
  %87 = sub i64 %86, 1
  %88 = xor i64 %87, -1
  %89 = and i64 %82, %88
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %124, label %91

91:                                               ; preds = %76
  %92 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %93 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = load i64, i64* @ER, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %99 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = shl i64 1, %100
  %102 = sub i64 %101, 1
  %103 = and i64 %97, %102
  store i64 %103, i64* %6, align 8
  %104 = load i64, i64* %6, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %91
  %107 = load i64, i64* %6, align 8
  %108 = call i64 @__fls(i64 %107)
  %109 = shl i64 1, %108
  %110 = sub i64 %109, 1
  %111 = xor i64 %110, -1
  store i64 %111, i64* %6, align 8
  br label %113

112:                                              ; preds = %91
  store i64 -1, i64* %6, align 8
  br label %113

113:                                              ; preds = %112, %106
  %114 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %115 = load i64, i64* %6, align 8
  %116 = load i64, i64* @EB, align 8
  %117 = load i64, i64* @ER, align 8
  %118 = call i32 @qfq_move_groups(%struct.qfq_sched* %114, i64 %115, i64 %116, i64 %117)
  %119 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %120 = load i64, i64* %6, align 8
  %121 = load i64, i64* @IB, align 8
  %122 = load i64, i64* @IR, align 8
  %123 = call i32 @qfq_move_groups(%struct.qfq_sched* %119, i64 %120, i64 %121, i64 %122)
  br label %124

124:                                              ; preds = %113, %76, %38
  %125 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %126 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %129 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = load i64, i64* @ER, align 8
  %132 = getelementptr inbounds i64, i64* %130, i64 %131
  %133 = call i32 @__clear_bit(i64 %127, i64* %132)
  br label %222

134:                                              ; preds = %24
  %135 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %136 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %135, i32 0, i32 5
  %137 = load i32*, i32** %136, align 8
  %138 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %139 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  %142 = call i64 @hlist_empty(i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %221

144:                                              ; preds = %134
  %145 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %146 = call %struct.qfq_aggregate* @qfq_slot_scan(%struct.qfq_group* %145)
  store %struct.qfq_aggregate* %146, %struct.qfq_aggregate** %4, align 8
  %147 = load %struct.qfq_aggregate*, %struct.qfq_aggregate** %4, align 8
  %148 = getelementptr inbounds %struct.qfq_aggregate, %struct.qfq_aggregate* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %151 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = call i64 @qfq_round_down(i32 %149, i64 %152)
  store i64 %153, i64* %7, align 8
  %154 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %155 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* %7, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %220

159:                                              ; preds = %144
  %160 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %161 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %164 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %163, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  %166 = load i64, i64* @ER, align 8
  %167 = getelementptr inbounds i64, i64* %165, i64 %166
  %168 = call i32 @__clear_bit(i64 %162, i64* %167)
  %169 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %170 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %173 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %172, i32 0, i32 0
  %174 = load i64*, i64** %173, align 8
  %175 = load i64, i64* @IR, align 8
  %176 = getelementptr inbounds i64, i64* %174, i64 %175
  %177 = call i32 @__clear_bit(i64 %171, i64* %176)
  %178 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %179 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %182 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %181, i32 0, i32 0
  %183 = load i64*, i64** %182, align 8
  %184 = load i64, i64* @EB, align 8
  %185 = getelementptr inbounds i64, i64* %183, i64 %184
  %186 = call i32 @__clear_bit(i64 %180, i64* %185)
  %187 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %188 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %191 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %190, i32 0, i32 0
  %192 = load i64*, i64** %191, align 8
  %193 = load i64, i64* @IB, align 8
  %194 = getelementptr inbounds i64, i64* %192, i64 %193
  %195 = call i32 @__clear_bit(i64 %189, i64* %194)
  %196 = load i64, i64* %7, align 8
  %197 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %198 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %197, i32 0, i32 3
  store i64 %196, i64* %198, align 8
  %199 = load i64, i64* %7, align 8
  %200 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %201 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = shl i64 2, %202
  %204 = add i64 %199, %203
  %205 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %206 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %205, i32 0, i32 4
  store i64 %204, i64* %206, align 8
  %207 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %208 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %209 = call i32 @qfq_calc_state(%struct.qfq_sched* %207, %struct.qfq_group* %208)
  store i32 %209, i32* %8, align 4
  %210 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %211 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %214 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %213, i32 0, i32 0
  %215 = load i64*, i64** %214, align 8
  %216 = load i32, i32* %8, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i64, i64* %215, i64 %217
  %219 = call i32 @__set_bit(i64 %212, i64* %218)
  br label %220

220:                                              ; preds = %159, %144
  br label %221

221:                                              ; preds = %220, %134
  br label %222

222:                                              ; preds = %17, %221, %124
  ret void
}

declare dso_local i32 @charge_actual_service(%struct.qfq_aggregate*) #1

declare dso_local %struct.qfq_aggregate* @qfq_choose_next_agg(%struct.qfq_sched*) #1

declare dso_local i32 @qfq_slot_remove(%struct.qfq_sched*, %struct.qfq_group*, %struct.qfq_aggregate*) #1

declare dso_local i32 @__clear_bit(i64, i64*) #1

declare dso_local i64 @test_bit(i64, i64*) #1

declare dso_local i64 @__fls(i64) #1

declare dso_local i32 @qfq_move_groups(%struct.qfq_sched*, i64, i64, i64) #1

declare dso_local i64 @hlist_empty(i32*) #1

declare dso_local %struct.qfq_aggregate* @qfq_slot_scan(%struct.qfq_group*) #1

declare dso_local i64 @qfq_round_down(i32, i64) #1

declare dso_local i32 @qfq_calc_state(%struct.qfq_sched*, %struct.qfq_group*) #1

declare dso_local i32 @__set_bit(i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
