; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_tk_normalize_xtime.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_tk_normalize_xtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timekeeper = type { i32, %struct.TYPE_3__, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@NSEC_PER_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timekeeper*)* @tk_normalize_xtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tk_normalize_xtime(%struct.timekeeper* %0) #0 {
  %2 = alloca %struct.timekeeper*, align 8
  store %struct.timekeeper* %0, %struct.timekeeper** %2, align 8
  br label %3

3:                                                ; preds = %16, %1
  %4 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %5 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i64, i64* @NSEC_PER_SEC, align 8
  %9 = trunc i64 %8 to i32
  %10 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %11 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %9, %13
  %15 = icmp sge i32 %7, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %3
  %17 = load i64, i64* @NSEC_PER_SEC, align 8
  %18 = trunc i64 %17 to i32
  %19 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %20 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %18, %22
  %24 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %25 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, %23
  store i32 %28, i32* %26, align 4
  %29 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %30 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %3

33:                                               ; preds = %3
  br label %34

34:                                               ; preds = %47, %33
  %35 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %36 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* @NSEC_PER_SEC, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %42 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %40, %44
  %46 = icmp sge i32 %38, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %34
  %48 = load i64, i64* @NSEC_PER_SEC, align 8
  %49 = trunc i64 %48 to i32
  %50 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %51 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %49, %53
  %55 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %56 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, %54
  store i32 %59, i32* %57, align 4
  %60 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %61 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %34

64:                                               ; preds = %34
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
