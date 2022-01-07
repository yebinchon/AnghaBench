; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_endpoint.c_prepare_silent_urb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_endpoint.c_prepare_silent_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_endpoint = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.snd_urb_ctx = type { i32, i32*, %struct.urb* }
%struct.urb = type { i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_endpoint*, %struct.snd_urb_ctx*)* @prepare_silent_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_silent_urb(%struct.snd_usb_endpoint* %0, %struct.snd_urb_ctx* %1) #0 {
  %3 = alloca %struct.snd_usb_endpoint*, align 8
  %4 = alloca %struct.snd_urb_ctx*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_usb_endpoint* %0, %struct.snd_usb_endpoint** %3, align 8
  store %struct.snd_urb_ctx* %1, %struct.snd_urb_ctx** %4, align 8
  %13 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %13, i32 0, i32 2
  %15 = load %struct.urb*, %struct.urb** %14, align 8
  store %struct.urb* %15, %struct.urb** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %17 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 4, i32* %7, align 4
  br label %23

23:                                               ; preds = %22, %2
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %113, %23
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %116

30:                                               ; preds = %24
  %31 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %30
  %40 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %4, align 8
  %41 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %12, align 4
  br label %50

47:                                               ; preds = %30
  %48 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %49 = call i32 @snd_usb_endpoint_next_packet_size(%struct.snd_usb_endpoint* %48)
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %47, %39
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %53 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %51, %54
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %58 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = mul i32 %56, %59
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %9, align 4
  %63 = mul i32 %61, %62
  %64 = add i32 %60, %63
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.urb*, %struct.urb** %5, align 8
  %67 = getelementptr inbounds %struct.urb, %struct.urb* %66, i32 0, i32 3
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %65, i32* %72, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %7, align 4
  %75 = add i32 %73, %74
  %76 = load %struct.urb*, %struct.urb** %5, align 8
  %77 = getelementptr inbounds %struct.urb, %struct.urb* %76, i32 0, i32 3
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  store i32 %75, i32* %82, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %50
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @cpu_to_le32(i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = load %struct.urb*, %struct.urb** %5, align 8
  %89 = getelementptr inbounds %struct.urb, %struct.urb* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = zext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  %94 = call i32 @memcpy(i64 %93, i32* %8, i32 4)
  br label %95

95:                                               ; preds = %85, %50
  %96 = load %struct.urb*, %struct.urb** %5, align 8
  %97 = getelementptr inbounds %struct.urb, %struct.urb* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = zext i32 %99 to i64
  %101 = add nsw i64 %98, %100
  %102 = load i32, i32* %7, align 4
  %103 = zext i32 %102 to i64
  %104 = add nsw i64 %101, %103
  %105 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %106 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @memset(i64 %104, i32 %107, i32 %108)
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %6, align 4
  %112 = add i32 %111, %110
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %95
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %24

116:                                              ; preds = %24
  %117 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %4, align 8
  %118 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.urb*, %struct.urb** %5, align 8
  %121 = getelementptr inbounds %struct.urb, %struct.urb* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %124 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = mul i32 %122, %125
  %127 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %4, align 8
  %128 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %7, align 4
  %131 = mul i32 %129, %130
  %132 = add i32 %126, %131
  %133 = load %struct.urb*, %struct.urb** %5, align 8
  %134 = getelementptr inbounds %struct.urb, %struct.urb* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  ret void
}

declare dso_local i32 @snd_usb_endpoint_next_packet_size(%struct.snd_usb_endpoint*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
