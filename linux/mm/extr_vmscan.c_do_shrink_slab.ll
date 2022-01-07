; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmscan.c_do_shrink_slab.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmscan.c_do_shrink_slab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shrink_control = type { i32, i64, i64 }
%struct.shrinker = type { i64, i32, i64 (%struct.shrinker*, %struct.shrink_control.0*)*, i64 (%struct.shrinker*, %struct.shrink_control.1*)*, i32*, i32 }
%struct.shrink_control.0 = type opaque
%struct.shrink_control.1 = type opaque

@SHRINK_BATCH = common dso_local global i64 0, align 8
@SHRINKER_NUMA_AWARE = common dso_local global i32 0, align 4
@SHRINK_EMPTY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"shrink_slab: %pS negative objects to delete nr=%ld\0A\00", align 1
@SHRINK_STOP = common dso_local global i64 0, align 8
@SLABS_SCANNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.shrink_control*, %struct.shrinker*, i32)* @do_shrink_slab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_shrink_slab(%struct.shrink_control* %0, %struct.shrinker* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.shrink_control*, align 8
  %6 = alloca %struct.shrinker*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.shrink_control* %0, %struct.shrink_control** %5, align 8
  store %struct.shrinker* %1, %struct.shrinker** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %20 = load %struct.shrink_control*, %struct.shrink_control** %5, align 8
  %21 = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %14, align 4
  %23 = load %struct.shrinker*, %struct.shrinker** %6, align 8
  %24 = getelementptr inbounds %struct.shrinker, %struct.shrinker* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load %struct.shrinker*, %struct.shrinker** %6, align 8
  %29 = getelementptr inbounds %struct.shrinker, %struct.shrinker* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  br label %33

31:                                               ; preds = %3
  %32 = load i64, i64* @SHRINK_BATCH, align 8
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi i64 [ %30, %27 ], [ %32, %31 ]
  store i64 %34, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %35 = load %struct.shrinker*, %struct.shrinker** %6, align 8
  %36 = getelementptr inbounds %struct.shrinker, %struct.shrinker* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SHRINKER_NUMA_AWARE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  store i32 0, i32* %14, align 4
  br label %42

42:                                               ; preds = %41, %33
  %43 = load %struct.shrinker*, %struct.shrinker** %6, align 8
  %44 = getelementptr inbounds %struct.shrinker, %struct.shrinker* %43, i32 0, i32 2
  %45 = load i64 (%struct.shrinker*, %struct.shrink_control.0*)*, i64 (%struct.shrinker*, %struct.shrink_control.0*)** %44, align 8
  %46 = load %struct.shrinker*, %struct.shrinker** %6, align 8
  %47 = load %struct.shrink_control*, %struct.shrink_control** %5, align 8
  %48 = bitcast %struct.shrink_control* %47 to %struct.shrink_control.0*
  %49 = call i64 %45(%struct.shrinker* %46, %struct.shrink_control.0* %48)
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %11, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %42
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* @SHRINK_EMPTY, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52, %42
  %57 = load i64, i64* %11, align 8
  store i64 %57, i64* %4, align 8
  br label %221

58:                                               ; preds = %52
  %59 = load %struct.shrinker*, %struct.shrinker** %6, align 8
  %60 = getelementptr inbounds %struct.shrinker, %struct.shrinker* %59, i32 0, i32 4
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = call i64 @atomic_long_xchg(i32* %64, i32 0)
  store i64 %65, i64* %12, align 8
  %66 = load i64, i64* %12, align 8
  store i64 %66, i64* %10, align 8
  %67 = load %struct.shrinker*, %struct.shrinker** %6, align 8
  %68 = getelementptr inbounds %struct.shrinker, %struct.shrinker* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %58
  %72 = load i64, i64* %11, align 8
  %73 = load i32, i32* %7, align 4
  %74 = zext i32 %73 to i64
  %75 = ashr i64 %72, %74
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %9, align 8
  %77 = mul i64 %76, 4
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.shrinker*, %struct.shrinker** %6, align 8
  %80 = getelementptr inbounds %struct.shrinker, %struct.shrinker* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @do_div(i64 %78, i32 %81)
  br label %86

83:                                               ; preds = %58
  %84 = load i64, i64* %11, align 8
  %85 = sdiv i64 %84, 2
  store i64 %85, i64* %9, align 8
  br label %86

86:                                               ; preds = %83, %71
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %10, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %10, align 8
  %90 = load i64, i64* %10, align 8
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %86
  %93 = load %struct.shrinker*, %struct.shrinker** %6, align 8
  %94 = getelementptr inbounds %struct.shrinker, %struct.shrinker* %93, i32 0, i32 3
  %95 = load i64 (%struct.shrinker*, %struct.shrink_control.1*)*, i64 (%struct.shrinker*, %struct.shrink_control.1*)** %94, align 8
  %96 = bitcast i64 (%struct.shrinker*, %struct.shrink_control.1*)* %95 to i64 (%struct.shrinker*, %struct.shrink_control*)*
  %97 = load i64, i64* %10, align 8
  %98 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 (%struct.shrinker*, %struct.shrink_control*)* %96, i64 %97)
  %99 = load i64, i64* %11, align 8
  store i64 %99, i64* %10, align 8
  %100 = load i64, i64* %12, align 8
  store i64 %100, i64* %17, align 8
  br label %103

