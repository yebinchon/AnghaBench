; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_gw.c_cgw_csum_crc8_pos.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_gw.c_cgw_csum_crc8_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.canfd_frame = type { i64*, i32 }
%struct.cgw_csum_crc8 = type { i64, i32, i32, i64*, i32, i64*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.canfd_frame*, %struct.cgw_csum_crc8*)* @cgw_csum_crc8_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgw_csum_crc8_pos(%struct.canfd_frame* %0, %struct.cgw_csum_crc8* %1) #0 {
  %3 = alloca %struct.canfd_frame*, align 8
  %4 = alloca %struct.cgw_csum_crc8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.canfd_frame* %0, %struct.canfd_frame** %3, align 8
  store %struct.cgw_csum_crc8* %1, %struct.cgw_csum_crc8** %4, align 8
  %7 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %8 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %11 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %34, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %16 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp sle i32 %14, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %13
  %20 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %21 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %20, i32 0, i32 3
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.canfd_frame*, %struct.canfd_frame** %3, align 8
  %25 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = xor i64 %23, %30
  %32 = getelementptr inbounds i64, i64* %22, i64 %31
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %5, align 8
  br label %34

34:                                               ; preds = %19
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %13

37:                                               ; preds = %13
  %38 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %39 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %93 [
    i32 129, label %41
    i32 130, label %54
    i32 128, label %73
  ]

41:                                               ; preds = %37
  %42 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %43 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %42, i32 0, i32 3
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %47 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %46, i32 0, i32 5
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = xor i64 %45, %50
  %52 = getelementptr inbounds i64, i64* %44, i64 %51
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %5, align 8
  br label %93

54:                                               ; preds = %37
  %55 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %56 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %55, i32 0, i32 3
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %60 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %59, i32 0, i32 5
  %61 = load i64*, i64** %60, align 8
  %62 = load %struct.canfd_frame*, %struct.canfd_frame** %3, align 8
  %63 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 1
  %66 = load i64, i64* %65, align 8
  %67 = and i64 %66, 15
  %68 = getelementptr inbounds i64, i64* %61, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = xor i64 %58, %69
  %71 = getelementptr inbounds i64, i64* %57, i64 %70
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %5, align 8
  br label %93

73:                                               ; preds = %37
  %74 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %75 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %74, i32 0, i32 3
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* %5, align 8
  %78 = load %struct.canfd_frame*, %struct.canfd_frame** %3, align 8
  %79 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, 255
  %82 = sext i32 %81 to i64
  %83 = xor i64 %77, %82
  %84 = load %struct.canfd_frame*, %struct.canfd_frame** %3, align 8
  %85 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = ashr i32 %86, 8
  %88 = and i32 %87, 255
  %89 = sext i32 %88 to i64
  %90 = xor i64 %83, %89
  %91 = getelementptr inbounds i64, i64* %76, i64 %90
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %5, align 8
  br label %93

93:                                               ; preds = %37, %73, %54, %41
  %94 = load i64, i64* %5, align 8
  %95 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %96 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %95, i32 0, i32 7
  %97 = load i64, i64* %96, align 8
  %98 = xor i64 %94, %97
  %99 = load %struct.canfd_frame*, %struct.canfd_frame** %3, align 8
  %100 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %103 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %102, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i64, i64* %101, i64 %104
  store i64 %98, i64* %105, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
