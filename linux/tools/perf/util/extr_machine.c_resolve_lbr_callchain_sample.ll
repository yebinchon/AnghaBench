; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_resolve_lbr_callchain_sample.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_resolve_lbr_callchain_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.thread = type { i32 }
%struct.callchain_cursor = type { i32 }
%struct.perf_sample = type { %struct.branch_stack*, %struct.ip_callchain* }
%struct.branch_stack = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, %struct.branch_flags }
%struct.branch_flags = type { i32 }
%struct.ip_callchain = type { i64*, i64 }
%struct.symbol = type { i32 }
%struct.addr_location = type { i32 }

@PERF_RECORD_MISC_USER = common dso_local global i32 0, align 4
@PERF_CONTEXT_USER = common dso_local global i64 0, align 8
@callchain_param = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ORDER_CALLEE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.callchain_cursor*, %struct.perf_sample*, %struct.symbol**, %struct.addr_location*, i32)* @resolve_lbr_callchain_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_lbr_callchain_sample(%struct.thread* %0, %struct.callchain_cursor* %1, %struct.perf_sample* %2, %struct.symbol** %3, %struct.addr_location* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.callchain_cursor*, align 8
  %10 = alloca %struct.perf_sample*, align 8
  %11 = alloca %struct.symbol**, align 8
  %12 = alloca %struct.addr_location*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ip_callchain*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.branch_stack*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.branch_flags*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %8, align 8
  store %struct.callchain_cursor* %1, %struct.callchain_cursor** %9, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %10, align 8
  store %struct.symbol** %3, %struct.symbol*** %11, align 8
  store %struct.addr_location* %4, %struct.addr_location** %12, align 8
  store i32 %5, i32* %13, align 4
  %28 = load %struct.perf_sample*, %struct.perf_sample** %10, align 8
  %29 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %28, i32 0, i32 1
  %30 = load %struct.ip_callchain*, %struct.ip_callchain** %29, align 8
  store %struct.ip_callchain* %30, %struct.ip_callchain** %14, align 8
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.ip_callchain*, %struct.ip_callchain** %14, align 8
  %33 = getelementptr inbounds %struct.ip_callchain, %struct.ip_callchain* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @min(i32 %31, i32 %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* @PERF_RECORD_MISC_USER, align 4
  store i32 %37, i32* %17, align 4
  store i64 0, i64* %19, align 8
  store i32 0, i32* %16, align 4
  br label %38

38:                                               ; preds = %54, %6
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load %struct.ip_callchain*, %struct.ip_callchain** %14, align 8
  %44 = getelementptr inbounds %struct.ip_callchain, %struct.ip_callchain* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PERF_CONTEXT_USER, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %57

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %16, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %16, align 4
  br label %38

57:                                               ; preds = %52, %38
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %225

61:                                               ; preds = %57
  %62 = load %struct.perf_sample*, %struct.perf_sample** %10, align 8
  %63 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %62, i32 0, i32 0
  %64 = load %struct.branch_stack*, %struct.branch_stack** %63, align 8
  store %struct.branch_stack* %64, %struct.branch_stack** %20, align 8
  %65 = load %struct.branch_stack*, %struct.branch_stack** %20, align 8
  %66 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %21, align 4
  %68 = load i32, i32* %16, align 4
  %69 = add nsw i32 %68, 1
  %70 = load i32, i32* %21, align 4
  %71 = add nsw i32 %69, %70
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %26, align 4
  store i32 0, i32* %22, align 4
  br label %73

73:                                               ; preds = %221, %61
  %74 = load i32, i32* %22, align 4
  %75 = load i32, i32* %26, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %224

77:                                               ; preds = %73
  store i32 0, i32* %24, align 4
  store %struct.branch_flags* null, %struct.branch_flags** %25, align 8
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @callchain_param, i32 0, i32 0), align 8
  %79 = load i64, i64* @ORDER_CALLEE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %139

81:                                               ; preds = %77
  %82 = load i32, i32* %22, align 4
  %83 = load i32, i32* %16, align 4
  %84 = add nsw i32 %83, 1
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load %struct.ip_callchain*, %struct.ip_callchain** %14, align 8
  %88 = getelementptr inbounds %struct.ip_callchain, %struct.ip_callchain* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %22, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %18, align 8
  br label %138

94:                                               ; preds = %81
  %95 = load i32, i32* %22, align 4
  %96 = load i32, i32* %16, align 4
  %97 = add nsw i32 %96, 1
  %98 = icmp sgt i32 %95, %97
  br i1 %98, label %99, label %119

99:                                               ; preds = %94
  %100 = load i32, i32* %22, align 4
  %101 = load i32, i32* %16, align 4
  %102 = sub nsw i32 %100, %101
  %103 = sub nsw i32 %102, 2
  store i32 %103, i32* %23, align 4
  %104 = load %struct.branch_stack*, %struct.branch_stack** %20, align 8
  %105 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %104, i32 0, i32 1
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = load i32, i32* %23, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %18, align 8
  store i32 1, i32* %24, align 4
  %112 = load %struct.branch_stack*, %struct.branch_stack** %20, align 8
  %113 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %112, i32 0, i32 1
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = load i32, i32* %23, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 2
  store %struct.branch_flags* %118, %struct.branch_flags** %25, align 8
  br label %137

119:                                              ; preds = %94
  %120 = load %struct.branch_stack*, %struct.branch_stack** %20, align 8
  %121 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %120, i32 0, i32 1
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %18, align 8
  store i32 1, i32* %24, align 4
  %126 = load %struct.branch_stack*, %struct.branch_stack** %20, align 8
  %127 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %126, i32 0, i32 1
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 2
  store %struct.branch_flags* %130, %struct.branch_flags** %25, align 8
  %131 = load %struct.branch_stack*, %struct.branch_stack** %20, align 8
  %132 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %131, i32 0, i32 1
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %19, align 8
  br label %137

137:                                              ; preds = %119, %99
  br label %138

138:                                              ; preds = %137, %86
  br label %200

139:                                              ; preds = %77
  %140 = load i32, i32* %22, align 4
  %141 = load i32, i32* %21, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %163

143:                                              ; preds = %139
  %144 = load i32, i32* %21, align 4
  %145 = load i32, i32* %22, align 4
  %146 = sub nsw i32 %144, %145
  %147 = sub nsw i32 %146, 1
  store i32 %147, i32* %23, align 4
  %148 = load %struct.branch_stack*, %struct.branch_stack** %20, align 8
  %149 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %148, i32 0, i32 1
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = load i32, i32* %23, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %18, align 8
  store i32 1, i32* %24, align 4
  %156 = load %struct.branch_stack*, %struct.branch_stack** %20, align 8
  %157 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %156, i32 0, i32 1
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = load i32, i32* %23, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 2
  store %struct.branch_flags* %162, %struct.branch_flags** %25, align 8
  br label %199

163:                                              ; preds = %139
  %164 = load i32, i32* %22, align 4
  %165 = load i32, i32* %21, align 4
  %166 = icmp sgt i32 %164, %165
  br i1 %166, label %167, label %180

167:                                              ; preds = %163
  %168 = load %struct.ip_callchain*, %struct.ip_callchain** %14, align 8
  %169 = getelementptr inbounds %struct.ip_callchain, %struct.ip_callchain* %168, i32 0, i32 0
  %170 = load i64*, i64** %169, align 8
  %171 = load i32, i32* %16, align 4
  %172 = add nsw i32 %171, 1
  %173 = load i32, i32* %22, align 4
  %174 = load i32, i32* %21, align 4
  %175 = sub nsw i32 %173, %174
  %176 = sub nsw i32 %172, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %170, i64 %177
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %18, align 8
  br label %198

180:                                              ; preds = %163
  %181 = load %struct.branch_stack*, %struct.branch_stack** %20, align 8
  %182 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %181, i32 0, i32 1
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i64 0
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %18, align 8
  store i32 1, i32* %24, align 4
  %187 = load %struct.branch_stack*, %struct.branch_stack** %20, align 8
  %188 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %187, i32 0, i32 1
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i64 0
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 2
  store %struct.branch_flags* %191, %struct.branch_flags** %25, align 8
  %192 = load %struct.branch_stack*, %struct.branch_stack** %20, align 8
  %193 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %192, i32 0, i32 1
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i64 0
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %19, align 8
  br label %198

198:                                              ; preds = %180, %167
  br label %199

199:                                              ; preds = %198, %143
  br label %200

200:                                              ; preds = %199, %138
  %201 = load %struct.thread*, %struct.thread** %8, align 8
  %202 = load %struct.callchain_cursor*, %struct.callchain_cursor** %9, align 8
  %203 = load %struct.symbol**, %struct.symbol*** %11, align 8
  %204 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %205 = load i64, i64* %18, align 8
  %206 = load i32, i32* %24, align 4
  %207 = load %struct.branch_flags*, %struct.branch_flags** %25, align 8
  %208 = load i64, i64* %19, align 8
  %209 = call i32 @add_callchain_ip(%struct.thread* %201, %struct.callchain_cursor* %202, %struct.symbol** %203, %struct.addr_location* %204, i32* %17, i64 %205, i32 %206, %struct.branch_flags* %207, i32* null, i64 %208)
  store i32 %209, i32* %27, align 4
  %210 = load i32, i32* %27, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %220

212:                                              ; preds = %200
  %213 = load i32, i32* %27, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %212
  %216 = load i32, i32* %27, align 4
  br label %218

217:                                              ; preds = %212
  br label %218

218:                                              ; preds = %217, %215
  %219 = phi i32 [ %216, %215 ], [ 0, %217 ]
  store i32 %219, i32* %7, align 4
  br label %226

220:                                              ; preds = %200
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %22, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %22, align 4
  br label %73

224:                                              ; preds = %73
  store i32 1, i32* %7, align 4
  br label %226

225:                                              ; preds = %57
  store i32 0, i32* %7, align 4
  br label %226

226:                                              ; preds = %225, %224, %218
  %227 = load i32, i32* %7, align 4
  ret i32 %227
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @add_callchain_ip(%struct.thread*, %struct.callchain_cursor*, %struct.symbol**, %struct.addr_location*, i32*, i64, i32, %struct.branch_flags*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
