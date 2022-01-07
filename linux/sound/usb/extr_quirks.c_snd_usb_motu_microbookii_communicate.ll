; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_snd_usb_motu_microbookii_communicate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_quirks.c_snd_usb_motu_microbookii_communicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"MicroBookII snd: \00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"MicroBookII rcv: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32*, i32, i32*)* @snd_usb_motu_microbookii_communicate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usb_motu_microbookii_communicate(%struct.usb_device* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %13 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %14 = call i32 @usb_sndintpipe(%struct.usb_device* %13, i32 1)
  %15 = call i64 @snd_usb_pipe_sanity_check(%struct.usb_device* %12, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %68

20:                                               ; preds = %4
  %21 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %22 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %23 = call i32 @usb_sndintpipe(%struct.usb_device* %22, i32 1)
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @usb_interrupt_msg(%struct.usb_device* %21, i32 %23, i32* %24, i32 %26, i32* %11, i32 1000)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %5, align 4
  br label %68

32:                                               ; preds = %20
  %33 = load i32, i32* @KERN_DEBUG, align 4
  %34 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @print_hex_dump(i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %34, i32 16, i32 1, i32* %35, i32 %36, i32 0)
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @memset(i32* %38, i32 0, i32 %39)
  %41 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %42 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %43 = call i32 @usb_rcvintpipe(%struct.usb_device* %42, i32 130)
  %44 = call i64 @snd_usb_pipe_sanity_check(%struct.usb_device* %41, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %32
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %68

49:                                               ; preds = %32
  %50 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %51 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %52 = call i32 @usb_rcvintpipe(%struct.usb_device* %51, i32 130)
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @usb_interrupt_msg(%struct.usb_device* %50, i32 %52, i32* %53, i32 %54, i32* %11, i32 1000)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %5, align 4
  br label %68

60:                                               ; preds = %49
  %61 = load i32, i32* @KERN_DEBUG, align 4
  %62 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @print_hex_dump(i32 %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 16, i32 1, i32* %63, i32 %64, i32 0)
  %66 = load i32, i32* %11, align 4
  %67 = load i32*, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %60, %58, %46, %30, %17
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i64 @snd_usb_pipe_sanity_check(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_interrupt_msg(%struct.usb_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @usb_rcvintpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
