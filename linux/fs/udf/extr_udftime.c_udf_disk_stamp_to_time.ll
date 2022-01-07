; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_udftime.c_udf_disk_stamp_to_time.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_udftime.c_udf_disk_stamp_to_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec64 = type { i32, i32 }
%struct.timestamp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udf_disk_stamp_to_time(%struct.timespec64* %0, %struct.timestamp* byval(%struct.timestamp) align 8 %1) #0 {
  %3 = alloca %struct.timespec64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.timespec64* %0, %struct.timespec64** %3, align 8
  %8 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %1, i32 0, i32 9
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @le16_to_cpu(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %1, i32 0, i32 8
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @le16_to_cpu(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 12
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = shl i32 %19, 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = ashr i32 %21, 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, -2047
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %25, %18
  br label %28

27:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = load i32, i32* %5, align 4
  %30 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %1, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %1, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %1, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %1, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %1, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mktime64(i32 %29, i32 %31, i32 %33, i32 %35, i32 %37, i32 %39)
  %41 = load %struct.timespec64*, %struct.timespec64** %3, align 8
  %42 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  %44 = mul nsw i32 %43, 60
  %45 = load %struct.timespec64*, %struct.timespec64** %3, align 8
  %46 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %1, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 %50, 10000
  %52 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %1, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %53, 100
  %55 = add nsw i32 %51, %54
  %56 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %1, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %55, %57
  %59 = mul nsw i32 1000, %58
  %60 = load %struct.timespec64*, %struct.timespec64** %3, align 8
  %61 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @NSEC_PER_SEC, align 4
  %63 = load %struct.timespec64*, %struct.timespec64** %3, align 8
  %64 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = srem i32 %65, %62
  store i32 %66, i32* %64, align 4
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mktime64(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
