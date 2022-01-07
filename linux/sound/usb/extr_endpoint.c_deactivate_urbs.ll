; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_endpoint.c_deactivate_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_endpoint.c_deactivate_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_endpoint = type { i32, %struct.TYPE_3__*, i32, i32, i64, i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.urb* }
%struct.urb = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EBADFD = common dso_local global i32 0, align 4
@EP_FLAG_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_usb_endpoint*, i32)* @deactivate_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deactivate_urbs(%struct.snd_usb_endpoint* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_usb_endpoint*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.urb*, align 8
  store %struct.snd_usb_endpoint* %0, %struct.snd_usb_endpoint** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %12 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %11, i32 0, i32 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = call i64 @atomic_read(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i32, i32* @EBADFD, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %67

20:                                               ; preds = %10, %2
  %21 = load i32, i32* @EP_FLAG_RUNNING, align 4
  %22 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %23 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %22, i32 0, i32 7
  %24 = call i32 @clear_bit(i32 %21, i32* %23)
  %25 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %26 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %25, i32 0, i32 6
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %29 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %28, i32 0, i32 5
  store i64 0, i64* %29, align 8
  %30 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %31 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %63, %20
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %35 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %33, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %41 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %40, i32 0, i32 3
  %42 = call i64 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %47 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %46, i32 0, i32 2
  %48 = call i32 @test_and_set_bit(i32 %45, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %44
  %51 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %4, align 8
  %52 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load %struct.urb*, %struct.urb** %57, align 8
  store %struct.urb* %58, %struct.urb** %7, align 8
  %59 = load %struct.urb*, %struct.urb** %7, align 8
  %60 = call i32 @usb_unlink_urb(%struct.urb* %59)
  br label %61

61:                                               ; preds = %50, %44
  br label %62

62:                                               ; preds = %61, %38
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %32

66:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %17
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @usb_unlink_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
