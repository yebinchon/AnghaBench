; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usbusx2y.c_usX2Y_AsyncSeq04_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usbusx2y.c_usX2Y_AsyncSeq04_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usX2Ydev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32**, i32* }

@URBS_AsyncSeq = common dso_local global i32 0, align 4
@URB_DataLen_AsyncSeq = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@i_usX2Y_Out04Int = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usX2Y_AsyncSeq04_init(%struct.usX2Ydev* %0) #0 {
  %2 = alloca %struct.usX2Ydev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.usX2Ydev* %0, %struct.usX2Ydev** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @URBS_AsyncSeq, align 4
  %6 = load i32, i32* @URB_DataLen_AsyncSeq, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i32* @kmalloc_array(i32 %5, i32 %6, i32 %7)
  %9 = load %struct.usX2Ydev*, %struct.usX2Ydev** %2, align 8
  %10 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32* %8, i32** %11, align 8
  %12 = load %struct.usX2Ydev*, %struct.usX2Ydev** %2, align 8
  %13 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* null, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %84

20:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %80, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @URBS_AsyncSeq, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %83

25:                                               ; preds = %21
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32* @usb_alloc_urb(i32 0, i32 %26)
  %28 = load %struct.usX2Ydev*, %struct.usX2Ydev** %2, align 8
  %29 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32**, i32*** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  store i32* %27, i32** %34, align 8
  %35 = icmp eq i32* null, %27
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %83

39:                                               ; preds = %25
  %40 = load %struct.usX2Ydev*, %struct.usX2Ydev** %2, align 8
  %41 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.usX2Ydev*, %struct.usX2Ydev** %2, align 8
  %49 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.usX2Ydev*, %struct.usX2Ydev** %2, align 8
  %52 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @usb_sndbulkpipe(i32 %53, i32 4)
  %55 = load %struct.usX2Ydev*, %struct.usX2Ydev** %2, align 8
  %56 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* @URB_DataLen_AsyncSeq, align 4
  %60 = load i32, i32* %4, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = load i32, i32* @i_usX2Y_Out04Int, align 4
  %65 = load %struct.usX2Ydev*, %struct.usX2Ydev** %2, align 8
  %66 = call i32 @usb_fill_bulk_urb(i32* %47, i32 %50, i32 %54, i32* %63, i32 0, i32 %64, %struct.usX2Ydev* %65)
  %67 = load %struct.usX2Ydev*, %struct.usX2Ydev** %2, align 8
  %68 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32**, i32*** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @usb_urb_ep_type_check(i32* %74)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %39
  br label %83

79:                                               ; preds = %39
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %21

83:                                               ; preds = %78, %36, %21
  br label %84

84:                                               ; preds = %83, %17
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32*, i32, i32, i32*, i32, i32, %struct.usX2Ydev*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_urb_ep_type_check(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
