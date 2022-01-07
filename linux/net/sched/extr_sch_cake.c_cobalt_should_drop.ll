; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cobalt_should_drop.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_cake.c_cobalt_should_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cobalt_vars = type { i32, i32, i32, i64, i8*, i32 }
%struct.cobalt_params = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cobalt_vars*, %struct.cobalt_params*, i8*, %struct.sk_buff*, i32)* @cobalt_should_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cobalt_should_drop(%struct.cobalt_vars* %0, %struct.cobalt_params* %1, i8* %2, %struct.sk_buff* %3, i32 %4) #0 {
  %6 = alloca %struct.cobalt_vars*, align 8
  %7 = alloca %struct.cobalt_params*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.cobalt_vars* %0, %struct.cobalt_vars** %6, align 8
  store %struct.cobalt_params* %1, %struct.cobalt_params** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %18 = call i8* @cobalt_get_enqueue_time(%struct.sk_buff* %17)
  %19 = call i8* @ktime_sub(i8* %16, i8* %18)
  %20 = call i64 @ktime_to_ns(i8* %19)
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %15, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %24 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %23, i32 0, i32 4
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @ktime_sub(i8* %22, i8* %25)
  store i8* %26, i8** %14, align 8
  %27 = load i32, i32* %15, align 4
  %28 = load %struct.cobalt_params*, %struct.cobalt_params** %7, align 8
  %29 = getelementptr inbounds %struct.cobalt_params, %struct.cobalt_params* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %5
  %33 = load i32, i32* %15, align 4
  %34 = load %struct.cobalt_params*, %struct.cobalt_params** %7, align 8
  %35 = getelementptr inbounds %struct.cobalt_params, %struct.cobalt_params* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = mul nsw i32 %36, %37
  %39 = mul nsw i32 %38, 2
  %40 = icmp sgt i32 %33, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load i32, i32* %15, align 4
  %43 = load %struct.cobalt_params*, %struct.cobalt_params** %7, align 8
  %44 = getelementptr inbounds %struct.cobalt_params, %struct.cobalt_params* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %45, 4
  %47 = icmp sgt i32 %42, %46
  br label %48

