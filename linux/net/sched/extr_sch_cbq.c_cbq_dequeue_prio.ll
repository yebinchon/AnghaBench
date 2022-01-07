; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_dequeue_prio.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cbq.c_cbq_dequeue_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i32 }
%struct.cbq_sched_data = type { i64, i32, %struct.cbq_class**, %struct.cbq_class*, %struct.cbq_class* }
%struct.cbq_class = type { i64, i64, i32, %struct.cbq_class*, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.sk_buff* (%struct.TYPE_6__*)* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*, i32)* @cbq_dequeue_prio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @cbq_dequeue_prio(%struct.Qdisc* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cbq_sched_data*, align 8
  %7 = alloca %struct.cbq_class*, align 8
  %8 = alloca %struct.cbq_class*, align 8
  %9 = alloca %struct.cbq_class*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cbq_class*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %14 = call %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc* %13)
  store %struct.cbq_sched_data* %14, %struct.cbq_sched_data** %6, align 8
  %15 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %16 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %15, i32 0, i32 2
  %17 = load %struct.cbq_class**, %struct.cbq_class*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.cbq_class*, %struct.cbq_class** %17, i64 %19
  %21 = load %struct.cbq_class*, %struct.cbq_class** %20, align 8
  store %struct.cbq_class* %21, %struct.cbq_class** %8, align 8
  store %struct.cbq_class* %21, %struct.cbq_class** %7, align 8
  %22 = load %struct.cbq_class*, %struct.cbq_class** %8, align 8
  %23 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %22, i32 0, i32 3
  %24 = load %struct.cbq_class*, %struct.cbq_class** %23, align 8
  store %struct.cbq_class* %24, %struct.cbq_class** %9, align 8
  br label %25

25:                                               ; preds = %209, %2
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %204, %25
  %27 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  store %struct.cbq_class* %27, %struct.cbq_class** %12, align 8
  %28 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %29 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %28, i32 0, i32 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %37 = call %struct.cbq_class* @cbq_under_limit(%struct.cbq_class* %36)
  store %struct.cbq_class* %37, %struct.cbq_class** %12, align 8
  %38 = icmp eq %struct.cbq_class* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %122

40:                                               ; preds = %35, %26
  %41 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %42 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sle i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  store i32 1, i32* %11, align 4
  %46 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %47 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %50 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, %48
  store i64 %52, i64* %50, align 8
  br label %199

53:                                               ; preds = %40
  %54 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %55 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %54, i32 0, i32 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load %struct.sk_buff* (%struct.TYPE_6__*)*, %struct.sk_buff* (%struct.TYPE_6__*)** %57, align 8
  %59 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %60 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %59, i32 0, i32 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = call %struct.sk_buff* %58(%struct.TYPE_6__* %61)
  store %struct.sk_buff* %62, %struct.sk_buff** %10, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %64 = icmp eq %struct.sk_buff* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %122

66:                                               ; preds = %53
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %68 = call i64 @qdisc_pkt_len(%struct.sk_buff* %67)
  %69 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %70 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %71, %68
  store i64 %72, i64* %70, align 8
  %73 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %74 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %75 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %74, i32 0, i32 4
  store %struct.cbq_class* %73, %struct.cbq_class** %75, align 8
  %76 = load %struct.cbq_class*, %struct.cbq_class** %12, align 8
  %77 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %78 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %77, i32 0, i32 3
  store %struct.cbq_class* %76, %struct.cbq_class** %78, align 8
  %79 = load %struct.cbq_class*, %struct.cbq_class** %12, align 8
  %80 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %81 = icmp ne %struct.cbq_class* %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %66
  %83 = load %struct.cbq_class*, %struct.cbq_class** %12, align 8
  %84 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %85, align 8
  %88 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %89 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %90, align 8
  br label %93

93:                                               ; preds = %82, %66
  %94 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %95 = call i64 @qdisc_pkt_len(%struct.sk_buff* %94)
  %96 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %97 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  %98 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %99 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp sle i64 %100, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %93
  %103 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %104 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %105 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %104, i32 0, i32 2
  %106 = load %struct.cbq_class**, %struct.cbq_class*** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.cbq_class*, %struct.cbq_class** %106, i64 %108
  store %struct.cbq_class* %103, %struct.cbq_class** %109, align 8
  %110 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %111 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %110, i32 0, i32 3
  %112 = load %struct.cbq_class*, %struct.cbq_class** %111, align 8
  store %struct.cbq_class* %112, %struct.cbq_class** %9, align 8
  %113 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %114 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %117 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, %115
  store i64 %119, i64* %117, align 8
  br label %120

