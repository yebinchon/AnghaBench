; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usb_stream.c_init_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usb_stream.c_init_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_stream_kernel = type { i8*, i8**, i8**, i32, %struct.usb_stream* }
%struct.usb_stream = type { i32 }
%struct.usb_device = type { i32 }

@USB_STREAM_NURBS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_stream_kernel*, i32, %struct.usb_device*, i32, i32)* @init_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_urbs(%struct.usb_stream_kernel* %0, i32 %1, %struct.usb_device* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_stream_kernel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.usb_stream*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.usb_stream_kernel* %0, %struct.usb_stream_kernel** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.usb_device* %2, %struct.usb_device** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %7, align 8
  %16 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %15, i32 0, i32 4
  %17 = load %struct.usb_stream*, %struct.usb_stream** %16, align 8
  store %struct.usb_stream* %17, %struct.usb_stream** %12, align 8
  %18 = load %struct.usb_stream*, %struct.usb_stream** %12, align 8
  %19 = bitcast %struct.usb_stream* %18 to i8*
  %20 = getelementptr inbounds i8, i8* %19, i64 4
  %21 = load %struct.usb_stream*, %struct.usb_stream** %12, align 8
  %22 = getelementptr inbounds %struct.usb_stream, %struct.usb_stream* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = getelementptr inbounds i8, i8* %20, i64 %25
  store i8* %26, i8** %13, align 8
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %78, %5
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @USB_STREAM_NURBS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %81

31:                                               ; preds = %27
  %32 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %7, align 8
  %33 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @usb_alloc_urb(i32 %34, i32 %35)
  %37 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %7, align 8
  %38 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %37, i32 0, i32 2
  %39 = load i8**, i8*** %38, align 8
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  store i8* %36, i8** %42, align 8
  %43 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %7, align 8
  %44 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %43, i32 0, i32 2
  %45 = load i8**, i8*** %44, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %31
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %109

54:                                               ; preds = %31
  %55 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %7, align 8
  %56 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i8* @usb_alloc_urb(i32 %57, i32 %58)
  %60 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %7, align 8
  %61 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %60, i32 0, i32 1
  %62 = load i8**, i8*** %61, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  store i8* %59, i8** %65, align 8
  %66 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %7, align 8
  %67 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %66, i32 0, i32 1
  %68 = load i8**, i8*** %67, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %54
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %109

77:                                               ; preds = %54
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %27

81:                                               ; preds = %27
  %82 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %7, align 8
  %85 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %84, i32 0, i32 2
  %86 = load i8**, i8*** %85, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i64 @init_pipe_urbs(%struct.usb_stream_kernel* %82, i32 %83, i8** %86, i8* %87, %struct.usb_device* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %105, label %92

92:                                               ; preds = %81
  %93 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %7, align 8
  %96 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %95, i32 0, i32 1
  %97 = load i8**, i8*** %96, align 8
  %98 = load %struct.usb_stream_kernel*, %struct.usb_stream_kernel** %7, align 8
  %99 = getelementptr inbounds %struct.usb_stream_kernel, %struct.usb_stream_kernel* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call i64 @init_pipe_urbs(%struct.usb_stream_kernel* %93, i32 %94, i8** %97, i8* %100, %struct.usb_device* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %92, %81
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %6, align 4
  br label %109

108:                                              ; preds = %92
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %108, %105, %74, %51
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

declare dso_local i64 @init_pipe_urbs(%struct.usb_stream_kernel*, i32, i8**, i8*, %struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
