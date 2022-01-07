; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_tk_setup_internals.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_tk_setup_internals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timekeeper = type { i32, i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_3__, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, %struct.clocksource* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.clocksource* }
%struct.clocksource = type { i32, i32, i32 }

@NTP_INTERVAL_LENGTH = common dso_local global i32 0, align 4
@NTP_SCALE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timekeeper*, %struct.clocksource*)* @tk_setup_internals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tk_setup_internals(%struct.timekeeper* %0, %struct.clocksource* %1) #0 {
  %3 = alloca %struct.timekeeper*, align 8
  %4 = alloca %struct.clocksource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.clocksource*, align 8
  %9 = alloca i32, align 4
  store %struct.timekeeper* %0, %struct.timekeeper** %3, align 8
  store %struct.clocksource* %1, %struct.clocksource** %4, align 8
  %10 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %11 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %10, i32 0, i32 11
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 8
  %14 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %15 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %14, i32 0, i32 9
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 5
  %17 = load %struct.clocksource*, %struct.clocksource** %16, align 8
  store %struct.clocksource* %17, %struct.clocksource** %8, align 8
  %18 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %19 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %20 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %19, i32 0, i32 9
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 5
  store %struct.clocksource* %18, %struct.clocksource** %21, align 8
  %22 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %23 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %26 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %25, i32 0, i32 9
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 4
  store i32 %24, i32* %27, align 8
  %28 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %29 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %28, i32 0, i32 9
  %30 = call i32 @tk_clock_read(%struct.TYPE_4__* %29)
  %31 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %32 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %31, i32 0, i32 9
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  store i32 %30, i32* %33, align 4
  %34 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %35 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %36 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %35, i32 0, i32 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 5
  store %struct.clocksource* %34, %struct.clocksource** %37, align 8
  %38 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %39 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %42 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %41, i32 0, i32 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  store i32 %40, i32* %43, align 8
  %44 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %45 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %44, i32 0, i32 9
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %49 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %48, i32 0, i32 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @NTP_INTERVAL_LENGTH, align 4
  store i32 %51, i32* %6, align 4
  %52 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %53 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = shl i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %7, align 4
  %58 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %59 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 %60, 2
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %66 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @do_div(i32 %64, i32 %67)
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %72

72:                                               ; preds = %71, %2
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %76 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %79 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %77, %80
  %82 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %83 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %86 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %84, %87
  %89 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %90 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %93 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %91, %94
  %96 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %97 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load %struct.clocksource*, %struct.clocksource** %8, align 8
  %99 = icmp ne %struct.clocksource* %98, null
  br i1 %99, label %100, label %139

100:                                              ; preds = %72
  %101 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %102 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.clocksource*, %struct.clocksource** %8, align 8
  %105 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %103, %106
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %100
  %111 = load i32, i32* %9, align 4
  %112 = sub nsw i32 0, %111
  %113 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %114 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %113, i32 0, i32 9
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = ashr i32 %116, %112
  store i32 %117, i32* %115, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sub nsw i32 0, %118
  %120 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %121 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %120, i32 0, i32 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = ashr i32 %123, %119
  store i32 %124, i32* %122, align 8
  br label %138

125:                                              ; preds = %100
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %128 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %127, i32 0, i32 9
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = shl i32 %130, %126
  store i32 %131, i32* %129, align 8
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %134 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %133, i32 0, i32 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = shl i32 %136, %132
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %125, %110
  br label %139

139:                                              ; preds = %138, %72
  %140 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %141 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %144 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %143, i32 0, i32 9
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  store i32 %142, i32* %145, align 4
  %146 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %147 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %150 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %149, i32 0, i32 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  store i32 %148, i32* %151, align 4
  %152 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %153 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %152, i32 0, i32 10
  store i64 0, i64* %153, align 8
  %154 = load i32, i32* @NTP_SCALE_SHIFT, align 4
  %155 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %156 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = sub nsw i32 %154, %157
  %159 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %160 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %159, i32 0, i32 4
  store i32 %158, i32* %160, align 8
  %161 = load i32, i32* %7, align 4
  %162 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %163 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = shl i32 %161, %164
  %166 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %167 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %166, i32 0, i32 5
  store i32 %165, i32* %167, align 4
  %168 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %169 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %172 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %171, i32 0, i32 9
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 2
  store i32 %170, i32* %173, align 8
  %174 = load %struct.clocksource*, %struct.clocksource** %4, align 8
  %175 = getelementptr inbounds %struct.clocksource, %struct.clocksource* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %178 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %177, i32 0, i32 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 2
  store i32 %176, i32* %179, align 8
  %180 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %181 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %180, i32 0, i32 7
  store i64 0, i64* %181, align 8
  %182 = load %struct.timekeeper*, %struct.timekeeper** %3, align 8
  %183 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %182, i32 0, i32 6
  store i64 0, i64* %183, align 8
  ret void
}

declare dso_local i32 @tk_clock_read(%struct.TYPE_4__*) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
