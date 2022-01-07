; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_vsyscall.c_update_vsyscall.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_vsyscall.c_update_vsyscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timekeeper = type { %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.vdso_data = type { %struct.vdso_timestamp*, i8* }
%struct.vdso_timestamp = type { i32, i64 }

@CS_HRES_COARSE = common dso_local global i64 0, align 8
@CS_RAW = common dso_local global i64 0, align 8
@CLOCK_REALTIME_COARSE = common dso_local global i64 0, align 8
@CLOCK_MONOTONIC_COARSE = common dso_local global i64 0, align 8
@NSEC_PER_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_vsyscall(%struct.timekeeper* %0) #0 {
  %2 = alloca %struct.timekeeper*, align 8
  %3 = alloca %struct.vdso_data*, align 8
  %4 = alloca %struct.vdso_timestamp*, align 8
  %5 = alloca i32, align 4
  store %struct.timekeeper* %0, %struct.timekeeper** %2, align 8
  %6 = call %struct.vdso_data* (...) @__arch_get_k_vdso_data()
  store %struct.vdso_data* %6, %struct.vdso_data** %3, align 8
  %7 = call i64 (...) @__arch_update_vdso_data()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %99

10:                                               ; preds = %1
  %11 = load %struct.vdso_data*, %struct.vdso_data** %3, align 8
  %12 = call i32 @vdso_write_begin(%struct.vdso_data* %11)
  %13 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %14 = call i8* @__arch_get_clock_mode(%struct.timekeeper* %13)
  %15 = load %struct.vdso_data*, %struct.vdso_data** %3, align 8
  %16 = load i64, i64* @CS_HRES_COARSE, align 8
  %17 = getelementptr inbounds %struct.vdso_data, %struct.vdso_data* %15, i64 %16
  %18 = getelementptr inbounds %struct.vdso_data, %struct.vdso_data* %17, i32 0, i32 1
  store i8* %14, i8** %18, align 8
  %19 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %20 = call i8* @__arch_get_clock_mode(%struct.timekeeper* %19)
  %21 = load %struct.vdso_data*, %struct.vdso_data** %3, align 8
  %22 = load i64, i64* @CS_RAW, align 8
  %23 = getelementptr inbounds %struct.vdso_data, %struct.vdso_data* %21, i64 %22
  %24 = getelementptr inbounds %struct.vdso_data, %struct.vdso_data* %23, i32 0, i32 1
  store i8* %20, i8** %24, align 8
  %25 = load %struct.vdso_data*, %struct.vdso_data** %3, align 8
  %26 = load i64, i64* @CS_HRES_COARSE, align 8
  %27 = getelementptr inbounds %struct.vdso_data, %struct.vdso_data* %25, i64 %26
  %28 = getelementptr inbounds %struct.vdso_data, %struct.vdso_data* %27, i32 0, i32 0
  %29 = load %struct.vdso_timestamp*, %struct.vdso_timestamp** %28, align 8
  %30 = load i64, i64* @CLOCK_REALTIME_COARSE, align 8
  %31 = getelementptr inbounds %struct.vdso_timestamp, %struct.vdso_timestamp* %29, i64 %30
  store %struct.vdso_timestamp* %31, %struct.vdso_timestamp** %4, align 8
  %32 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %33 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.vdso_timestamp*, %struct.vdso_timestamp** %4, align 8
  %36 = getelementptr inbounds %struct.vdso_timestamp, %struct.vdso_timestamp* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %38 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %42 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %40, %44
  %46 = load %struct.vdso_timestamp*, %struct.vdso_timestamp** %4, align 8
  %47 = getelementptr inbounds %struct.vdso_timestamp, %struct.vdso_timestamp* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.vdso_data*, %struct.vdso_data** %3, align 8
  %49 = load i64, i64* @CS_HRES_COARSE, align 8
  %50 = getelementptr inbounds %struct.vdso_data, %struct.vdso_data* %48, i64 %49
  %51 = getelementptr inbounds %struct.vdso_data, %struct.vdso_data* %50, i32 0, i32 0
  %52 = load %struct.vdso_timestamp*, %struct.vdso_timestamp** %51, align 8
  %53 = load i64, i64* @CLOCK_MONOTONIC_COARSE, align 8
  %54 = getelementptr inbounds %struct.vdso_timestamp, %struct.vdso_timestamp* %52, i64 %53
  store %struct.vdso_timestamp* %54, %struct.vdso_timestamp** %4, align 8
  %55 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %56 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %59 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %57, %61
  %63 = load %struct.vdso_timestamp*, %struct.vdso_timestamp** %4, align 8
  %64 = getelementptr inbounds %struct.vdso_timestamp, %struct.vdso_timestamp* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %66 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %70 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = ashr i32 %68, %72
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %76 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %74, %78
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @NSEC_PER_SEC, align 4
  %82 = load %struct.vdso_timestamp*, %struct.vdso_timestamp** %4, align 8
  %83 = getelementptr inbounds %struct.vdso_timestamp, %struct.vdso_timestamp* %82, i32 0, i32 0
  %84 = call i64 @__iter_div_u64_rem(i32 %80, i32 %81, i32* %83)
  %85 = load %struct.vdso_timestamp*, %struct.vdso_timestamp** %4, align 8
  %86 = getelementptr inbounds %struct.vdso_timestamp, %struct.vdso_timestamp* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, %84
  store i64 %88, i64* %86, align 8
  %89 = load %struct.vdso_data*, %struct.vdso_data** %3, align 8
  %90 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %91 = call i32 @update_vdso_data(%struct.vdso_data* %89, %struct.timekeeper* %90)
  %92 = load %struct.vdso_data*, %struct.vdso_data** %3, align 8
  %93 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %94 = call i32 @__arch_update_vsyscall(%struct.vdso_data* %92, %struct.timekeeper* %93)
  %95 = load %struct.vdso_data*, %struct.vdso_data** %3, align 8
  %96 = call i32 @vdso_write_end(%struct.vdso_data* %95)
  %97 = load %struct.vdso_data*, %struct.vdso_data** %3, align 8
  %98 = call i32 @__arch_sync_vdso_data(%struct.vdso_data* %97)
  br label %99

99:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.vdso_data* @__arch_get_k_vdso_data(...) #1

declare dso_local i64 @__arch_update_vdso_data(...) #1

declare dso_local i32 @vdso_write_begin(%struct.vdso_data*) #1

declare dso_local i8* @__arch_get_clock_mode(%struct.timekeeper*) #1

declare dso_local i64 @__iter_div_u64_rem(i32, i32, i32*) #1

declare dso_local i32 @update_vdso_data(%struct.vdso_data*, %struct.timekeeper*) #1

declare dso_local i32 @__arch_update_vsyscall(%struct.vdso_data*, %struct.timekeeper*) #1

declare dso_local i32 @vdso_write_end(%struct.vdso_data*) #1

declare dso_local i32 @__arch_sync_vdso_data(%struct.vdso_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
