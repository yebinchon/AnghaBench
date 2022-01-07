; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_endpoint.c_prepare_outbound_urb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_endpoint.c_prepare_outbound_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_endpoint = type { i32, i8, %struct.TYPE_3__*, i32, i32 (i32, %struct.urb*)* }
%struct.TYPE_3__ = type { i32 }
%struct.urb = type { i8*, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.snd_urb_ctx = type { %struct.urb* }

@USB_SPEED_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usb_endpoint*, %struct.snd_urb_ctx*)* @prepare_outbound_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_outbound_urb(%struct.snd_usb_endpoint* %0, %struct.snd_urb_ctx* %1) #0 {
  %3 = alloca %struct.snd_usb_endpoint*, align 8
  %4 = alloca %struct.snd_urb_ctx*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i8*, align 8
  store %struct.snd_usb_endpoint* %0, %struct.snd_usb_endpoint** %3, align 8
  store %struct.snd_urb_ctx* %1, %struct.snd_urb_ctx** %4, align 8
  %7 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %7, i32 0, i32 0
  %9 = load %struct.urb*, %struct.urb** %8, align 8
  store %struct.urb* %9, %struct.urb** %5, align 8
  %10 = load %struct.urb*, %struct.urb** %5, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %14 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.urb*, %struct.urb** %5, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %21 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %127 [
    i32 129, label %23
    i32 128, label %42
  ]

23:                                               ; preds = %2
  %24 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %25 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %24, i32 0, i32 4
  %26 = load i32 (i32, %struct.urb*)*, i32 (i32, %struct.urb*)** %25, align 8
  %27 = icmp ne i32 (i32, %struct.urb*)* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %30 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %29, i32 0, i32 4
  %31 = load i32 (i32, %struct.urb*)*, i32 (i32, %struct.urb*)** %30, align 8
  %32 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %33 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.urb*, %struct.urb** %5, align 8
  %36 = call i32 %31(i32 %34, %struct.urb* %35)
  br label %41

37:                                               ; preds = %23
  %38 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %39 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %4, align 8
  %40 = call i32 @prepare_silent_urb(%struct.snd_usb_endpoint* %38, %struct.snd_urb_ctx* %39)
  br label %41

41:                                               ; preds = %37, %28
  br label %127

42:                                               ; preds = %2
  %43 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %44 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @snd_usb_get_speed(i32 %47)
  %49 = load i32, i32* @USB_SPEED_HIGH, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %91

51:                                               ; preds = %42
  %52 = load %struct.urb*, %struct.urb** %5, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 4, i32* %56, align 4
  %57 = load %struct.urb*, %struct.urb** %5, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 0, i32* %61, align 4
  %62 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %63 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %62, i32 0, i32 1
  %64 = load i8, i8* %63, align 4
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  store i8 %64, i8* %66, align 1
  %67 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %68 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %67, i32 0, i32 1
  %69 = load i8, i8* %68, align 4
  %70 = zext i8 %69 to i32
  %71 = ashr i32 %70, 8
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  store i8 %72, i8* %74, align 1
  %75 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %76 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %75, i32 0, i32 1
  %77 = load i8, i8* %76, align 4
  %78 = zext i8 %77 to i32
  %79 = ashr i32 %78, 16
  %80 = trunc i32 %79 to i8
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 2
  store i8 %80, i8* %82, align 1
  %83 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %84 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %83, i32 0, i32 1
  %85 = load i8, i8* %84, align 4
  %86 = zext i8 %85 to i32
  %87 = ashr i32 %86, 24
  %88 = trunc i32 %87 to i8
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 3
  store i8 %88, i8* %90, align 1
  br label %126

91:                                               ; preds = %42
  %92 = load %struct.urb*, %struct.urb** %5, align 8
  %93 = getelementptr inbounds %struct.urb, %struct.urb* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i32 3, i32* %96, align 4
  %97 = load %struct.urb*, %struct.urb** %5, align 8
  %98 = getelementptr inbounds %struct.urb, %struct.urb* %97, i32 0, i32 1
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i32 0, i32* %101, align 4
  %102 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %103 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %102, i32 0, i32 1
  %104 = load i8, i8* %103, align 4
  %105 = zext i8 %104 to i32
  %106 = ashr i32 %105, 2
  %107 = trunc i32 %106 to i8
  %108 = load i8*, i8** %6, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  store i8 %107, i8* %109, align 1
  %110 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %111 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %110, i32 0, i32 1
  %112 = load i8, i8* %111, align 4
  %113 = zext i8 %112 to i32
  %114 = ashr i32 %113, 10
  %115 = trunc i32 %114 to i8
  %116 = load i8*, i8** %6, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  store i8 %115, i8* %117, align 1
  %118 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %119 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %118, i32 0, i32 1
  %120 = load i8, i8* %119, align 4
  %121 = zext i8 %120 to i32
  %122 = ashr i32 %121, 18
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %6, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 2
  store i8 %123, i8* %125, align 1
  br label %126

126:                                              ; preds = %91, %51
  br label %127

127:                                              ; preds = %2, %126, %41
  ret void
}

declare dso_local i32 @prepare_silent_urb(%struct.snd_usb_endpoint*, %struct.snd_urb_ctx*) #1

declare dso_local i32 @snd_usb_get_speed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
