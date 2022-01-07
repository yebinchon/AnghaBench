; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_logarithmic_accumulation.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_logarithmic_accumulation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timekeeper = type { i64, i64, i64, i64, i64, i64, i64, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@NSEC_PER_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.timekeeper*, i64, i64, i32*)* @logarithmic_accumulation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @logarithmic_accumulation(%struct.timekeeper* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.timekeeper*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.timekeeper* %0, %struct.timekeeper** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.timekeeper*, %struct.timekeeper** %6, align 8
  %13 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %8, align 8
  %16 = shl i64 %14, %15
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i64, i64* %7, align 8
  store i64 %21, i64* %5, align 8
  br label %119

22:                                               ; preds = %4
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %7, align 8
  %25 = sub nsw i64 %24, %23
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.timekeeper*, %struct.timekeeper** %6, align 8
  %28 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %27, i32 0, i32 9
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %26
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %29, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.timekeeper*, %struct.timekeeper** %6, align 8
  %36 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %35, i32 0, i32 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %34
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 8
  %42 = load %struct.timekeeper*, %struct.timekeeper** %6, align 8
  %43 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = shl i64 %44, %45
  %47 = load %struct.timekeeper*, %struct.timekeeper** %6, align 8
  %48 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %47, i32 0, i32 9
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, %46
  store i64 %51, i64* %49, align 8
  %52 = load %struct.timekeeper*, %struct.timekeeper** %6, align 8
  %53 = call i32 @accumulate_nsecs_to_secs(%struct.timekeeper* %52)
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 4
  %57 = load %struct.timekeeper*, %struct.timekeeper** %6, align 8
  %58 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = shl i64 %59, %60
  %62 = load %struct.timekeeper*, %struct.timekeeper** %6, align 8
  %63 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %62, i32 0, i32 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, %61
  store i64 %66, i64* %64, align 8
  %67 = load i64, i64* @NSEC_PER_SEC, align 8
  %68 = load %struct.timekeeper*, %struct.timekeeper** %6, align 8
  %69 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %68, i32 0, i32 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = shl i64 %67, %71
  store i64 %72, i64* %11, align 8
  br label %73

73:                                               ; preds = %80, %22
  %74 = load %struct.timekeeper*, %struct.timekeeper** %6, align 8
  %75 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %74, i32 0, i32 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %11, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %73
  %81 = load i64, i64* %11, align 8
  %82 = load %struct.timekeeper*, %struct.timekeeper** %6, align 8
  %83 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %82, i32 0, i32 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %85, %81
  store i64 %86, i64* %84, align 8
  %87 = load %struct.timekeeper*, %struct.timekeeper** %6, align 8
  %88 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  br label %73

91:                                               ; preds = %73
  %92 = load %struct.timekeeper*, %struct.timekeeper** %6, align 8
  %93 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %8, align 8
  %96 = shl i64 %94, %95
  %97 = load %struct.timekeeper*, %struct.timekeeper** %6, align 8
  %98 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, %96
  store i64 %100, i64* %98, align 8
  %101 = load %struct.timekeeper*, %struct.timekeeper** %6, align 8
  %102 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.timekeeper*, %struct.timekeeper** %6, align 8
  %105 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %103, %106
  %108 = load %struct.timekeeper*, %struct.timekeeper** %6, align 8
  %109 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %108, i32 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %8, align 8
  %112 = add nsw i64 %110, %111
  %113 = shl i64 %107, %112
  %114 = load %struct.timekeeper*, %struct.timekeeper** %6, align 8
  %115 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %116, %113
  store i64 %117, i64* %115, align 8
  %118 = load i64, i64* %7, align 8
  store i64 %118, i64* %5, align 8
  br label %119

119:                                              ; preds = %91, %20
  %120 = load i64, i64* %5, align 8
  ret i64 %120
}

declare dso_local i32 @accumulate_nsecs_to_secs(%struct.timekeeper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
