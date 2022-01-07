; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_mmap_output.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_event_mmap_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.perf_mmap_event = type { %struct.TYPE_5__, i32, i32, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.perf_output_handle = type { i32 }
%struct.perf_sample_data = type { i32 }

@PERF_RECORD_MMAP2 = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i8*)* @perf_event_mmap_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_event_mmap_output(%struct.perf_event* %0, i8* %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.perf_mmap_event*, align 8
  %6 = alloca %struct.perf_output_handle, align 4
  %7 = alloca %struct.perf_sample_data, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.perf_mmap_event*
  store %struct.perf_mmap_event* %12, %struct.perf_mmap_event** %5, align 8
  %13 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %5, align 8
  %14 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %5, align 8
  %19 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @perf_event_mmap_match(%struct.perf_event* %23, i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %201

28:                                               ; preds = %2
  %29 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %30 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %88

34:                                               ; preds = %28
  %35 = load i32, i32* @PERF_RECORD_MMAP2, align 4
  %36 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %5, align 8
  %37 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 4
  %40 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %5, align 8
  %41 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %45, 16
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 4
  %48 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %5, align 8
  %49 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 %53, 16
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 4
  %56 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %5, align 8
  %57 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %61, 16
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 4
  %64 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %5, align 8
  %65 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 %69, 16
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 4
  %72 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %5, align 8
  %73 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = add i64 %77, 16
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  %80 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %5, align 8
  %81 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 %85, 16
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 4
  br label %88

88:                                               ; preds = %34, %28
  %89 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %5, align 8
  %90 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %93 = call i32 @perf_event_header__init_id(%struct.TYPE_6__* %91, %struct.perf_sample_data* %7, %struct.perf_event* %92)
  %94 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %95 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %5, align 8
  %96 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @perf_output_begin(%struct.perf_output_handle* %6, %struct.perf_event* %94, i32 %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %88
  br label %190

104:                                              ; preds = %88
  %105 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %106 = load i32, i32* @current, align 4
  %107 = call i32 @perf_event_pid(%struct.perf_event* %105, i32 %106)
  %108 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %5, align 8
  %109 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  store i32 %107, i32* %110, align 4
  %111 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %112 = load i32, i32* @current, align 4
  %113 = call i32 @perf_event_tid(%struct.perf_event* %111, i32 %112)
  %114 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %5, align 8
  %115 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 4
  %117 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %5, align 8
  %118 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %117, i32 0, i32 0
  %119 = bitcast %struct.TYPE_5__* %118 to { i64, i64 }*
  %120 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 4
  %122 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %119, i32 0, i32 1
  %123 = load i64, i64* %122, align 4
  %124 = call i32 @perf_output_put(%struct.perf_output_handle* %6, i64 %121, i64 %123)
  %125 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %126 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %179

130:                                              ; preds = %104
  %131 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %5, align 8
  %132 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %131, i32 0, i32 8
  %133 = bitcast %struct.TYPE_5__* %132 to { i64, i64 }*
  %134 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 4
  %136 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %133, i32 0, i32 1
  %137 = load i64, i64* %136, align 4
  %138 = call i32 @perf_output_put(%struct.perf_output_handle* %6, i64 %135, i64 %137)
  %139 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %5, align 8
  %140 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %139, i32 0, i32 7
  %141 = bitcast %struct.TYPE_5__* %140 to { i64, i64 }*
  %142 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 4
  %144 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %141, i32 0, i32 1
  %145 = load i64, i64* %144, align 4
  %146 = call i32 @perf_output_put(%struct.perf_output_handle* %6, i64 %143, i64 %145)
  %147 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %5, align 8
  %148 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %147, i32 0, i32 6
  %149 = bitcast %struct.TYPE_5__* %148 to { i64, i64 }*
  %150 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 4
  %152 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %149, i32 0, i32 1
  %153 = load i64, i64* %152, align 4
  %154 = call i32 @perf_output_put(%struct.perf_output_handle* %6, i64 %151, i64 %153)
  %155 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %5, align 8
  %156 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %155, i32 0, i32 5
  %157 = bitcast %struct.TYPE_5__* %156 to { i64, i64 }*
  %158 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 4
  %160 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %157, i32 0, i32 1
  %161 = load i64, i64* %160, align 4
  %162 = call i32 @perf_output_put(%struct.perf_output_handle* %6, i64 %159, i64 %161)
  %163 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %5, align 8
  %164 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %163, i32 0, i32 4
  %165 = bitcast %struct.TYPE_5__* %164 to { i64, i64 }*
  %166 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 4
  %168 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %165, i32 0, i32 1
  %169 = load i64, i64* %168, align 4
  %170 = call i32 @perf_output_put(%struct.perf_output_handle* %6, i64 %167, i64 %169)
  %171 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %5, align 8
  %172 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %171, i32 0, i32 3
  %173 = bitcast %struct.TYPE_5__* %172 to { i64, i64 }*
  %174 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 4
  %176 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %173, i32 0, i32 1
  %177 = load i64, i64* %176, align 4
  %178 = call i32 @perf_output_put(%struct.perf_output_handle* %6, i64 %175, i64 %177)
  br label %179

179:                                              ; preds = %130, %104
  %180 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %5, align 8
  %181 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %5, align 8
  %184 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @__output_copy(%struct.perf_output_handle* %6, i32 %182, i32 %185)
  %187 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %188 = call i32 @perf_event__output_id_sample(%struct.perf_event* %187, %struct.perf_output_handle* %6, %struct.perf_sample_data* %7)
  %189 = call i32 @perf_output_end(%struct.perf_output_handle* %6)
  br label %190

190:                                              ; preds = %179, %103
  %191 = load i32, i32* %8, align 4
  %192 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %5, align 8
  %193 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  store i32 %191, i32* %195, align 4
  %196 = load i32, i32* %9, align 4
  %197 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %5, align 8
  %198 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  store i32 %196, i32* %200, align 4
  br label %201

201:                                              ; preds = %190, %27
  ret void
}

declare dso_local i32 @perf_event_mmap_match(%struct.perf_event*, i8*) #1

declare dso_local i32 @perf_event_header__init_id(%struct.TYPE_6__*, %struct.perf_sample_data*, %struct.perf_event*) #1

declare dso_local i32 @perf_output_begin(%struct.perf_output_handle*, %struct.perf_event*, i32) #1

declare dso_local i32 @perf_event_pid(%struct.perf_event*, i32) #1

declare dso_local i32 @perf_event_tid(%struct.perf_event*, i32) #1

declare dso_local i32 @perf_output_put(%struct.perf_output_handle*, i64, i64) #1

declare dso_local i32 @__output_copy(%struct.perf_output_handle*, i32, i32) #1

declare dso_local i32 @perf_event__output_id_sample(%struct.perf_event*, %struct.perf_output_handle*, %struct.perf_sample_data*) #1

declare dso_local i32 @perf_output_end(%struct.perf_output_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
