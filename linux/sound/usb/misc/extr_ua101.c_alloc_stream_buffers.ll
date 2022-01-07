; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/misc/extr_ua101.c_alloc_stream_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/misc/extr_ua101.c_alloc_stream_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ua101 = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ua101_stream = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32 }

@queue_length = common dso_local global i32 0, align 4
@MIN_QUEUE_LENGTH = common dso_local global i64 0, align 8
@MAX_QUEUE_LENGTH = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"too many packets\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ua101*, %struct.ua101_stream*)* @alloc_stream_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_stream_buffers(%struct.ua101* %0, %struct.ua101_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ua101*, align 8
  %5 = alloca %struct.ua101_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ua101* %0, %struct.ua101** %4, align 8
  store %struct.ua101_stream* %1, %struct.ua101_stream** %5, align 8
  %11 = load i32, i32* @queue_length, align 4
  %12 = load %struct.ua101_stream*, %struct.ua101_stream** %5, align 8
  %13 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.ua101_stream*, %struct.ua101_stream** %5, align 8
  %15 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* @MIN_QUEUE_LENGTH, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @max(i32 %16, i32 %18)
  %20 = load %struct.ua101_stream*, %struct.ua101_stream** %5, align 8
  %21 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ua101_stream*, %struct.ua101_stream** %5, align 8
  %23 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* @MAX_QUEUE_LENGTH, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i8* @min(i32 %24, i32 %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.ua101_stream*, %struct.ua101_stream** %5, align 8
  %30 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ua101_stream*, %struct.ua101_stream** %5, align 8
  %32 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = load %struct.ua101_stream*, %struct.ua101_stream** %5, align 8
  %36 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = udiv i32 %34, %37
  store i32 %38, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %105, %2
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.ua101_stream*, %struct.ua101_stream** %5, align 8
  %42 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %43)
  %45 = icmp ult i32 %40, %44
  br i1 %45, label %46, label %108

46:                                               ; preds = %39
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i8* @min(i32 %47, i32 %48)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.ua101_stream*, %struct.ua101_stream** %5, align 8
  %53 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = mul i32 %51, %54
  %56 = zext i32 %55 to i64
  store i64 %56, i64* %10, align 8
  %57 = load %struct.ua101*, %struct.ua101** %4, align 8
  %58 = getelementptr inbounds %struct.ua101, %struct.ua101* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = load %struct.ua101_stream*, %struct.ua101_stream** %5, align 8
  %63 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = call i32 @usb_alloc_coherent(%struct.TYPE_3__* %59, i64 %60, i32 %61, i32* %68)
  %70 = load %struct.ua101_stream*, %struct.ua101_stream** %5, align 8
  %71 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i32 %69, i32* %76, align 8
  %77 = load %struct.ua101_stream*, %struct.ua101_stream** %5, align 8
  %78 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %46
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %120

89:                                               ; preds = %46
  %90 = load i64, i64* %10, align 8
  %91 = load %struct.ua101_stream*, %struct.ua101_stream** %5, align 8
  %92 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %91, i32 0, i32 2
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i64 %90, i64* %97, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %6, align 4
  %100 = sub i32 %99, %98
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %89
  br label %108

104:                                              ; preds = %89
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %9, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %39

108:                                              ; preds = %103, %39
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load %struct.ua101*, %struct.ua101** %4, align 8
  %113 = getelementptr inbounds %struct.ua101, %struct.ua101* %112, i32 0, i32 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = call i32 @dev_err(i32* %115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %117 = load i32, i32* @ENXIO, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %120

119:                                              ; preds = %108
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %119, %111, %86
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @usb_alloc_coherent(%struct.TYPE_3__*, i64, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
