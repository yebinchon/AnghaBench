; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_meter.c_ovs_meter_execute.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_meter.c_ovs_meter_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datapath = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sw_flow_key = type { i32 }
%struct.dp_meter = type { i64, i32, i32, i32, %struct.dp_meter_band*, i64, %struct.TYPE_3__ }
%struct.dp_meter_band = type { i64, i64, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@OVS_METER_BAND_TYPE_DROP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_meter_execute(%struct.datapath* %0, %struct.sk_buff* %1, %struct.sw_flow_key* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.datapath*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sw_flow_key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dp_meter*, align 8
  %11 = alloca %struct.dp_meter_band*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.datapath* %0, %struct.datapath** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sw_flow_key* %2, %struct.sw_flow_key** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = call i32 (...) @ktime_get_ns()
  %21 = call i64 @div_u64(i32 %20, i32 1000000)
  store i64 %21, i64* %12, align 8
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %22 = load %struct.datapath*, %struct.datapath** %6, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call %struct.dp_meter* @lookup_meter(%struct.datapath* %22, i32 %23)
  store %struct.dp_meter* %24, %struct.dp_meter** %10, align 8
  %25 = load %struct.dp_meter*, %struct.dp_meter** %10, align 8
  %26 = icmp ne %struct.dp_meter* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %191

28:                                               ; preds = %4
  %29 = load %struct.dp_meter*, %struct.dp_meter** %10, align 8
  %30 = getelementptr inbounds %struct.dp_meter, %struct.dp_meter* %29, i32 0, i32 3
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load i64, i64* %12, align 8
  %33 = load %struct.dp_meter*, %struct.dp_meter** %10, align 8
  %34 = getelementptr inbounds %struct.dp_meter, %struct.dp_meter* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  store i64 %36, i64* %13, align 8
  %37 = load i64, i64* %13, align 8
  %38 = load %struct.dp_meter*, %struct.dp_meter** %10, align 8
  %39 = getelementptr inbounds %struct.dp_meter, %struct.dp_meter* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = icmp sgt i64 %37, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %28
  %44 = load %struct.dp_meter*, %struct.dp_meter** %10, align 8
  %45 = getelementptr inbounds %struct.dp_meter, %struct.dp_meter* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  br label %50

47:                                               ; preds = %28
  %48 = load i64, i64* %13, align 8
  %49 = trunc i64 %48 to i32
  br label %50

50:                                               ; preds = %47, %43
  %51 = phi i32 [ %46, %43 ], [ %49, %47 ]
  store i32 %51, i32* %14, align 4
  %52 = load i64, i64* %12, align 8
  %53 = load %struct.dp_meter*, %struct.dp_meter** %10, align 8
  %54 = getelementptr inbounds %struct.dp_meter, %struct.dp_meter* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.dp_meter*, %struct.dp_meter** %10, align 8
  %56 = getelementptr inbounds %struct.dp_meter, %struct.dp_meter* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.dp_meter*, %struct.dp_meter** %10, align 8
  %64 = getelementptr inbounds %struct.dp_meter, %struct.dp_meter* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %62
  store i32 %67, i32* %65, align 4
  %68 = load %struct.dp_meter*, %struct.dp_meter** %10, align 8
  %69 = getelementptr inbounds %struct.dp_meter, %struct.dp_meter* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %50
  %73 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %75, 8
  br label %78

77:                                               ; preds = %50
  br label %78

78:                                               ; preds = %77, %72
  %79 = phi i32 [ %76, %72 ], [ 1000, %77 ]
  store i32 %79, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %80

80:                                               ; preds = %151, %78
  %81 = load i32, i32* %16, align 4
  %82 = load %struct.dp_meter*, %struct.dp_meter** %10, align 8
  %83 = getelementptr inbounds %struct.dp_meter, %struct.dp_meter* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %154

86:                                               ; preds = %80
  %87 = load %struct.dp_meter*, %struct.dp_meter** %10, align 8
  %88 = getelementptr inbounds %struct.dp_meter, %struct.dp_meter* %87, i32 0, i32 4
  %89 = load %struct.dp_meter_band*, %struct.dp_meter_band** %88, align 8
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.dp_meter_band, %struct.dp_meter_band* %89, i64 %91
  store %struct.dp_meter_band* %92, %struct.dp_meter_band** %11, align 8
  %93 = load %struct.dp_meter_band*, %struct.dp_meter_band** %11, align 8
  %94 = getelementptr inbounds %struct.dp_meter_band, %struct.dp_meter_band* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.dp_meter_band*, %struct.dp_meter_band** %11, align 8
  %97 = getelementptr inbounds %struct.dp_meter_band, %struct.dp_meter_band* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %95, %98
  %100 = mul nsw i64 %99, 1000
  store i64 %100, i64* %19, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = load %struct.dp_meter_band*, %struct.dp_meter_band** %11, align 8
  %104 = getelementptr inbounds %struct.dp_meter_band, %struct.dp_meter_band* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = mul nsw i64 %102, %105
  %107 = load %struct.dp_meter_band*, %struct.dp_meter_band** %11, align 8
  %108 = getelementptr inbounds %struct.dp_meter_band, %struct.dp_meter_band* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %106
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %108, align 8
  %113 = load %struct.dp_meter_band*, %struct.dp_meter_band** %11, align 8
  %114 = getelementptr inbounds %struct.dp_meter_band, %struct.dp_meter_band* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* %19, align 8
  %118 = icmp sgt i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %86
  %120 = load i64, i64* %19, align 8
  %121 = trunc i64 %120 to i32
  %122 = load %struct.dp_meter_band*, %struct.dp_meter_band** %11, align 8
  %123 = getelementptr inbounds %struct.dp_meter_band, %struct.dp_meter_band* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %119, %86
  %125 = load %struct.dp_meter_band*, %struct.dp_meter_band** %11, align 8
  %126 = getelementptr inbounds %struct.dp_meter_band, %struct.dp_meter_band* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %15, align 4
  %129 = icmp sge i32 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %124
  %131 = load i32, i32* %15, align 4
  %132 = load %struct.dp_meter_band*, %struct.dp_meter_band** %11, align 8
  %133 = getelementptr inbounds %struct.dp_meter_band, %struct.dp_meter_band* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = sub nsw i32 %134, %131
  store i32 %135, i32* %133, align 8
  br label %150

136:                                              ; preds = %124
  %137 = load %struct.dp_meter_band*, %struct.dp_meter_band** %11, align 8
  %138 = getelementptr inbounds %struct.dp_meter_band, %struct.dp_meter_band* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %18, align 4
  %141 = sext i32 %140 to i64
  %142 = icmp sgt i64 %139, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %136
  %144 = load %struct.dp_meter_band*, %struct.dp_meter_band** %11, align 8
  %145 = getelementptr inbounds %struct.dp_meter_band, %struct.dp_meter_band* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %18, align 4
  %148 = load i32, i32* %16, align 4
  store i32 %148, i32* %17, align 4
  br label %149

149:                                              ; preds = %143, %136
  br label %150

150:                                              ; preds = %149, %130
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %16, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %16, align 4
  br label %80

154:                                              ; preds = %80
  %155 = load i32, i32* %17, align 4
  %156 = icmp sge i32 %155, 0
  br i1 %156, label %157, label %187

157:                                              ; preds = %154
  %158 = load %struct.dp_meter*, %struct.dp_meter** %10, align 8
  %159 = getelementptr inbounds %struct.dp_meter, %struct.dp_meter* %158, i32 0, i32 4
  %160 = load %struct.dp_meter_band*, %struct.dp_meter_band** %159, align 8
  %161 = load i32, i32* %17, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.dp_meter_band, %struct.dp_meter_band* %160, i64 %162
  store %struct.dp_meter_band* %163, %struct.dp_meter_band** %11, align 8
  %164 = load %struct.dp_meter_band*, %struct.dp_meter_band** %11, align 8
  %165 = getelementptr inbounds %struct.dp_meter_band, %struct.dp_meter_band* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 8
  %169 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %170 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.dp_meter_band*, %struct.dp_meter_band** %11, align 8
  %173 = getelementptr inbounds %struct.dp_meter_band, %struct.dp_meter_band* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, %171
  store i32 %176, i32* %174, align 4
  %177 = load %struct.dp_meter_band*, %struct.dp_meter_band** %11, align 8
  %178 = getelementptr inbounds %struct.dp_meter_band, %struct.dp_meter_band* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @OVS_METER_BAND_TYPE_DROP, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %157
  %183 = load %struct.dp_meter*, %struct.dp_meter** %10, align 8
  %184 = getelementptr inbounds %struct.dp_meter, %struct.dp_meter* %183, i32 0, i32 3
  %185 = call i32 @spin_unlock(i32* %184)
  store i32 1, i32* %5, align 4
  br label %191

186:                                              ; preds = %157
  br label %187

187:                                              ; preds = %186, %154
  %188 = load %struct.dp_meter*, %struct.dp_meter** %10, align 8
  %189 = getelementptr inbounds %struct.dp_meter, %struct.dp_meter* %188, i32 0, i32 3
  %190 = call i32 @spin_unlock(i32* %189)
  store i32 0, i32* %5, align 4
  br label %191

191:                                              ; preds = %187, %182, %27
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

declare dso_local i64 @div_u64(i32, i32) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local %struct.dp_meter* @lookup_meter(%struct.datapath*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