120:                                              ; preds = %102, %93
  %121 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %121, %struct.sk_buff** %3, align 8
  br label %220

122:                                              ; preds = %65, %39
  %123 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %124 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %123, i32 0, i32 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %122
  %131 = load i32, i32* %5, align 4
  %132 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %133 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %131, %134
  br i1 %135, label %136, label %198

136:                                              ; preds = %130, %122
  %137 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %138 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %137, i32 0, i32 3
  %139 = load %struct.cbq_class*, %struct.cbq_class** %138, align 8
  %140 = load %struct.cbq_class*, %struct.cbq_class** %8, align 8
  %141 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %140, i32 0, i32 3
  store %struct.cbq_class* %139, %struct.cbq_class** %141, align 8
  %142 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %143 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %142, i32 0, i32 3
  store %struct.cbq_class* null, %struct.cbq_class** %143, align 8
  %144 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %145 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %146 = icmp eq %struct.cbq_class* %144, %145
  br i1 %146, label %147, label %185

147:                                              ; preds = %136
  %148 = load %struct.cbq_class*, %struct.cbq_class** %8, align 8
  store %struct.cbq_class* %148, %struct.cbq_class** %7, align 8
  %149 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %150 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %151 = icmp eq %struct.cbq_class* %149, %150
  br i1 %151, label %152, label %177

152:                                              ; preds = %147
  %153 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %154 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %153, i32 0, i32 2
  %155 = load %struct.cbq_class**, %struct.cbq_class*** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.cbq_class*, %struct.cbq_class** %155, i64 %157
  store %struct.cbq_class* null, %struct.cbq_class** %158, align 8
  %159 = load i32, i32* %5, align 4
  %160 = shl i32 1, %159
  %161 = xor i32 %160, -1
  %162 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %163 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = and i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %167 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %166, i32 0, i32 4
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %152
  %174 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %175 = call i32 @cbq_activate_class(%struct.cbq_class* %174)
  br label %176

176:                                              ; preds = %173, %152
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %220

177:                                              ; preds = %147
  %178 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %179 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %180 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %179, i32 0, i32 2
  %181 = load %struct.cbq_class**, %struct.cbq_class*** %180, align 8
  %182 = load i32, i32* %5, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.cbq_class*, %struct.cbq_class** %181, i64 %183
  store %struct.cbq_class* %178, %struct.cbq_class** %184, align 8
  br label %185

185:                                              ; preds = %177, %136
  %186 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %187 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %186, i32 0, i32 4
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %185
  %194 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %195 = call i32 @cbq_activate_class(%struct.cbq_class* %194)
  br label %196

196:                                              ; preds = %193, %185
  %197 = load %struct.cbq_class*, %struct.cbq_class** %8, align 8
  store %struct.cbq_class* %197, %struct.cbq_class** %9, align 8
  br label %198

198:                                              ; preds = %196, %130
  br label %199

199:                                              ; preds = %198, %45
  %200 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  store %struct.cbq_class* %200, %struct.cbq_class** %8, align 8
  %201 = load %struct.cbq_class*, %struct.cbq_class** %9, align 8
  %202 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %201, i32 0, i32 3
  %203 = load %struct.cbq_class*, %struct.cbq_class** %202, align 8
  store %struct.cbq_class* %203, %struct.cbq_class** %9, align 8
  br label %204

204:                                              ; preds = %199
  %205 = load %struct.cbq_class*, %struct.cbq_class** %8, align 8
  %206 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %207 = icmp ne %struct.cbq_class* %205, %206
  br i1 %207, label %26, label %208

208:                                              ; preds = %204
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %11, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %25, label %212

212:                                              ; preds = %209
  %213 = load %struct.cbq_class*, %struct.cbq_class** %8, align 8
  %214 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %215 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %214, i32 0, i32 2
  %216 = load %struct.cbq_class**, %struct.cbq_class*** %215, align 8
  %217 = load i32, i32* %5, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.cbq_class*, %struct.cbq_class** %216, i64 %218
  store %struct.cbq_class* %213, %struct.cbq_class** %219, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %220

220:                                              ; preds = %212, %176, %120
  %221 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %221
}

declare dso_local %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.cbq_class* @cbq_under_limit(%struct.cbq_class*) #1

declare dso_local i64 @qdisc_pkt_len(%struct.sk_buff*) #1

declare dso_local i32 @cbq_activate_class(%struct.cbq_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