101:                                              ; preds = %86
  %102 = load i64, i64* %10, align 8
  store i64 %102, i64* %17, align 8
  br label %103

103:                                              ; preds = %101, %92
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %11, align 8
  %106 = sdiv i64 %105, 4
  %107 = icmp ult i64 %104, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load i64, i64* %10, align 8
  %110 = load i64, i64* %11, align 8
  %111 = sdiv i64 %110, 2
  %112 = call i8* @min(i64 %109, i64 %111)
  %113 = ptrtoint i8* %112 to i64
  store i64 %113, i64* %10, align 8
  br label %114

114:                                              ; preds = %108, %103
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* %11, align 8
  %117 = mul nsw i64 %116, 2
  %118 = icmp sgt i64 %115, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i64, i64* %11, align 8
  %121 = mul nsw i64 %120, 2
  store i64 %121, i64* %10, align 8
  br label %122

122:                                              ; preds = %119, %114
  %123 = load %struct.shrinker*, %struct.shrinker** %6, align 8
  %124 = load %struct.shrink_control*, %struct.shrink_control** %5, align 8
  %125 = load i64, i64* %12, align 8
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* %9, align 8
  %128 = load i64, i64* %10, align 8
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @trace_mm_shrink_slab_start(%struct.shrinker* %123, %struct.shrink_control* %124, i64 %125, i64 %126, i64 %127, i64 %128, i32 %129)
  br label %131

131:                                              ; preds = %163, %122
  %132 = load i64, i64* %10, align 8
  %133 = load i64, i64* %15, align 8
  %134 = icmp sge i64 %132, %133
  br i1 %134, label %139, label %135

135:                                              ; preds = %131
  %136 = load i64, i64* %10, align 8
  %137 = load i64, i64* %11, align 8
  %138 = icmp sge i64 %136, %137
  br label %139

139:                                              ; preds = %135, %131
  %140 = phi i1 [ true, %131 ], [ %138, %135 ]
  br i1 %140, label %141, label %183

141:                                              ; preds = %139
  %142 = load i64, i64* %15, align 8
  %143 = load i64, i64* %10, align 8
  %144 = call i8* @min(i64 %142, i64 %143)
  %145 = ptrtoint i8* %144 to i64
  store i64 %145, i64* %19, align 8
  %146 = load i64, i64* %19, align 8
  %147 = load %struct.shrink_control*, %struct.shrink_control** %5, align 8
  %148 = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  %149 = load i64, i64* %19, align 8
  %150 = load %struct.shrink_control*, %struct.shrink_control** %5, align 8
  %151 = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %150, i32 0, i32 2
  store i64 %149, i64* %151, align 8
  %152 = load %struct.shrinker*, %struct.shrinker** %6, align 8
  %153 = getelementptr inbounds %struct.shrinker, %struct.shrinker* %152, i32 0, i32 3
  %154 = load i64 (%struct.shrinker*, %struct.shrink_control.1*)*, i64 (%struct.shrinker*, %struct.shrink_control.1*)** %153, align 8
  %155 = load %struct.shrinker*, %struct.shrinker** %6, align 8
  %156 = load %struct.shrink_control*, %struct.shrink_control** %5, align 8
  %157 = bitcast %struct.shrink_control* %156 to %struct.shrink_control.1*
  %158 = call i64 %154(%struct.shrinker* %155, %struct.shrink_control.1* %157)
  store i64 %158, i64* %18, align 8
  %159 = load i64, i64* %18, align 8
  %160 = load i64, i64* @SHRINK_STOP, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %141
  br label %183

