; ModuleID = '/home/carl/AnghaBench/linux/lib/xz/extr_xz_dec_stream.c_crc32_validate.c'
source_filename = "/home/carl/AnghaBench/linux/lib/xz/extr_xz_dec_stream.c_crc32_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xz_dec = type { i32, i32 }
%struct.xz_buf = type { i64, i64, i32* }

@XZ_OK = common dso_local global i32 0, align 4
@XZ_DATA_ERROR = common dso_local global i32 0, align 4
@XZ_STREAM_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xz_dec*, %struct.xz_buf*)* @crc32_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crc32_validate(%struct.xz_dec* %0, %struct.xz_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xz_dec*, align 8
  %5 = alloca %struct.xz_buf*, align 8
  store %struct.xz_dec* %0, %struct.xz_dec** %4, align 8
  store %struct.xz_buf* %1, %struct.xz_buf** %5, align 8
  br label %6

6:                                                ; preds = %42, %2
  %7 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %8 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %11 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %9, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %6
  %15 = load i32, i32* @XZ_OK, align 4
  store i32 %15, i32* %3, align 4
  br label %53

16:                                               ; preds = %6
  %17 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %18 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %21 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %19, %22
  %24 = and i32 %23, 255
  %25 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %26 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %29 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = getelementptr inbounds i32, i32* %27, i64 %30
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %24, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %16
  %36 = load i32, i32* @XZ_DATA_ERROR, align 4
  store i32 %36, i32* %3, align 4
  br label %53

37:                                               ; preds = %16
  %38 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %39 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 8
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %37
  %43 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %44 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 32
  br i1 %46, label %6, label %47

47:                                               ; preds = %42
  %48 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %49 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  %50 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %51 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  %52 = load i32, i32* @XZ_STREAM_END, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %47, %35, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
