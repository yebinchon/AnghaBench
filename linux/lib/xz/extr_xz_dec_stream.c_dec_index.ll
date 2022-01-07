; ModuleID = '/home/carl/AnghaBench/linux/lib/xz/extr_xz_dec_stream.c_dec_index.c'
source_filename = "/home/carl/AnghaBench/linux/lib/xz/extr_xz_dec_stream.c_dec_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xz_dec = type { i64, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.xz_buf = type { i32, i32, i32 }

@XZ_STREAM_END = common dso_local global i32 0, align 4
@XZ_DATA_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xz_dec*, %struct.xz_buf*)* @dec_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dec_index(%struct.xz_dec* %0, %struct.xz_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xz_dec*, align 8
  %5 = alloca %struct.xz_buf*, align 8
  %6 = alloca i32, align 4
  store %struct.xz_dec* %0, %struct.xz_dec** %4, align 8
  store %struct.xz_buf* %1, %struct.xz_buf** %5, align 8
  br label %7

7:                                                ; preds = %99, %2
  %8 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %9 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %10 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %13 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %12, i32 0, i32 1
  %14 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %15 = getelementptr inbounds %struct.xz_buf, %struct.xz_buf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dec_vli(%struct.xz_dec* %8, i32 %11, i32* %13, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @XZ_STREAM_END, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %7
  %22 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %23 = load %struct.xz_buf*, %struct.xz_buf** %5, align 8
  %24 = call i32 @index_update(%struct.xz_dec* %22, %struct.xz_buf* %23)
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %107

26:                                               ; preds = %7
  %27 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %28 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %98 [
    i32 130, label %31
    i32 128, label %53
    i32 129, label %66
  ]

31:                                               ; preds = %26
  %32 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %33 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %36 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  %38 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %39 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %43 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %41, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %31
  %48 = load i32, i32* @XZ_DATA_ERROR, align 4
  store i32 %48, i32* %3, align 4
  br label %107

49:                                               ; preds = %31
  %50 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %51 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i32 128, i32* %52, align 8
  br label %98

53:                                               ; preds = %26
  %54 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %55 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %58 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, %56
  store i64 %62, i64* %60, align 8
  %63 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %64 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i32 129, i32* %65, align 8
  br label %98

66:                                               ; preds = %26
  %67 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %68 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %71 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, %69
  store i64 %75, i64* %73, align 8
  %76 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %77 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = bitcast %struct.TYPE_5__* %78 to i32*
  %80 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %81 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @xz_crc32(i32* %79, i32 24, i32 %84)
  %86 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %87 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  store i32 %85, i32* %89, align 8
  %90 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %91 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, -1
  store i64 %94, i64* %92, align 8
  %95 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %96 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  store i32 128, i32* %97, align 8
  br label %98

98:                                               ; preds = %26, %66, %53, %49
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.xz_dec*, %struct.xz_dec** %4, align 8
  %101 = getelementptr inbounds %struct.xz_dec, %struct.xz_dec* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %7, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* @XZ_STREAM_END, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %105, %47, %21
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @dec_vli(%struct.xz_dec*, i32, i32*, i32) #1

declare dso_local i32 @index_update(%struct.xz_dec*, %struct.xz_buf*) #1

declare dso_local i32 @xz_crc32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