163:                                              ; preds = %141
  %164 = load i64, i64* %18, align 8
  %165 = load i64, i64* %8, align 8
  %166 = add i64 %165, %164
  store i64 %166, i64* %8, align 8
  %167 = load i32, i32* @SLABS_SCANNED, align 4
  %168 = load %struct.shrink_control*, %struct.shrink_control** %5, align 8
  %169 = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @count_vm_events(i32 %167, i64 %170)
  %172 = load %struct.shrink_control*, %struct.shrink_control** %5, align 8
  %173 = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* %10, align 8
  %176 = sub i64 %175, %174
  store i64 %176, i64* %10, align 8
  %177 = load %struct.shrink_control*, %struct.shrink_control** %5, align 8
  %178 = getelementptr inbounds %struct.shrink_control, %struct.shrink_control* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %16, align 8
  %181 = add i64 %180, %179
  store i64 %181, i64* %16, align 8
  %182 = call i32 (...) @cond_resched()
  br label %131

183:                                              ; preds = %162, %139
  %184 = load i64, i64* %17, align 8
  %185 = load i64, i64* %16, align 8
  %186 = icmp sge i64 %184, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = load i64, i64* %16, align 8
  %189 = load i64, i64* %17, align 8
  %190 = sub nsw i64 %189, %188
  store i64 %190, i64* %17, align 8
  br label %192

191:                                              ; preds = %183
  store i64 0, i64* %17, align 8
  br label %192

192:                                              ; preds = %191, %187
  %193 = load i64, i64* %17, align 8
  %194 = icmp sgt i64 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %192
  %196 = load i64, i64* %17, align 8
  %197 = load %struct.shrinker*, %struct.shrinker** %6, align 8
  %198 = getelementptr inbounds %struct.shrinker, %struct.shrinker* %197, i32 0, i32 4
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %14, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = call i64 @atomic_long_add_return(i64 %196, i32* %202)
  store i64 %203, i64* %13, align 8
  br label %212

204:                                              ; preds = %192
  %205 = load %struct.shrinker*, %struct.shrinker** %6, align 8
  %206 = getelementptr inbounds %struct.shrinker, %struct.shrinker* %205, i32 0, i32 4
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %14, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = call i64 @atomic_long_read(i32* %210)
  store i64 %211, i64* %13, align 8
  br label %212

212:                                              ; preds = %204, %195
  %213 = load %struct.shrinker*, %struct.shrinker** %6, align 8
  %214 = load i32, i32* %14, align 4
  %215 = load i64, i64* %8, align 8
  %216 = load i64, i64* %12, align 8
  %217 = load i64, i64* %13, align 8
  %218 = load i64, i64* %10, align 8
  %219 = call i32 @trace_mm_shrink_slab_end(%struct.shrinker* %213, i32 %214, i64 %215, i64 %216, i64 %217, i64 %218)
  %220 = load i64, i64* %8, align 8
  store i64 %220, i64* %4, align 8
  br label %221

221:                                              ; preds = %212, %56
  %222 = load i64, i64* %4, align 8
  ret i64 %222
}

declare dso_local i64 @atomic_long_xchg(i32*, i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @pr_err(i8*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64) #1

declare dso_local i8* @min(i64, i64) #1

declare dso_local i32 @trace_mm_shrink_slab_start(%struct.shrinker*, %struct.shrink_control*, i64, i64, i64, i64, i32) #1

declare dso_local i32 @count_vm_events(i32, i64) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @atomic_long_add_return(i64, i32*) #1

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i32 @trace_mm_shrink_slab_end(%struct.shrinker*, i32, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
