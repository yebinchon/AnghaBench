; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__no_call_return.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_thread-stack.c_thread_stack__no_call_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.thread_stack = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.call_path* }
%struct.call_path = type { %struct.symbol* }
%struct.symbol = type { i32 }
%struct.TYPE_3__ = type { %struct.call_path_root* }
%struct.call_path_root = type { %struct.call_path }
%struct.perf_sample = type { i64, i64, i64 }
%struct.addr_location = type { %struct.symbol* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.thread_stack*, %struct.perf_sample*, %struct.addr_location*, %struct.addr_location*, i64)* @thread_stack__no_call_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_stack__no_call_return(%struct.thread* %0, %struct.thread_stack* %1, %struct.perf_sample* %2, %struct.addr_location* %3, %struct.addr_location* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.thread_stack*, align 8
  %10 = alloca %struct.perf_sample*, align 8
  %11 = alloca %struct.addr_location*, align 8
  %12 = alloca %struct.addr_location*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.call_path_root*, align 8
  %15 = alloca %struct.call_path*, align 8
  %16 = alloca %struct.symbol*, align 8
  %17 = alloca %struct.symbol*, align 8
  %18 = alloca %struct.call_path*, align 8
  %19 = alloca %struct.call_path*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %8, align 8
  store %struct.thread_stack* %1, %struct.thread_stack** %9, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %10, align 8
  store %struct.addr_location* %3, %struct.addr_location** %11, align 8
  store %struct.addr_location* %4, %struct.addr_location** %12, align 8
  store i64 %5, i64* %13, align 8
  %25 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %26 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %25, i32 0, i32 3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.call_path_root*, %struct.call_path_root** %28, align 8
  store %struct.call_path_root* %29, %struct.call_path_root** %14, align 8
  %30 = load %struct.call_path_root*, %struct.call_path_root** %14, align 8
  %31 = getelementptr inbounds %struct.call_path_root, %struct.call_path_root* %30, i32 0, i32 0
  store %struct.call_path* %31, %struct.call_path** %15, align 8
  %32 = load %struct.addr_location*, %struct.addr_location** %11, align 8
  %33 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %32, i32 0, i32 0
  %34 = load %struct.symbol*, %struct.symbol** %33, align 8
  store %struct.symbol* %34, %struct.symbol** %16, align 8
  %35 = load %struct.addr_location*, %struct.addr_location** %12, align 8
  %36 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %35, i32 0, i32 0
  %37 = load %struct.symbol*, %struct.symbol** %36, align 8
  store %struct.symbol* %37, %struct.symbol** %17, align 8
  %38 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %39 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %20, align 8
  %41 = load %struct.perf_sample*, %struct.perf_sample** %10, align 8
  %42 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %21, align 8
  %44 = load %struct.perf_sample*, %struct.perf_sample** %10, align 8
  %45 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %22, align 8
  %47 = load %struct.perf_sample*, %struct.perf_sample** %10, align 8
  %48 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %23, align 8
  %50 = load i64, i64* %23, align 8
  %51 = load i64, i64* %20, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %85

53:                                               ; preds = %6
  %54 = load i64, i64* %21, align 8
  %55 = load i64, i64* %20, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %85

57:                                               ; preds = %53
  %58 = load %struct.thread*, %struct.thread** %8, align 8
  %59 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %60 = load %struct.perf_sample*, %struct.perf_sample** %10, align 8
  %61 = load i64, i64* %13, align 8
  %62 = call i32 @thread_stack__pop_ks(%struct.thread* %58, %struct.thread_stack* %59, %struct.perf_sample* %60, i64 %61)
  store i32 %62, i32* %24, align 4
  %63 = load i32, i32* %24, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %24, align 4
  store i32 %66, i32* %7, align 4
  br label %241

67:                                               ; preds = %57
  %68 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %69 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %84, label %72

72:                                               ; preds = %67
  %73 = load %struct.call_path_root*, %struct.call_path_root** %14, align 8
  %74 = load %struct.call_path*, %struct.call_path** %15, align 8
  %75 = load %struct.symbol*, %struct.symbol** %17, align 8
  %76 = load i64, i64* %21, align 8
  %77 = load i64, i64* %20, align 8
  %78 = call %struct.call_path* @call_path__findnew(%struct.call_path_root* %73, %struct.call_path* %74, %struct.symbol* %75, i64 %76, i64 %77)
  store %struct.call_path* %78, %struct.call_path** %18, align 8
  %79 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %80 = load i64, i64* %22, align 8
  %81 = load i64, i64* %13, align 8
  %82 = load %struct.call_path*, %struct.call_path** %18, align 8
  %83 = call i32 @thread_stack__push_cp(%struct.thread_stack* %79, i64 0, i64 %80, i64 %81, %struct.call_path* %82, i32 1, i32 0)
  store i32 %83, i32* %7, align 4
  br label %241

84:                                               ; preds = %67
  br label %105

85:                                               ; preds = %53, %6
  %86 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %87 = call i64 @thread_stack__in_kernel(%struct.thread_stack* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %85
  %90 = load i64, i64* %23, align 8
  %91 = load i64, i64* %20, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %89
  %94 = load %struct.thread*, %struct.thread** %8, align 8
  %95 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %96 = load %struct.perf_sample*, %struct.perf_sample** %10, align 8
  %97 = load i64, i64* %13, align 8
  %98 = call i32 @thread_stack__pop_ks(%struct.thread* %94, %struct.thread_stack* %95, %struct.perf_sample* %96, i64 %97)
  store i32 %98, i32* %24, align 4
  %99 = load i32, i32* %24, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load i32, i32* %24, align 4
  store i32 %102, i32* %7, align 4
  br label %241

103:                                              ; preds = %93
  br label %104

104:                                              ; preds = %103, %89, %85
  br label %105

105:                                              ; preds = %104, %84
  %106 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %107 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %105
  %111 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %112 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %111, i32 0, i32 2
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %115 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load %struct.call_path*, %struct.call_path** %120, align 8
  store %struct.call_path* %121, %struct.call_path** %19, align 8
  br label %124

122:                                              ; preds = %105
  %123 = load %struct.call_path*, %struct.call_path** %15, align 8
  store %struct.call_path* %123, %struct.call_path** %19, align 8
  br label %124

124:                                              ; preds = %122, %110
  %125 = load %struct.call_path*, %struct.call_path** %19, align 8
  %126 = getelementptr inbounds %struct.call_path, %struct.call_path* %125, i32 0, i32 0
  %127 = load %struct.symbol*, %struct.symbol** %126, align 8
  %128 = load %struct.addr_location*, %struct.addr_location** %11, align 8
  %129 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %128, i32 0, i32 0
  %130 = load %struct.symbol*, %struct.symbol** %129, align 8
  %131 = icmp eq %struct.symbol* %127, %130
  br i1 %131, label %132, label %197

132:                                              ; preds = %124
  %133 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %134 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %152

137:                                              ; preds = %132
  %138 = load %struct.thread*, %struct.thread** %8, align 8
  %139 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %140 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %141 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %141, align 8
  %144 = load i64, i64* %22, align 8
  %145 = load i64, i64* %13, align 8
  %146 = call i32 @thread_stack__call_return(%struct.thread* %138, %struct.thread_stack* %139, i32 %143, i64 %144, i64 %145, i32 0)
  store i32 %146, i32* %24, align 4
  %147 = load i32, i32* %24, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %137
  %150 = load i32, i32* %24, align 4
  store i32 %150, i32* %7, align 4
  br label %241

151:                                              ; preds = %137
  br label %152

152:                                              ; preds = %151, %132
  %153 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %154 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %170, label %157

157:                                              ; preds = %152
  %158 = load %struct.call_path_root*, %struct.call_path_root** %14, align 8
  %159 = load %struct.call_path*, %struct.call_path** %15, align 8
  %160 = load %struct.symbol*, %struct.symbol** %17, align 8
  %161 = load i64, i64* %21, align 8
  %162 = load i64, i64* %20, align 8
  %163 = call %struct.call_path* @call_path__findnew(%struct.call_path_root* %158, %struct.call_path* %159, %struct.symbol* %160, i64 %161, i64 %162)
  store %struct.call_path* %163, %struct.call_path** %18, align 8
  %164 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %165 = load i64, i64* %21, align 8
  %166 = load i64, i64* %22, align 8
  %167 = load i64, i64* %13, align 8
  %168 = load %struct.call_path*, %struct.call_path** %18, align 8
  %169 = call i32 @thread_stack__push_cp(%struct.thread_stack* %164, i64 %165, i64 %166, i64 %167, %struct.call_path* %168, i32 1, i32 0)
  store i32 %169, i32* %7, align 4
  br label %241

170:                                              ; preds = %152
  %171 = load %struct.call_path_root*, %struct.call_path_root** %14, align 8
  %172 = load %struct.call_path*, %struct.call_path** %19, align 8
  %173 = load %struct.symbol*, %struct.symbol** %17, align 8
  %174 = load i64, i64* %21, align 8
  %175 = load i64, i64* %20, align 8
  %176 = call %struct.call_path* @call_path__findnew(%struct.call_path_root* %171, %struct.call_path* %172, %struct.symbol* %173, i64 %174, i64 %175)
  store %struct.call_path* %176, %struct.call_path** %18, align 8
  %177 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %178 = load i64, i64* %22, align 8
  %179 = load i64, i64* %13, align 8
  %180 = load %struct.call_path*, %struct.call_path** %18, align 8
  %181 = call i32 @thread_stack__push_cp(%struct.thread_stack* %177, i64 0, i64 %178, i64 %179, %struct.call_path* %180, i32 1, i32 0)
  store i32 %181, i32* %24, align 4
  %182 = load i32, i32* %24, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %195, label %184

184:                                              ; preds = %170
  %185 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %186 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %185, i32 0, i32 2
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %189 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = sub nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  store i32 1, i32* %194, align 8
  br label %195

195:                                              ; preds = %184, %170
  %196 = load i32, i32* %24, align 4
  store i32 %196, i32* %7, align 4
  br label %241

197:                                              ; preds = %124
  %198 = load %struct.call_path_root*, %struct.call_path_root** %14, align 8
  %199 = load %struct.call_path*, %struct.call_path** %19, align 8
  %200 = load %struct.symbol*, %struct.symbol** %17, align 8
  %201 = load i64, i64* %21, align 8
  %202 = load i64, i64* %20, align 8
  %203 = call %struct.call_path* @call_path__findnew(%struct.call_path_root* %198, %struct.call_path* %199, %struct.symbol* %200, i64 %201, i64 %202)
  store %struct.call_path* %203, %struct.call_path** %18, align 8
  %204 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %205 = load i64, i64* %21, align 8
  %206 = load i64, i64* %22, align 8
  %207 = load i64, i64* %13, align 8
  %208 = load %struct.call_path*, %struct.call_path** %18, align 8
  %209 = call i32 @thread_stack__push_cp(%struct.thread_stack* %204, i64 %205, i64 %206, i64 %207, %struct.call_path* %208, i32 1, i32 0)
  store i32 %209, i32* %24, align 4
  %210 = load i32, i32* %24, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %197
  %213 = load i32, i32* %24, align 4
  store i32 %213, i32* %7, align 4
  br label %241

214:                                              ; preds = %197
  %215 = load %struct.call_path_root*, %struct.call_path_root** %14, align 8
  %216 = load %struct.call_path*, %struct.call_path** %18, align 8
  %217 = load %struct.symbol*, %struct.symbol** %16, align 8
  %218 = load i64, i64* %23, align 8
  %219 = load i64, i64* %20, align 8
  %220 = call %struct.call_path* @call_path__findnew(%struct.call_path_root* %215, %struct.call_path* %216, %struct.symbol* %217, i64 %218, i64 %219)
  store %struct.call_path* %220, %struct.call_path** %18, align 8
  %221 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %222 = load i64, i64* %23, align 8
  %223 = load i64, i64* %22, align 8
  %224 = load i64, i64* %13, align 8
  %225 = load %struct.call_path*, %struct.call_path** %18, align 8
  %226 = call i32 @thread_stack__push_cp(%struct.thread_stack* %221, i64 %222, i64 %223, i64 %224, %struct.call_path* %225, i32 1, i32 0)
  store i32 %226, i32* %24, align 4
  %227 = load i32, i32* %24, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %214
  %230 = load i32, i32* %24, align 4
  store i32 %230, i32* %7, align 4
  br label %241

231:                                              ; preds = %214
  %232 = load %struct.thread*, %struct.thread** %8, align 8
  %233 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %234 = load %struct.thread_stack*, %struct.thread_stack** %9, align 8
  %235 = getelementptr inbounds %struct.thread_stack, %struct.thread_stack* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = add nsw i32 %236, -1
  store i32 %237, i32* %235, align 8
  %238 = load i64, i64* %22, align 8
  %239 = load i64, i64* %13, align 8
  %240 = call i32 @thread_stack__call_return(%struct.thread* %232, %struct.thread_stack* %233, i32 %237, i64 %238, i64 %239, i32 0)
  store i32 %240, i32* %7, align 4
  br label %241

241:                                              ; preds = %231, %229, %212, %195, %157, %149, %101, %72, %65
  %242 = load i32, i32* %7, align 4
  ret i32 %242
}

declare dso_local i32 @thread_stack__pop_ks(%struct.thread*, %struct.thread_stack*, %struct.perf_sample*, i64) #1

declare dso_local %struct.call_path* @call_path__findnew(%struct.call_path_root*, %struct.call_path*, %struct.symbol*, i64, i64) #1

declare dso_local i32 @thread_stack__push_cp(%struct.thread_stack*, i64, i64, i64, %struct.call_path*, i32, i32) #1

declare dso_local i64 @thread_stack__in_kernel(%struct.thread_stack*) #1

declare dso_local i32 @thread_stack__call_return(%struct.thread*, %struct.thread_stack*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
