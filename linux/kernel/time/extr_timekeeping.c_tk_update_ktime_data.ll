; ModuleID = '/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_tk_update_ktime_data.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/time/extr_timekeeping.c_tk_update_ktime_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timekeeper = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_6__, i64 }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32, i32, i8* }
%struct.TYPE_6__ = type { i64, i64 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timekeeper*)* @tk_update_ktime_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tk_update_ktime_data(%struct.timekeeper* %0) #0 {
  %2 = alloca %struct.timekeeper*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.timekeeper* %0, %struct.timekeeper** %2, align 8
  %5 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %6 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %5, i32 0, i32 5
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %9 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %7, %11
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %3, align 4
  %14 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %15 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @NSEC_PER_SEC, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %21, %22
  %24 = call i8* @ns_to_ktime(i32 %23)
  %25 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %26 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store i8* %24, i8** %27, align 8
  %28 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %29 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %33 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %31, %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @NSEC_PER_SEC, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %1
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %1
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %48 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %50 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NSEC_PER_SEC, align 4
  %53 = mul nsw i32 %51, %52
  %54 = call i8* @ns_to_ktime(i32 %53)
  %55 = load %struct.timekeeper*, %struct.timekeeper** %2, align 8
  %56 = getelementptr inbounds %struct.timekeeper, %struct.timekeeper* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i8* %54, i8** %57, align 8
  ret void
}

declare dso_local i8* @ns_to_ktime(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
