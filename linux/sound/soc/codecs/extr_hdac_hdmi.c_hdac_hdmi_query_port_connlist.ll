; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_query_port_connlist.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_query_port_connlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i32 }
%struct.hdac_hdmi_pin = type { i32 }
%struct.hdac_hdmi_port = type { i64, i32, i32 }

@AC_WCAP_CONN_LIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"HDMI: pin %d wcaps %#x does not support connection list\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@HDA_MAX_CONNECTIONS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"No connections found for pin:port %d:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"num_mux_nids %d for pin:port %d:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_device*, %struct.hdac_hdmi_pin*, %struct.hdac_hdmi_port*)* @hdac_hdmi_query_port_connlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdac_hdmi_query_port_connlist(%struct.hdac_device* %0, %struct.hdac_hdmi_pin* %1, %struct.hdac_hdmi_port* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdac_device*, align 8
  %6 = alloca %struct.hdac_hdmi_pin*, align 8
  %7 = alloca %struct.hdac_hdmi_port*, align 8
  store %struct.hdac_device* %0, %struct.hdac_device** %5, align 8
  store %struct.hdac_hdmi_pin* %1, %struct.hdac_hdmi_pin** %6, align 8
  store %struct.hdac_hdmi_port* %2, %struct.hdac_hdmi_port** %7, align 8
  %8 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %9 = load %struct.hdac_hdmi_pin*, %struct.hdac_hdmi_pin** %6, align 8
  %10 = getelementptr inbounds %struct.hdac_hdmi_pin, %struct.hdac_hdmi_pin* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @get_wcaps(%struct.hdac_device* %8, i32 %11)
  %13 = load i32, i32* @AC_WCAP_CONN_LIST, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %3
  %17 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %18 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %17, i32 0, i32 0
  %19 = load %struct.hdac_hdmi_pin*, %struct.hdac_hdmi_pin** %6, align 8
  %20 = getelementptr inbounds %struct.hdac_hdmi_pin, %struct.hdac_hdmi_pin* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %23 = load %struct.hdac_hdmi_pin*, %struct.hdac_hdmi_pin** %6, align 8
  %24 = getelementptr inbounds %struct.hdac_hdmi_pin, %struct.hdac_hdmi_pin* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @get_wcaps(%struct.hdac_device* %22, i32 %25)
  %27 = call i32 @dev_warn(i32* %18, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %81

30:                                               ; preds = %3
  %31 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %32 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %7, align 8
  %33 = call i64 @hdac_hdmi_port_select_set(%struct.hdac_device* %31, %struct.hdac_hdmi_port* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %81

38:                                               ; preds = %30
  %39 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %40 = load %struct.hdac_hdmi_pin*, %struct.hdac_hdmi_pin** %6, align 8
  %41 = getelementptr inbounds %struct.hdac_hdmi_pin, %struct.hdac_hdmi_pin* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %7, align 8
  %44 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @HDA_MAX_CONNECTIONS, align 4
  %47 = call i64 @snd_hdac_get_connections(%struct.hdac_device* %39, i32 %42, i32 %45, i32 %46)
  %48 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %7, align 8
  %49 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %7, align 8
  %51 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %38
  %55 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %56 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %55, i32 0, i32 0
  %57 = load %struct.hdac_hdmi_pin*, %struct.hdac_hdmi_pin** %6, align 8
  %58 = getelementptr inbounds %struct.hdac_hdmi_pin, %struct.hdac_hdmi_pin* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %7, align 8
  %61 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dev_warn(i32* %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %54, %38
  %65 = load %struct.hdac_device*, %struct.hdac_device** %5, align 8
  %66 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %65, i32 0, i32 0
  %67 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %7, align 8
  %68 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.hdac_hdmi_pin*, %struct.hdac_hdmi_pin** %6, align 8
  %71 = getelementptr inbounds %struct.hdac_hdmi_pin, %struct.hdac_hdmi_pin* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %7, align 8
  %74 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dev_dbg(i32* %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %69, i32 %72, i32 %75)
  %77 = load %struct.hdac_hdmi_port*, %struct.hdac_hdmi_port** %7, align 8
  %78 = getelementptr inbounds %struct.hdac_hdmi_port, %struct.hdac_hdmi_port* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %64, %35, %16
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @get_wcaps(%struct.hdac_device*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i64 @hdac_hdmi_port_select_set(%struct.hdac_device*, %struct.hdac_hdmi_port*) #1

declare dso_local i64 @snd_hdac_get_connections(%struct.hdac_device*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
