; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/6fire/extr_comm.c_usb6fire_comm_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/6fire/extr_comm.c_usb6fire_comm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfire_chip = type { %struct.comm_runtime*, %struct.TYPE_2__* }
%struct.comm_runtime = type { i32, %struct.comm_runtime*, i32, i32, i32, %struct.sfire_chip*, %struct.urb }
%struct.urb = type { i32, i32, %struct.comm_runtime*, i32, %struct.TYPE_2__*, i32, %struct.comm_runtime* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@COMM_RECEIVER_BUFSIZE = common dso_local global i32 0, align 4
@usb6fire_comm_init_urb = common dso_local global i32 0, align 4
@usb6fire_comm_write8 = common dso_local global i32 0, align 4
@usb6fire_comm_write16 = common dso_local global i32 0, align 4
@COMM_EP = common dso_local global i32 0, align 4
@usb6fire_comm_receiver_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cannot create comm data receiver.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb6fire_comm_init(%struct.sfire_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sfire_chip*, align 8
  %4 = alloca %struct.comm_runtime*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  store %struct.sfire_chip* %0, %struct.sfire_chip** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kzalloc(i32 88, i32 %7)
  %9 = bitcast i8* %8 to %struct.comm_runtime*
  store %struct.comm_runtime* %9, %struct.comm_runtime** %4, align 8
  %10 = load %struct.comm_runtime*, %struct.comm_runtime** %4, align 8
  %11 = icmp ne %struct.comm_runtime* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %100

15:                                               ; preds = %1
  %16 = load i32, i32* @COMM_RECEIVER_BUFSIZE, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kzalloc(i32 %16, i32 %17)
  %19 = bitcast i8* %18 to %struct.comm_runtime*
  %20 = load %struct.comm_runtime*, %struct.comm_runtime** %4, align 8
  %21 = getelementptr inbounds %struct.comm_runtime, %struct.comm_runtime* %20, i32 0, i32 1
  store %struct.comm_runtime* %19, %struct.comm_runtime** %21, align 8
  %22 = load %struct.comm_runtime*, %struct.comm_runtime** %4, align 8
  %23 = getelementptr inbounds %struct.comm_runtime, %struct.comm_runtime* %22, i32 0, i32 1
  %24 = load %struct.comm_runtime*, %struct.comm_runtime** %23, align 8
  %25 = icmp ne %struct.comm_runtime* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %15
  %27 = load %struct.comm_runtime*, %struct.comm_runtime** %4, align 8
  %28 = call i32 @kfree(%struct.comm_runtime* %27)
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %100

31:                                               ; preds = %15
  %32 = load %struct.comm_runtime*, %struct.comm_runtime** %4, align 8
  %33 = getelementptr inbounds %struct.comm_runtime, %struct.comm_runtime* %32, i32 0, i32 6
  store %struct.urb* %33, %struct.urb** %5, align 8
  %34 = load %struct.comm_runtime*, %struct.comm_runtime** %4, align 8
  %35 = getelementptr inbounds %struct.comm_runtime, %struct.comm_runtime* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %37 = load %struct.comm_runtime*, %struct.comm_runtime** %4, align 8
  %38 = getelementptr inbounds %struct.comm_runtime, %struct.comm_runtime* %37, i32 0, i32 5
  store %struct.sfire_chip* %36, %struct.sfire_chip** %38, align 8
  %39 = load %struct.urb*, %struct.urb** %5, align 8
  %40 = call i32 @usb_init_urb(%struct.urb* %39)
  %41 = load i32, i32* @usb6fire_comm_init_urb, align 4
  %42 = load %struct.comm_runtime*, %struct.comm_runtime** %4, align 8
  %43 = getelementptr inbounds %struct.comm_runtime, %struct.comm_runtime* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @usb6fire_comm_write8, align 4
  %45 = load %struct.comm_runtime*, %struct.comm_runtime** %4, align 8
  %46 = getelementptr inbounds %struct.comm_runtime, %struct.comm_runtime* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @usb6fire_comm_write16, align 4
  %48 = load %struct.comm_runtime*, %struct.comm_runtime** %4, align 8
  %49 = getelementptr inbounds %struct.comm_runtime, %struct.comm_runtime* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.comm_runtime*, %struct.comm_runtime** %4, align 8
  %51 = getelementptr inbounds %struct.comm_runtime, %struct.comm_runtime* %50, i32 0, i32 1
  %52 = load %struct.comm_runtime*, %struct.comm_runtime** %51, align 8
  %53 = load %struct.urb*, %struct.urb** %5, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 6
  store %struct.comm_runtime* %52, %struct.comm_runtime** %54, align 8
  %55 = load i32, i32* @COMM_RECEIVER_BUFSIZE, align 4
  %56 = load %struct.urb*, %struct.urb** %5, align 8
  %57 = getelementptr inbounds %struct.urb, %struct.urb* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %59 = getelementptr inbounds %struct.sfire_chip, %struct.sfire_chip* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* @COMM_EP, align 4
  %62 = call i32 @usb_rcvintpipe(%struct.TYPE_2__* %60, i32 %61)
  %63 = load %struct.urb*, %struct.urb** %5, align 8
  %64 = getelementptr inbounds %struct.urb, %struct.urb* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 8
  %65 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %66 = getelementptr inbounds %struct.sfire_chip, %struct.sfire_chip* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load %struct.urb*, %struct.urb** %5, align 8
  %69 = getelementptr inbounds %struct.urb, %struct.urb* %68, i32 0, i32 4
  store %struct.TYPE_2__* %67, %struct.TYPE_2__** %69, align 8
  %70 = load i32, i32* @usb6fire_comm_receiver_handler, align 4
  %71 = load %struct.urb*, %struct.urb** %5, align 8
  %72 = getelementptr inbounds %struct.urb, %struct.urb* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  %73 = load %struct.comm_runtime*, %struct.comm_runtime** %4, align 8
  %74 = load %struct.urb*, %struct.urb** %5, align 8
  %75 = getelementptr inbounds %struct.urb, %struct.urb* %74, i32 0, i32 2
  store %struct.comm_runtime* %73, %struct.comm_runtime** %75, align 8
  %76 = load %struct.urb*, %struct.urb** %5, align 8
  %77 = getelementptr inbounds %struct.urb, %struct.urb* %76, i32 0, i32 1
  store i32 1, i32* %77, align 4
  %78 = load %struct.urb*, %struct.urb** %5, align 8
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call i32 @usb_submit_urb(%struct.urb* %78, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %31
  %84 = load %struct.comm_runtime*, %struct.comm_runtime** %4, align 8
  %85 = getelementptr inbounds %struct.comm_runtime, %struct.comm_runtime* %84, i32 0, i32 1
  %86 = load %struct.comm_runtime*, %struct.comm_runtime** %85, align 8
  %87 = call i32 @kfree(%struct.comm_runtime* %86)
  %88 = load %struct.comm_runtime*, %struct.comm_runtime** %4, align 8
  %89 = call i32 @kfree(%struct.comm_runtime* %88)
  %90 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %91 = getelementptr inbounds %struct.sfire_chip, %struct.sfire_chip* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = call i32 @dev_err(i32* %93, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %2, align 4
  br label %100

96:                                               ; preds = %31
  %97 = load %struct.comm_runtime*, %struct.comm_runtime** %4, align 8
  %98 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %99 = getelementptr inbounds %struct.sfire_chip, %struct.sfire_chip* %98, i32 0, i32 0
  store %struct.comm_runtime* %97, %struct.comm_runtime** %99, align 8
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %96, %83, %26, %12
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.comm_runtime*) #1

declare dso_local i32 @usb_init_urb(%struct.urb*) #1

declare dso_local i32 @usb_rcvintpipe(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
