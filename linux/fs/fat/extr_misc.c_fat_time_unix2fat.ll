; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_misc.c_fat_time_unix2fat.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_misc.c_fat_time_unix2fat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdos_sb_info = type { i32 }
%struct.timespec64 = type { i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fat_time_unix2fat(%struct.msdos_sb_info* %0, %struct.timespec64* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.msdos_sb_info*, align 8
  %7 = alloca %struct.timespec64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.tm, align 4
  store %struct.msdos_sb_info* %0, %struct.msdos_sb_info** %6, align 8
  store %struct.timespec64* %1, %struct.timespec64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.timespec64*, %struct.timespec64** %7, align 8
  %13 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %6, align 8
  %16 = call i32 @fat_tz_offset(%struct.msdos_sb_info* %15)
  %17 = sub nsw i32 0, %16
  %18 = call i32 @time64_to_tm(i32 %14, i32 %17, %struct.tm* %11)
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 80
  br i1 %21, label %22, label %31

22:                                               ; preds = %5
  %23 = load i32*, i32** %8, align 8
  store i32 0, i32* %23, align 4
  %24 = call i32 @cpu_to_le16(i32 33)
  %25 = load i32*, i32** %9, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %10, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32*, i32** %10, align 8
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %28, %22
  br label %93

31:                                               ; preds = %5
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 207
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = call i32 @cpu_to_le16(i32 49021)
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  %38 = call i32 @cpu_to_le16(i32 65439)
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32*, i32** %10, align 8
  store i32 199, i32* %43, align 4
  br label %44

44:                                               ; preds = %42, %35
  br label %93

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 80
  store i32 %48, i32* %46, align 4
  %49 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 11
  %58 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 5
  %61 = or i32 %57, %60
  %62 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %61, %63
  %65 = call i32 @cpu_to_le16(i32 %64)
  %66 = load i32*, i32** %8, align 8
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 9
  %70 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 5
  %73 = or i32 %69, %72
  %74 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %73, %75
  %77 = call i32 @cpu_to_le16(i32 %76)
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %93

81:                                               ; preds = %45
  %82 = load %struct.timespec64*, %struct.timespec64** %7, align 8
  %83 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 1
  %86 = mul nsw i32 %85, 100
  %87 = load %struct.timespec64*, %struct.timespec64** %7, align 8
  %88 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sdiv i32 %89, 10000000
  %91 = add nsw i32 %86, %90
  %92 = load i32*, i32** %10, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %30, %44, %81, %45
  ret void
}

declare dso_local i32 @time64_to_tm(i32, i32, %struct.tm*) #1

declare dso_local i32 @fat_tz_offset(%struct.msdos_sb_info*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
