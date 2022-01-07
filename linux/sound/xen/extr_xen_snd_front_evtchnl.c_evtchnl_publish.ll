; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_evtchnl.c_evtchnl_publish.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front_evtchnl.c_evtchnl_publish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_snd_front_evtchnl = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.xenbus_device* }
%struct.xenbus_device = type { i32 }
%struct.xenbus_transaction = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Error writing ring-ref: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Error writing event channel: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.xen_snd_front_evtchnl*, i8*, i8*, i8*)* @evtchnl_publish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evtchnl_publish(i32 %0, %struct.xen_snd_front_evtchnl* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xenbus_transaction, align 4
  %8 = alloca %struct.xen_snd_front_evtchnl*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.xenbus_device*, align 8
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  store i32 %0, i32* %14, align 4
  store %struct.xen_snd_front_evtchnl* %1, %struct.xen_snd_front_evtchnl** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %16 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.xenbus_device*, %struct.xenbus_device** %18, align 8
  store %struct.xenbus_device* %19, %struct.xenbus_device** %12, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %23 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @xenbus_printf(i32 %26, i8* %20, i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %5
  %31 = load %struct.xenbus_device*, %struct.xenbus_device** %12, align 8
  %32 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %31, i32 0, i32 0
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %6, align 4
  br label %54

36:                                               ; preds = %5
  %37 = load i8*, i8** %9, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = load %struct.xen_snd_front_evtchnl*, %struct.xen_snd_front_evtchnl** %8, align 8
  %40 = getelementptr inbounds %struct.xen_snd_front_evtchnl, %struct.xen_snd_front_evtchnl* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @xenbus_printf(i32 %43, i8* %37, i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %36
  %48 = load %struct.xenbus_device*, %struct.xenbus_device** %12, align 8
  %49 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %48, i32 0, i32 0
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %6, align 4
  br label %54

53:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %53, %47, %30
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local i32 @xenbus_printf(i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
