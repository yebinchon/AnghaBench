; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/misc/extr_ua101.c_alloc_stream_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/misc/extr_ua101.c_alloc_stream_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ua101 = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ua101_stream = type { i32, i32, %struct.ua101_urb**, i32, %struct.TYPE_8__* }
%struct.ua101_urb = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, void (%struct.urb*)*, %struct.TYPE_5__*, %struct.ua101*, i32*, i32, i32, %struct.TYPE_6__* }
%struct.urb = type opaque
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32* }
%struct.urb.0 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"internal buffer size error\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ua101*, %struct.ua101_stream*, void (%struct.urb.0*)*)* @alloc_stream_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_stream_urbs(%struct.ua101* %0, %struct.ua101_stream* %1, void (%struct.urb.0*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ua101*, align 8
  %6 = alloca %struct.ua101_stream*, align 8
  %7 = alloca void (%struct.urb.0*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ua101_urb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.ua101* %0, %struct.ua101** %5, align 8
  store %struct.ua101_stream* %1, %struct.ua101_stream** %6, align 8
  store void (%struct.urb.0*)* %2, void (%struct.urb.0*)** %7, align 8
  %15 = load %struct.ua101_stream*, %struct.ua101_stream** %6, align 8
  %16 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %148, %3
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.ua101_stream*, %struct.ua101_stream** %6, align 8
  %21 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %20, i32 0, i32 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %22)
  %24 = icmp ult i32 %19, %23
  br i1 %24, label %25, label %151

25:                                               ; preds = %18
  %26 = load %struct.ua101_stream*, %struct.ua101_stream** %6, align 8
  %27 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %26, i32 0, i32 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %12, align 4
  %34 = load %struct.ua101_stream*, %struct.ua101_stream** %6, align 8
  %35 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %34, i32 0, i32 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %13, align 8
  %42 = load %struct.ua101_stream*, %struct.ua101_stream** %6, align 8
  %43 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %42, i32 0, i32 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %14, align 4
  br label %50

50:                                               ; preds = %69, %25
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp uge i32 %51, %52
  br i1 %53, label %54, label %147

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.ua101_stream*, %struct.ua101_stream** %6, align 8
  %57 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp uge i32 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %159

61:                                               ; preds = %54
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.ua101_urb* @kmalloc(i32 64, i32 %62)
  store %struct.ua101_urb* %63, %struct.ua101_urb** %9, align 8
  %64 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %65 = icmp ne %struct.ua101_urb* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %167

69:                                               ; preds = %61
  %70 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %71 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %70, i32 0, i32 0
  %72 = call i32 @usb_init_urb(%struct.TYPE_7__* %71)
  %73 = load %struct.ua101*, %struct.ua101** %5, align 8
  %74 = getelementptr inbounds %struct.ua101, %struct.ua101* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %77 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 10
  store %struct.TYPE_6__* %75, %struct.TYPE_6__** %78, align 8
  %79 = load %struct.ua101_stream*, %struct.ua101_stream** %6, align 8
  %80 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %83 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 9
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %86 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %87 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 8
  store i32 %85, i32* %88, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %91 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 7
  store i32* %89, i32** %92, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %95 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %99 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  %101 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %102 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  store i32 1, i32* %103, align 8
  %104 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %105 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 3
  store i32 1, i32* %106, align 4
  %107 = load %struct.ua101*, %struct.ua101** %5, align 8
  %108 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %109 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 6
  store %struct.ua101* %107, %struct.ua101** %110, align 8
  %111 = load void (%struct.urb.0*)*, void (%struct.urb.0*)** %7, align 8
  %112 = bitcast void (%struct.urb.0*)* %111 to void (%struct.urb*)*
  %113 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %114 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 4
  store void (%struct.urb*)* %112, void (%struct.urb*)** %115, align 8
  %116 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %117 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 5
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  store i64 0, i64* %121, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %124 = getelementptr inbounds %struct.ua101_urb, %struct.ua101_urb* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 5
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  store i32 %122, i32* %128, align 8
  %129 = load %struct.ua101_urb*, %struct.ua101_urb** %9, align 8
  %130 = load %struct.ua101_stream*, %struct.ua101_stream** %6, align 8
  %131 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %130, i32 0, i32 2
  %132 = load %struct.ua101_urb**, %struct.ua101_urb*** %131, align 8
  %133 = load i32, i32* %11, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %11, align 4
  %135 = zext i32 %133 to i64
  %136 = getelementptr inbounds %struct.ua101_urb*, %struct.ua101_urb** %132, i64 %135
  store %struct.ua101_urb* %129, %struct.ua101_urb** %136, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %12, align 4
  %139 = sub i32 %138, %137
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load i32*, i32** %13, align 8
  %142 = zext i32 %140 to i64
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  store i32* %143, i32** %13, align 8
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %14, align 4
  %146 = add i32 %145, %144
  store i32 %146, i32* %14, align 4
  br label %50

147:                                              ; preds = %50
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %10, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %18

151:                                              ; preds = %18
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.ua101_stream*, %struct.ua101_stream** %6, align 8
  %154 = getelementptr inbounds %struct.ua101_stream, %struct.ua101_stream* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %152, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  store i32 0, i32* %4, align 4
  br label %167

158:                                              ; preds = %151
  br label %159

159:                                              ; preds = %158, %60
  %160 = load %struct.ua101*, %struct.ua101** %5, align 8
  %161 = getelementptr inbounds %struct.ua101, %struct.ua101* %160, i32 0, i32 0
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = call i32 @dev_err(i32* %163, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %165 = load i32, i32* @ENXIO, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %4, align 4
  br label %167

167:                                              ; preds = %159, %157, %66
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local %struct.ua101_urb* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_init_urb(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
