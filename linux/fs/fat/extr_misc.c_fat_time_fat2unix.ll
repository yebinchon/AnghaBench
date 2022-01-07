; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_misc.c_fat_time_fat2unix.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_misc.c_fat_time_fat2unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdos_sb_info = type { i32 }
%struct.timespec64 = type { i32, i32 }

@YEAR_2100 = common dso_local global i64 0, align 8
@SECS_PER_MIN = common dso_local global i32 0, align 4
@SECS_PER_HOUR = common dso_local global i32 0, align 4
@days_in_year = common dso_local global i64* null, align 8
@DAYS_DELTA = common dso_local global i64 0, align 8
@SECS_PER_DAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fat_time_fat2unix(%struct.msdos_sb_info* %0, %struct.timespec64* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.msdos_sb_info*, align 8
  %7 = alloca %struct.timespec64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.msdos_sb_info* %0, %struct.msdos_sb_info** %6, align 8
  store %struct.timespec64* %1, %struct.timespec64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @le16_to_cpu(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = ashr i32 %22, 9
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %17, align 8
  %25 = load i32, i32* %12, align 4
  %26 = ashr i32 %25, 5
  %27 = and i32 %26, 15
  %28 = call i32 @max(i32 1, i32 %27)
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %16, align 8
  %30 = load i32, i32* %12, align 4
  %31 = and i32 %30, 31
  %32 = call i32 @max(i32 1, i32 %31)
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %14, align 8
  %35 = load i64, i64* %17, align 8
  %36 = add nsw i64 %35, 3
  %37 = sdiv i64 %36, 4
  store i64 %37, i64* %15, align 8
  %38 = load i64, i64* %17, align 8
  %39 = load i64, i64* @YEAR_2100, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %5
  %42 = load i64, i64* %15, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %15, align 8
  br label %44

44:                                               ; preds = %41, %5
  %45 = load i64, i64* %17, align 8
  %46 = call i64 @IS_LEAP_YEAR(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i64, i64* %16, align 8
  %50 = icmp sgt i64 %49, 2
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i64, i64* %15, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %15, align 8
  br label %54

54:                                               ; preds = %51, %48, %44
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %55, 31
  %57 = shl i32 %56, 1
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %11, align 4
  %59 = ashr i32 %58, 5
  %60 = and i32 %59, 63
  %61 = load i32, i32* @SECS_PER_MIN, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %11, align 4
  %66 = ashr i32 %65, 11
  %67 = load i32, i32* @SECS_PER_HOUR, align 4
  %68 = mul nsw i32 %66, %67
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %13, align 4
  %71 = load i64, i64* %17, align 8
  %72 = mul nsw i64 %71, 365
  %73 = load i64, i64* %15, align 8
  %74 = add nsw i64 %72, %73
  %75 = load i64*, i64** @days_in_year, align 8
  %76 = load i64, i64* %16, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %74, %78
  %80 = load i64, i64* %14, align 8
  %81 = add nsw i64 %79, %80
  %82 = load i64, i64* @DAYS_DELTA, align 8
  %83 = add nsw i64 %81, %82
  %84 = trunc i64 %83 to i32
  %85 = load i32, i32* @SECS_PER_DAY, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %13, align 4
  %89 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %90 = call i64 @fat_tz_offset(%struct.msdos_sb_info* %89)
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %54
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %10, align 4
  %100 = sdiv i32 %99, 100
  %101 = add nsw i32 %98, %100
  %102 = load %struct.timespec64*, %struct.timespec64** %7, align 8
  %103 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %10, align 4
  %105 = srem i32 %104, 100
  %106 = mul nsw i32 %105, 10000000
  %107 = load %struct.timespec64*, %struct.timespec64** %7, align 8
  %108 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  br label %115

109:                                              ; preds = %54
  %110 = load i32, i32* %13, align 4
  %111 = load %struct.timespec64*, %struct.timespec64** %7, align 8
  %112 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  %113 = load %struct.timespec64*, %struct.timespec64** %7, align 8
  %114 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %113, i32 0, i32 1
  store i32 0, i32* %114, align 4
  br label %115

115:                                              ; preds = %109, %97
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i64 @IS_LEAP_YEAR(i64) #1

declare dso_local i64 @fat_tz_offset(%struct.msdos_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
