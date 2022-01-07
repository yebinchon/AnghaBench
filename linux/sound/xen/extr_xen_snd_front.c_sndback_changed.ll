; ModuleID = '/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front.c_sndback_changed.c'
source_filename = "/home/carl/AnghaBench/linux/sound/xen/extr_xen_snd_front.c_sndback_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32, i32 }
%struct.xen_snd_front_info = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Backend state is %s, front is %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"initializing frontend\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenbus_device*, i32)* @sndback_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sndback_changed(%struct.xenbus_device* %0, i32 %1) #0 {
  %3 = alloca %struct.xenbus_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xen_snd_front_info*, align 8
  %6 = alloca i32, align 4
  store %struct.xenbus_device* %0, %struct.xenbus_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %8 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %7, i32 0, i32 1
  %9 = call %struct.xen_snd_front_info* @dev_get_drvdata(i32* %8)
  store %struct.xen_snd_front_info* %9, %struct.xen_snd_front_info** %5, align 8
  %10 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %11 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %10, i32 0, i32 1
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @xenbus_strstate(i32 %12)
  %14 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %15 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @xenbus_strstate(i32 %16)
  %18 = call i32 @dev_dbg(i32* %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %17)
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %68 [
    i32 129, label %20
    i32 130, label %20
    i32 132, label %20
    i32 131, label %21
    i32 133, label %24
    i32 134, label %39
    i32 135, label %58
    i32 128, label %59
    i32 136, label %59
  ]

20:                                               ; preds = %2, %2, %2
  br label %68

21:                                               ; preds = %2
  %22 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %5, align 8
  %23 = call i32 @sndback_disconnect(%struct.xen_snd_front_info* %22)
  br label %68

24:                                               ; preds = %2
  %25 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %5, align 8
  %26 = call i32 @sndback_disconnect(%struct.xen_snd_front_info* %25)
  %27 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %5, align 8
  %28 = call i32 @sndback_initwait(%struct.xen_snd_front_info* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %32, i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %38

35:                                               ; preds = %24
  %36 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %37 = call i32 @xenbus_switch_state(%struct.xenbus_device* %36, i32 132)
  br label %38

38:                                               ; preds = %35, %31
  br label %68

39:                                               ; preds = %2
  %40 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %41 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 132
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %68

45:                                               ; preds = %39
  %46 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %5, align 8
  %47 = call i32 @sndback_connect(%struct.xen_snd_front_info* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %51, i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %57

54:                                               ; preds = %45
  %55 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %56 = call i32 @xenbus_switch_state(%struct.xenbus_device* %55, i32 134)
  br label %57

57:                                               ; preds = %54, %50
  br label %68

58:                                               ; preds = %2
  br label %68

59:                                               ; preds = %2, %2
  %60 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %61 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 136
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %68

65:                                               ; preds = %59
  %66 = load %struct.xen_snd_front_info*, %struct.xen_snd_front_info** %5, align 8
  %67 = call i32 @sndback_disconnect(%struct.xen_snd_front_info* %66)
  br label %68

68:                                               ; preds = %2, %65, %64, %58, %57, %44, %38, %21, %20
  ret void
}

declare dso_local %struct.xen_snd_front_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @xenbus_strstate(i32) #1

declare dso_local i32 @sndback_disconnect(%struct.xen_snd_front_info*) #1

declare dso_local i32 @sndback_initwait(%struct.xen_snd_front_info*) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*) #1

declare dso_local i32 @xenbus_switch_state(%struct.xenbus_device*, i32) #1

declare dso_local i32 @sndback_connect(%struct.xen_snd_front_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
