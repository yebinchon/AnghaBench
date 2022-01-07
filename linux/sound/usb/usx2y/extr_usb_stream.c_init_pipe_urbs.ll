; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usb_stream.c_init_pipe_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usb_stream.c_init_pipe_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_stream_kernel = type { i32 }
%struct.urb = type { i8*, i32, i32, i32, i32, %struct.usb_iso_packet_descriptor*, %struct.usb_stream_kernel*, %struct.usb_device* }
%struct.usb_iso_packet_descriptor = type { i32, i64 }
%struct.usb_device = type { i32 }

@USB_STREAM_NURBS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_stream_kernel*, i32, %struct.urb**, i8*, %struct.usb_device*, i32)* @init_pipe_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_pipe_urbs(%struct.usb_stream_kernel* %0, i32 %1, %struct.urb** %2, i8* %3, %struct.usb_device* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_stream_kernel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.urb**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.usb_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.urb*, align 8
  %19 = alloca %struct.usb_iso_packet_descriptor*, align 8
  store %struct.usb_stream_kernel* %0, %struct.usb_stream_kernel** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.urb** %2, %struct.urb*** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.usb_device* %4, %struct.usb_device** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* %9, align 4
  br label %30

24:                                               ; preds = %6
  %25 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i64 @usb_pipeout(i32 %27)
  %29 = call i32 @usb_maxpacket(%struct.usb_device* %25, i32 %26, i64 %28)
  br label %30

30:                                               ; preds = %24, %22
  %31 = phi i32 [ %23, %22 ], [ %29, %24 ]
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %8, align 8
  %34 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  store i32 %36, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %121, %30
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* @USB_STREAM_NURBS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %128

41:                                               ; preds = %37
  %42 = load %struct.urb**, %struct.urb*** %10, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.urb*, %struct.urb** %42, i64 %44
  %46 = load %struct.urb*, %struct.urb** %45, align 8
  store %struct.urb* %46, %struct.urb** %18, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load %struct.urb*, %struct.urb** %18, align 8
  %49 = getelementptr inbounds %struct.urb, %struct.urb* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  %51 = load %struct.urb*, %struct.urb** %18, align 8
  %52 = getelementptr inbounds %struct.urb, %struct.urb* %51, i32 0, i32 7
  store %struct.usb_device* %50, %struct.usb_device** %52, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.urb*, %struct.urb** %18, align 8
  %55 = getelementptr inbounds %struct.urb, %struct.urb* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %8, align 8
  %57 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.urb*, %struct.urb** %18, align 8
  %60 = getelementptr inbounds %struct.urb, %struct.urb* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %8, align 8
  %62 = load %struct.urb*, %struct.urb** %18, align 8
  %63 = getelementptr inbounds %struct.urb, %struct.urb* %62, i32 0, i32 6
  store %struct.usb_stream_kernel* %61, %struct.usb_stream_kernel** %63, align 8
  %64 = load %struct.urb*, %struct.urb** %18, align 8
  %65 = getelementptr inbounds %struct.urb, %struct.urb* %64, i32 0, i32 3
  store i32 1, i32* %65, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i64 @usb_pipeout(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %41
  br label %121

70:                                               ; preds = %41
  %71 = load %struct.urb*, %struct.urb** %18, align 8
  %72 = call i64 @usb_urb_ep_type_check(%struct.urb* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %7, align 4
  br label %129

77:                                               ; preds = %70
  %78 = load i32, i32* %17, align 4
  %79 = load %struct.urb*, %struct.urb** %18, align 8
  %80 = getelementptr inbounds %struct.urb, %struct.urb* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  %81 = load %struct.urb*, %struct.urb** %18, align 8
  %82 = getelementptr inbounds %struct.urb, %struct.urb* %81, i32 0, i32 5
  %83 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %82, align 8
  store %struct.usb_iso_packet_descriptor* %83, %struct.usb_iso_packet_descriptor** %19, align 8
  %84 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %19, align 8
  %85 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* %16, align 4
  %87 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %19, align 8
  %88 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  store i32 1, i32* %15, align 4
  br label %89

89:                                               ; preds = %117, %77
  %90 = load i32, i32* %15, align 4
  %91 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %8, align 8
  %92 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %120

95:                                               ; preds = %89
  %96 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %19, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %96, i64 %99
  %101 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %102, %104
  %106 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %19, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %106, i64 %108
  %110 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %109, i32 0, i32 1
  store i64 %105, i64* %110, align 8
  %111 = load i32, i32* %16, align 4
  %112 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %19, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %112, i64 %114
  %116 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %115, i32 0, i32 0
  store i32 %111, i32* %116, align 8
  br label %117

117:                                              ; preds = %95
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %15, align 4
  br label %89

120:                                              ; preds = %89
  br label %121

121:                                              ; preds = %120, %69
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %17, align 4
  %125 = load i8*, i8** %11, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  store i8* %127, i8** %11, align 8
  br label %37

128:                                              ; preds = %37
  store i32 0, i32* %7, align 4
  br label %129

129:                                              ; preds = %128, %74
  %130 = load i32, i32* %7, align 4
  ret i32 %130
}

declare dso_local i32 @usb_maxpacket(%struct.usb_device*, i32, i64) #1

declare dso_local i64 @usb_pipeout(i32) #1

declare dso_local i64 @usb_urb_ep_type_check(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
