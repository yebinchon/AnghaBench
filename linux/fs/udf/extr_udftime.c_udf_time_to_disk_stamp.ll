; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_udftime.c_udf_time_to_disk_stamp.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_udftime.c_udf_time_to_disk_stamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.timestamp = type { i32, i32, i32, i32, i32, i32, i32, i64, i8*, i8* }
%struct.timespec64 = type { i32, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i64 }

@sys_tz = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udf_time_to_disk_stamp(%struct.timestamp* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = alloca %struct.timestamp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tm, align 8
  %9 = bitcast %struct.timespec64* %4 to { i32, i64 }*
  %10 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %9, i32 0, i32 0
  store i32 %1, i32* %10, align 8
  %11 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %9, i32 0, i32 1
  store i64 %2, i64* %11, align 8
  store %struct.timestamp* %0, %struct.timestamp** %5, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys_tz, i32 0, i32 0), align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, 4095
  %16 = or i32 4096, %15
  %17 = call i8* @cpu_to_le16(i32 %16)
  %18 = load %struct.timestamp*, %struct.timestamp** %5, align 8
  %19 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %18, i32 0, i32 9
  store i8* %17, i8** %19, align 8
  %20 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 %22, 60
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @time64_to_tm(i64 %26, i32 0, %struct.tm* %8)
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1900
  %31 = call i8* @cpu_to_le16(i32 %30)
  %32 = load %struct.timestamp*, %struct.timestamp** %5, align 8
  %33 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %32, i32 0, i32 8
  store i8* %31, i8** %33, align 8
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  %37 = load %struct.timestamp*, %struct.timestamp** %5, align 8
  %38 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %37, i32 0, i32 7
  store i64 %36, i64* %38, align 8
  %39 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.timestamp*, %struct.timestamp** %5, align 8
  %42 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 8
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.timestamp*, %struct.timestamp** %5, align 8
  %46 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.timestamp*, %struct.timestamp** %5, align 8
  %50 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.timestamp*, %struct.timestamp** %5, align 8
  %54 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sdiv i32 %56, 10000000
  %58 = load %struct.timestamp*, %struct.timestamp** %5, align 8
  %59 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sdiv i32 %61, 1000
  %63 = load %struct.timestamp*, %struct.timestamp** %5, align 8
  %64 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %65, 10000
  %67 = sub nsw i32 %62, %66
  %68 = sdiv i32 %67, 100
  %69 = load %struct.timestamp*, %struct.timestamp** %5, align 8
  %70 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sdiv i32 %72, 1000
  %74 = load %struct.timestamp*, %struct.timestamp** %5, align 8
  %75 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = mul nsw i32 %76, 10000
  %78 = sub nsw i32 %73, %77
  %79 = load %struct.timestamp*, %struct.timestamp** %5, align 8
  %80 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %81, 100
  %83 = sub nsw i32 %78, %82
  %84 = load %struct.timestamp*, %struct.timestamp** %5, align 8
  %85 = getelementptr inbounds %struct.timestamp, %struct.timestamp* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @time64_to_tm(i64, i32, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
