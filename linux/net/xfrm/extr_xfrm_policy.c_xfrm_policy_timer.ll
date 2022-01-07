; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_policy_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@TIME64_MAX = common dso_local global i64 0, align 8
@XFRM_KM_TIMEOUT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@xp = common dso_local global %struct.xfrm_policy* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @xfrm_policy_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm_policy_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.xfrm_policy*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %12 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %13 = ptrtoint %struct.xfrm_policy* %12 to i32
  %14 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %15 = load i32, i32* @timer, align 4
  %16 = call %struct.xfrm_policy* @from_timer(i32 %13, %struct.timer_list* %14, i32 %15)
  store %struct.xfrm_policy* %16, %struct.xfrm_policy** %3, align 8
  %17 = call i64 (...) @ktime_get_real_seconds()
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* @TIME64_MAX, align 8
  store i64 %18, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %19 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %20 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %19, i32 0, i32 0
  %21 = call i32 @read_lock(i32* %20)
  %22 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %23 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %189

29:                                               ; preds = %1
  %30 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %31 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @xfrm_policy_id2dir(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %35 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %29
  %40 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %41 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %45 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %43, %47
  %49 = load i64, i64* %4, align 8
  %50 = sub nsw i64 %48, %49
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp sle i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %39
  br label %195

54:                                               ; preds = %39
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %5, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i64, i64* %8, align 8
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %58, %54
  br label %61

61:                                               ; preds = %60, %29
  %62 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %63 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %98

67:                                               ; preds = %61
  %68 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %69 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %73 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %83

78:                                               ; preds = %67
  %79 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %80 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  br label %83

83:                                               ; preds = %78, %77
  %84 = phi i64 [ %75, %77 ], [ %82, %78 ]
  %85 = add nsw i64 %71, %84
  %86 = load i64, i64* %4, align 8
  %87 = sub nsw i64 %85, %86
  store i64 %87, i64* %9, align 8
  %88 = load i64, i64* %9, align 8
  %89 = icmp sle i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %195

91:                                               ; preds = %83
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %5, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i64, i64* %9, align 8
  store i64 %96, i64* %5, align 8
  br label %97

97:                                               ; preds = %95, %91
  br label %98

98:                                               ; preds = %97, %61
  %99 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %100 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %127

104:                                              ; preds = %98
  %105 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %106 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %110 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %108, %112
  %114 = load i64, i64* %4, align 8
  %115 = sub nsw i64 %113, %114
  store i64 %115, i64* %10, align 8
  %116 = load i64, i64* %10, align 8
  %117 = icmp sle i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %104
  store i32 1, i32* %6, align 4
  %119 = load i64, i64* @XFRM_KM_TIMEOUT, align 8
  store i64 %119, i64* %10, align 8
  br label %120

120:                                              ; preds = %118, %104
  %121 = load i64, i64* %10, align 8
  %122 = load i64, i64* %5, align 8
  %123 = icmp slt i64 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i64, i64* %10, align 8
  store i64 %125, i64* %5, align 8
  br label %126

126:                                              ; preds = %124, %120
  br label %127

127:                                              ; preds = %126, %98
  %128 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %129 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %165

133:                                              ; preds = %127
  %134 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %135 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %139 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %133
  br label %149

144:                                              ; preds = %133
  %145 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %146 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  br label %149

149:                                              ; preds = %144, %143
  %150 = phi i64 [ %141, %143 ], [ %148, %144 ]
  %151 = add nsw i64 %137, %150
  %152 = load i64, i64* %4, align 8
  %153 = sub nsw i64 %151, %152
  store i64 %153, i64* %11, align 8
  %154 = load i64, i64* %11, align 8
  %155 = icmp sle i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  store i32 1, i32* %6, align 4
  %157 = load i64, i64* @XFRM_KM_TIMEOUT, align 8
  store i64 %157, i64* %11, align 8
  br label %158

158:                                              ; preds = %156, %149
  %159 = load i64, i64* %11, align 8
  %160 = load i64, i64* %5, align 8
  %161 = icmp slt i64 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = load i64, i64* %11, align 8
  store i64 %163, i64* %5, align 8
  br label %164

164:                                              ; preds = %162, %158
  br label %165

165:                                              ; preds = %164, %127
  %166 = load i32, i32* %6, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @km_policy_expired(%struct.xfrm_policy* %169, i32 %170, i32 0, i32 0)
  br label %172

172:                                              ; preds = %168, %165
  %173 = load i64, i64* %5, align 8
  %174 = load i64, i64* @TIME64_MAX, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %188

176:                                              ; preds = %172
  %177 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %178 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %177, i32 0, i32 1
  %179 = load i64, i64* @jiffies, align 8
  %180 = load i64, i64* %5, align 8
  %181 = call i64 @make_jiffies(i64 %180)
  %182 = add nsw i64 %179, %181
  %183 = call i32 @mod_timer(i32* %178, i64 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %176
  %186 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %187 = call i32 @xfrm_pol_hold(%struct.xfrm_policy* %186)
  br label %188

188:                                              ; preds = %185, %176, %172
  br label %189

189:                                              ; preds = %188, %28
  %190 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %191 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %190, i32 0, i32 0
  %192 = call i32 @read_unlock(i32* %191)
  %193 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %194 = call i32 @xfrm_pol_put(%struct.xfrm_policy* %193)
  br label %210

195:                                              ; preds = %90, %53
  %196 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %197 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %196, i32 0, i32 0
  %198 = call i32 @read_unlock(i32* %197)
  %199 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %200 = load i32, i32* %7, align 4
  %201 = call i32 @xfrm_policy_delete(%struct.xfrm_policy* %199, i32 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %207, label %203

203:                                              ; preds = %195
  %204 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %205 = load i32, i32* %7, align 4
  %206 = call i32 @km_policy_expired(%struct.xfrm_policy* %204, i32 %205, i32 1, i32 0)
  br label %207

207:                                              ; preds = %203, %195
  %208 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %209 = call i32 @xfrm_pol_put(%struct.xfrm_policy* %208)
  br label %210

210:                                              ; preds = %207, %189
  ret void
}

declare dso_local %struct.xfrm_policy* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @ktime_get_real_seconds(...) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xfrm_policy_id2dir(i32) #1

declare dso_local i32 @km_policy_expired(%struct.xfrm_policy*, i32, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @make_jiffies(i64) #1

declare dso_local i32 @xfrm_pol_hold(%struct.xfrm_policy*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @xfrm_pol_put(%struct.xfrm_policy*) #1

declare dso_local i32 @xfrm_policy_delete(%struct.xfrm_policy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
