; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_endpoint.c_sync_ep_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_endpoint.c_sync_ep_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_endpoint = type { i32, i32, i32, i64, i64, %struct.snd_urb_ctx*, %struct.TYPE_3__* }
%struct.snd_urb_ctx = type { i32, i32, %struct.TYPE_4__*, %struct.snd_usb_endpoint* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.snd_urb_ctx*, i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@SYNC_URBS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@snd_complete_urb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_endpoint*)* @sync_ep_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_ep_set_params(%struct.snd_usb_endpoint* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_usb_endpoint*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_urb_ctx*, align 8
  store %struct.snd_usb_endpoint* %0, %struct.snd_usb_endpoint** %3, align 8
  %6 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %7 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %6, i32 0, i32 6
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SYNC_URBS, align 4
  %12 = mul nsw i32 %11, 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %15 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %14, i32 0, i32 3
  %16 = call i64 @usb_alloc_coherent(i32 %10, i32 %12, i32 %13, i64* %15)
  %17 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %18 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %17, i32 0, i32 4
  store i64 %16, i64* %18, align 8
  %19 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %20 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %128

26:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %116, %26
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SYNC_URBS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %119

31:                                               ; preds = %27
  %32 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %33 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %32, i32 0, i32 5
  %34 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %34, i64 %36
  store %struct.snd_urb_ctx* %37, %struct.snd_urb_ctx** %5, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %5, align 8
  %40 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %42 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %42, i32 0, i32 3
  store %struct.snd_usb_endpoint* %41, %struct.snd_usb_endpoint** %43, align 8
  %44 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %5, align 8
  %45 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.TYPE_4__* @usb_alloc_urb(i32 1, i32 %46)
  %48 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %5, align 8
  %49 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %48, i32 0, i32 2
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %49, align 8
  %50 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %5, align 8
  %51 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = icmp ne %struct.TYPE_4__* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %31
  br label %123

55:                                               ; preds = %31
  %56 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %57 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = mul nsw i32 %59, 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %58, %61
  %63 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %5, align 8
  %64 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 8
  store i64 %62, i64* %66, align 8
  %67 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %68 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = mul nsw i32 %70, 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %69, %72
  %74 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %5, align 8
  %75 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 7
  store i64 %73, i64* %77, align 8
  %78 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %5, align 8
  %79 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %78, i32 0, i32 2
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 4, i32* %81, align 8
  %82 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %83 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %5, align 8
  %86 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %85, i32 0, i32 2
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 6
  store i32 %84, i32* %88, align 4
  %89 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %90 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %5, align 8
  %91 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %90, i32 0, i32 2
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 5
  store i32 %89, i32* %93, align 8
  %94 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %5, align 8
  %95 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i32 1, i32* %97, align 4
  %98 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %99 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = shl i32 1, %100
  %102 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %5, align 8
  %103 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %102, i32 0, i32 2
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  store i32 %101, i32* %105, align 8
  %106 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %5, align 8
  %107 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %5, align 8
  %108 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %107, i32 0, i32 2
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 4
  store %struct.snd_urb_ctx* %106, %struct.snd_urb_ctx** %110, align 8
  %111 = load i32, i32* @snd_complete_urb, align 4
  %112 = load %struct.snd_urb_ctx*, %struct.snd_urb_ctx** %5, align 8
  %113 = getelementptr inbounds %struct.snd_urb_ctx, %struct.snd_urb_ctx* %112, i32 0, i32 2
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  store i32 %111, i32* %115, align 4
  br label %116

116:                                              ; preds = %55
  %117 = load i32, i32* %4, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %4, align 4
  br label %27

119:                                              ; preds = %27
  %120 = load i32, i32* @SYNC_URBS, align 4
  %121 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %122 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  store i32 0, i32* %2, align 4
  br label %128

123:                                              ; preds = %54
  %124 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %3, align 8
  %125 = call i32 @release_urbs(%struct.snd_usb_endpoint* %124, i32 0)
  %126 = load i32, i32* @ENOMEM, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %123, %119, %23
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i64 @usb_alloc_coherent(i32, i32, i32, i64*) #1

declare dso_local %struct.TYPE_4__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @release_urbs(%struct.snd_usb_endpoint*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
