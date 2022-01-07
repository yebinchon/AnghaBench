; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_wb_update_dirty_ratelimit.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_wb_update_dirty_ratelimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirty_throttle_control = type { i64, i64, i64, i32, i32, i32, i32, %struct.bdi_writeback* }
%struct.bdi_writeback = type { i64, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HZ = common dso_local global i64 0, align 8
@RATELIMIT_CALC_SHIFT = common dso_local global i64 0, align 8
@BDI_CAP_STRICTLIMIT = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dirty_throttle_control*, i64, i64)* @wb_update_dirty_ratelimit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wb_update_dirty_ratelimit(%struct.dirty_throttle_control* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.dirty_throttle_control*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bdi_writeback*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.dirty_throttle_control* %0, %struct.dirty_throttle_control** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %20 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %4, align 8
  %21 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %20, i32 0, i32 7
  %22 = load %struct.bdi_writeback*, %struct.bdi_writeback** %21, align 8
  store %struct.bdi_writeback* %22, %struct.bdi_writeback** %7, align 8
  %23 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %4, align 8
  %24 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %4, align 8
  %27 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %4, align 8
  %30 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @dirty_freerun_ceiling(i32 %28, i32 %31)
  store i64 %32, i64* %9, align 8
  %33 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %4, align 8
  %34 = call i32 @dtc_dom(%struct.dirty_throttle_control* %33)
  %35 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %4, align 8
  %36 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @hard_dirty_limit(i32 %34, i32 %37)
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = add i64 %39, %40
  %42 = udiv i64 %41, 2
  store i64 %42, i64* %11, align 8
  %43 = load %struct.bdi_writeback*, %struct.bdi_writeback** %7, align 8
  %44 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %12, align 8
  %46 = load %struct.bdi_writeback*, %struct.bdi_writeback** %7, align 8
  %47 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %13, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.bdi_writeback*, %struct.bdi_writeback** %7, align 8
  %51 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = sub i64 %49, %52
  %54 = load i64, i64* @HZ, align 8
  %55 = mul i64 %53, %54
  %56 = load i64, i64* %6, align 8
  %57 = udiv i64 %55, %56
  store i64 %57, i64* %14, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %4, align 8
  %60 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = mul i64 %58, %61
  %63 = load i64, i64* @RATELIMIT_CALC_SHIFT, align 8
  %64 = lshr i64 %62, %63
  store i64 %64, i64* %15, align 8
  %65 = load i64, i64* %15, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %15, align 8
  %67 = load i64, i64* %15, align 8
  %68 = load i64, i64* %12, align 8
  %69 = mul i64 %67, %68
  %70 = load i64, i64* %14, align 8
  %71 = or i64 %70, 1
  %72 = call i64 @div_u64(i64 %69, i64 %71)
  store i64 %72, i64* %16, align 8
  %73 = load i64, i64* %16, align 8
  %74 = load i64, i64* %12, align 8
  %75 = icmp ugt i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %3
  %80 = load i64, i64* %12, align 8
  store i64 %80, i64* %16, align 8
  br label %81

81:                                               ; preds = %79, %3
  store i64 0, i64* %17, align 8
  %82 = load %struct.bdi_writeback*, %struct.bdi_writeback** %7, align 8
  %83 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %82, i32 0, i32 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @BDI_CAP_STRICTLIMIT, align 4
  %88 = and i32 %86, %87
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %115

91:                                               ; preds = %81
  %92 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %4, align 8
  %93 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %8, align 8
  %95 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %4, align 8
  %96 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ult i64 %97, 8
  br i1 %98, label %99, label %104

99:                                               ; preds = %91
  %100 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %4, align 8
  %101 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %11, align 8
  br label %114

104:                                              ; preds = %91
  %105 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %4, align 8
  %106 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.dirty_throttle_control*, %struct.dirty_throttle_control** %4, align 8
  %109 = getelementptr inbounds %struct.dirty_throttle_control, %struct.dirty_throttle_control* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %107, %110
  %112 = sdiv i32 %111, 2
  %113 = sext i32 %112 to i64
  store i64 %113, i64* %11, align 8
  br label %114

114:                                              ; preds = %104, %99
  br label %115

115:                                              ; preds = %114, %81
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* %11, align 8
  %118 = icmp ult i64 %116, %117
  br i1 %118, label %119, label %134

119:                                              ; preds = %115
  %120 = load %struct.bdi_writeback*, %struct.bdi_writeback** %7, align 8
  %121 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %16, align 8
  %124 = load i64, i64* %15, align 8
  %125 = call i64 @min3(i64 %122, i64 %123, i64 %124)
  store i64 %125, i64* %18, align 8
  %126 = load i64, i64* %13, align 8
  %127 = load i64, i64* %18, align 8
  %128 = icmp ult i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %119
  %130 = load i64, i64* %18, align 8
  %131 = load i64, i64* %13, align 8
  %132 = sub i64 %130, %131
  store i64 %132, i64* %17, align 8
  br label %133

133:                                              ; preds = %129, %119
  br label %149

134:                                              ; preds = %115
  %135 = load %struct.bdi_writeback*, %struct.bdi_writeback** %7, align 8
  %136 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %16, align 8
  %139 = load i64, i64* %15, align 8
  %140 = call i64 @max3(i64 %137, i64 %138, i64 %139)
  store i64 %140, i64* %18, align 8
  %141 = load i64, i64* %13, align 8
  %142 = load i64, i64* %18, align 8
  %143 = icmp ugt i64 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %134
  %145 = load i64, i64* %13, align 8
  %146 = load i64, i64* %18, align 8
  %147 = sub i64 %145, %146
  store i64 %147, i64* %17, align 8
  br label %148

148:                                              ; preds = %144, %134
  br label %149

149:                                              ; preds = %148, %133
  %150 = load i64, i64* %13, align 8
  %151 = load i64, i64* %17, align 8
  %152 = mul i64 2, %151
  %153 = add i64 %152, 1
  %154 = udiv i64 %150, %153
  store i64 %154, i64* %19, align 8
  %155 = load i64, i64* %19, align 8
  %156 = load i64, i64* @BITS_PER_LONG, align 8
  %157 = icmp ult i64 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %149
  %159 = load i64, i64* %17, align 8
  %160 = load i64, i64* %19, align 8
  %161 = lshr i64 %159, %160
  %162 = call i64 @DIV_ROUND_UP(i64 %161, i32 8)
  store i64 %162, i64* %17, align 8
  br label %164

163:                                              ; preds = %149
  store i64 0, i64* %17, align 8
  br label %164

164:                                              ; preds = %163, %158
  %165 = load i64, i64* %13, align 8
  %166 = load i64, i64* %16, align 8
  %167 = icmp ult i64 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = load i64, i64* %17, align 8
  %170 = load i64, i64* %13, align 8
  %171 = add i64 %170, %169
  store i64 %171, i64* %13, align 8
  br label %176

172:                                              ; preds = %164
  %173 = load i64, i64* %17, align 8
  %174 = load i64, i64* %13, align 8
  %175 = sub i64 %174, %173
  store i64 %175, i64* %13, align 8
  br label %176

176:                                              ; preds = %172, %168
  %177 = load i64, i64* %13, align 8
  %178 = call i64 @max(i64 %177, i64 1)
  %179 = load %struct.bdi_writeback*, %struct.bdi_writeback** %7, align 8
  %180 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %179, i32 0, i32 1
  store i64 %178, i64* %180, align 8
  %181 = load i64, i64* %16, align 8
  %182 = load %struct.bdi_writeback*, %struct.bdi_writeback** %7, align 8
  %183 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %182, i32 0, i32 3
  store i64 %181, i64* %183, align 8
  %184 = load %struct.bdi_writeback*, %struct.bdi_writeback** %7, align 8
  %185 = load i64, i64* %14, align 8
  %186 = load i64, i64* %15, align 8
  %187 = call i32 @trace_bdi_dirty_ratelimit(%struct.bdi_writeback* %184, i64 %185, i64 %186)
  ret void
}

declare dso_local i64 @dirty_freerun_ceiling(i32, i32) #1

declare dso_local i64 @hard_dirty_limit(i32, i32) #1

declare dso_local i32 @dtc_dom(%struct.dirty_throttle_control*) #1

declare dso_local i64 @div_u64(i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @min3(i64, i64, i64) #1

declare dso_local i64 @max3(i64, i64, i64) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @trace_bdi_dirty_ratelimit(%struct.bdi_writeback*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
