; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_podhd.c_podhd_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_podhd.c_podhd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_line6 = type { i32, i32, i32, i32, i32 }
%struct.usb_device_id = type { i64 }
%struct.usb_line6_podhd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.usb_interface = type { i32 }

@podhd_disconnect = common dso_local global i32 0, align 4
@podhd_startup = common dso_local global i32 0, align 4
@LINE6_CAP_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"interface %d not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@podhd_driver = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"can't claim interface %d, error %d\0A\00", align 1
@LINE6_CAP_CONTROL_INFO = common dso_local global i32 0, align 4
@podhd_dev_attr_group = common dso_local global i32 0, align 4
@LINE6_CAP_PCM = common dso_local global i32 0, align 4
@LINE6_PODX3 = common dso_local global i64 0, align 8
@LINE6_PODX3LIVE = common dso_local global i64 0, align 8
@podx3_pcm_properties = common dso_local global i32 0, align 4
@podhd_pcm_properties = common dso_local global i32 0, align 4
@PODHD_STARTUP_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_line6*, %struct.usb_device_id*)* @podhd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @podhd_init(%struct.usb_line6* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_line6*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_line6_podhd*, align 8
  %8 = alloca %struct.usb_interface*, align 8
  store %struct.usb_line6* %0, %struct.usb_line6** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %10 = call %struct.usb_line6_podhd* @line6_to_podhd(%struct.usb_line6* %9)
  store %struct.usb_line6_podhd* %10, %struct.usb_line6_podhd** %7, align 8
  %11 = load i32, i32* @podhd_disconnect, align 4
  %12 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %13 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @podhd_startup, align 4
  %15 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %16 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.usb_line6_podhd*, %struct.usb_line6_podhd** %7, align 8
  %18 = getelementptr inbounds %struct.usb_line6_podhd, %struct.usb_line6_podhd* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @LINE6_CAP_CONTROL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %73

26:                                               ; preds = %2
  %27 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %28 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.usb_line6_podhd*, %struct.usb_line6_podhd** %7, align 8
  %31 = getelementptr inbounds %struct.usb_line6_podhd, %struct.usb_line6_podhd* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.usb_interface* @usb_ifnum_to_if(i32 %29, i32 %35)
  store %struct.usb_interface* %36, %struct.usb_interface** %8, align 8
  %37 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %38 = icmp ne %struct.usb_interface* %37, null
  br i1 %38, label %53, label %39

39:                                               ; preds = %26
  %40 = load %struct.usb_line6_podhd*, %struct.usb_line6_podhd** %7, align 8
  %41 = getelementptr inbounds %struct.usb_line6_podhd, %struct.usb_line6_podhd* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.usb_line6_podhd*, %struct.usb_line6_podhd** %7, align 8
  %45 = getelementptr inbounds %struct.usb_line6_podhd, %struct.usb_line6_podhd* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %147

53:                                               ; preds = %26
  %54 = load %struct.usb_interface*, %struct.usb_interface** %8, align 8
  %55 = call i32 @usb_driver_claim_interface(i32* @podhd_driver, %struct.usb_interface* %54, i32* null)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = load %struct.usb_line6_podhd*, %struct.usb_line6_podhd** %7, align 8
  %60 = getelementptr inbounds %struct.usb_line6_podhd, %struct.usb_line6_podhd* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.usb_line6_podhd*, %struct.usb_line6_podhd** %7, align 8
  %64 = getelementptr inbounds %struct.usb_line6_podhd, %struct.usb_line6_podhd* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %147

72:                                               ; preds = %53
  br label %73

73:                                               ; preds = %72, %2
  %74 = load %struct.usb_line6_podhd*, %struct.usb_line6_podhd** %7, align 8
  %75 = getelementptr inbounds %struct.usb_line6_podhd, %struct.usb_line6_podhd* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @LINE6_CAP_CONTROL_INFO, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %73
  %84 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %85 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @snd_card_add_dev_attr(i32 %86, i32* @podhd_dev_attr_group)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %3, align 4
  br label %147

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %73
  %94 = load %struct.usb_line6_podhd*, %struct.usb_line6_podhd** %7, align 8
  %95 = getelementptr inbounds %struct.usb_line6_podhd, %struct.usb_line6_podhd* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @LINE6_CAP_PCM, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %126

103:                                              ; preds = %93
  %104 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %105 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %106 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @LINE6_PODX3, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %116, label %110

110:                                              ; preds = %103
  %111 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %112 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @LINE6_PODX3LIVE, align 8
  %115 = icmp eq i64 %113, %114
  br label %116

116:                                              ; preds = %110, %103
  %117 = phi i1 [ true, %103 ], [ %115, %110 ]
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32* @podx3_pcm_properties, i32* @podhd_pcm_properties
  %120 = call i32 @line6_init_pcm(%struct.usb_line6* %104, i32* %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %116
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %3, align 4
  br label %147

125:                                              ; preds = %116
  br label %126

126:                                              ; preds = %125, %93
  %127 = load %struct.usb_line6_podhd*, %struct.usb_line6_podhd** %7, align 8
  %128 = getelementptr inbounds %struct.usb_line6_podhd, %struct.usb_line6_podhd* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @LINE6_CAP_CONTROL_INFO, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %126
  %137 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %138 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @snd_card_register(i32 %139)
  store i32 %140, i32* %3, align 4
  br label %147

141:                                              ; preds = %126
  %142 = load %struct.usb_line6*, %struct.usb_line6** %4, align 8
  %143 = getelementptr inbounds %struct.usb_line6, %struct.usb_line6* %142, i32 0, i32 0
  %144 = load i32, i32* @PODHD_STARTUP_DELAY, align 4
  %145 = call i32 @msecs_to_jiffies(i32 %144)
  %146 = call i32 @schedule_delayed_work(i32* %143, i32 %145)
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %141, %136, %123, %90, %58, %39
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local %struct.usb_line6_podhd* @line6_to_podhd(%struct.usb_line6*) #1

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @usb_driver_claim_interface(i32*, %struct.usb_interface*, i32*) #1

declare dso_local i32 @snd_card_add_dev_attr(i32, i32*) #1

declare dso_local i32 @line6_init_pcm(%struct.usb_line6*, i32*) #1

declare dso_local i32 @snd_card_register(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