48:                                               ; preds = %41, %32, %5
  %49 = phi i1 [ false, %32 ], [ false, %5 ], [ %47, %41 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %12, align 4
  %51 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %52 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load i8*, i8** %14, align 8
  %57 = call i64 @ktime_to_ns(i8* %56)
  %58 = icmp sge i64 %57, 0
  br label %59

59:                                               ; preds = %55, %48
  %60 = phi i1 [ false, %48 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %11, align 4
  %62 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %63 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %93

66:                                               ; preds = %59
  %67 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %68 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %66
  %72 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %73 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %72, i32 0, i32 2
  store i32 1, i32* %73, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load %struct.cobalt_params*, %struct.cobalt_params** %7, align 8
  %76 = getelementptr inbounds %struct.cobalt_params, %struct.cobalt_params* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %79 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @cobalt_control(i8* %74, i32 %77, i32 %80)
  %82 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %83 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %82, i32 0, i32 4
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %71, %66
  %85 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %86 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %91 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  br label %92

92:                                               ; preds = %89, %84
  br label %102

93:                                               ; preds = %59
  %94 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %95 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %100 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %99, i32 0, i32 2
  store i32 0, i32* %100, align 8
  br label %101

101:                                              ; preds = %98, %93
  br label %102

102:                                              ; preds = %101, %92
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %151

105:                                              ; preds = %102
  %106 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %107 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %151

110:                                              ; preds = %105
  %111 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %112 = call i32 @INET_ECN_set_ce(%struct.sk_buff* %111)
  %113 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %114 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = icmp ne i32 %112, 0
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %13, align 4
  %118 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %119 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 8
  %122 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %123 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %110
  %127 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %128 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %126, %110
  %132 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %133 = call i32 @cobalt_invsqrt(%struct.cobalt_vars* %132)
  %134 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %135 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %134, i32 0, i32 4
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.cobalt_params*, %struct.cobalt_params** %7, align 8
  %138 = getelementptr inbounds %struct.cobalt_params, %struct.cobalt_params* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %141 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 8
  %143 = call i8* @cobalt_control(i8* %136, i32 %139, i32 %142)
  %144 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %145 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %144, i32 0, i32 4
  store i8* %143, i8** %145, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %148 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %147, i32 0, i32 4
  %149 = load i8*, i8** %148, align 8
  %150 = call i8* @ktime_sub(i8* %146, i8* %149)
  store i8* %150, i8** %14, align 8
  br label %191

151:                                              ; preds = %105, %102
  br label %152

152:                                              ; preds = %187, %151
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %190

155:                                              ; preds = %152
  %156 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %157 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %157, align 8
  %160 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %161 = call i32 @cobalt_invsqrt(%struct.cobalt_vars* %160)
  %162 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %163 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %162, i32 0, i32 4
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.cobalt_params*, %struct.cobalt_params** %7, align 8
  %166 = getelementptr inbounds %struct.cobalt_params, %struct.cobalt_params* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %169 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = call i8* @cobalt_control(i8* %164, i32 %167, i32 %170)
  %172 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %173 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %172, i32 0, i32 4
  store i8* %171, i8** %173, align 8
  %174 = load i8*, i8** %8, align 8
  %175 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %176 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %175, i32 0, i32 4
  %177 = load i8*, i8** %176, align 8
  %178 = call i8* @ktime_sub(i8* %174, i8* %177)
  store i8* %178, i8** %14, align 8
  %179 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %180 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %155
  %184 = load i8*, i8** %14, align 8
  %185 = call i64 @ktime_to_ns(i8* %184)
  %186 = icmp sge i64 %185, 0
  br label %187

187:                                              ; preds = %183, %155
  %188 = phi i1 [ false, %155 ], [ %186, %183 ]
  %189 = zext i1 %188 to i32
  store i32 %189, i32* %11, align 4
  br label %152

190:                                              ; preds = %152
  br label %191

191:                                              ; preds = %190, %131
  %192 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %193 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %191
  %197 = call i64 (...) @prandom_u32()
  %198 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %199 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = icmp slt i64 %197, %200
  %202 = zext i1 %201 to i32
  %203 = load i32, i32* %13, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %13, align 4
  br label %205

205:                                              ; preds = %196, %191
  %206 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %207 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %218, label %210

210:                                              ; preds = %205
  %211 = load i8*, i8** %8, align 8
  %212 = load %struct.cobalt_params*, %struct.cobalt_params** %7, align 8
  %213 = getelementptr inbounds %struct.cobalt_params, %struct.cobalt_params* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = call i8* @ktime_add_ns(i8* %211, i32 %214)
  %216 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %217 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %216, i32 0, i32 4
  store i8* %215, i8** %217, align 8
  br label %230

218:                                              ; preds = %205
  %219 = load i8*, i8** %14, align 8
  %220 = call i64 @ktime_to_ns(i8* %219)
  %221 = icmp sgt i64 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %218
  %223 = load i32, i32* %13, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %229, label %225

225:                                              ; preds = %222
  %226 = load i8*, i8** %8, align 8
  %227 = load %struct.cobalt_vars*, %struct.cobalt_vars** %6, align 8
  %228 = getelementptr inbounds %struct.cobalt_vars, %struct.cobalt_vars* %227, i32 0, i32 4
  store i8* %226, i8** %228, align 8
  br label %229

229:                                              ; preds = %225, %222, %218
  br label %230

230:                                              ; preds = %229, %210
  %231 = load i32, i32* %13, align 4
  ret i32 %231
}

declare dso_local i64 @ktime_to_ns(i8*) #1

declare dso_local i8* @ktime_sub(i8*, i8*) #1

declare dso_local i8* @cobalt_get_enqueue_time(%struct.sk_buff*) #1

declare dso_local i8* @cobalt_control(i8*, i32, i32) #1

declare dso_local i32 @INET_ECN_set_ce(%struct.sk_buff*) #1

declare dso_local i32 @cobalt_invsqrt(%struct.cobalt_vars*) #1

declare dso_local i64 @prandom_u32(...) #1

declare dso_local i8* @ktime_add_ns(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
