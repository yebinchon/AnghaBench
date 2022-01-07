; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_control.c_snd_sof_bytes_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_control.c_snd_sof_bytes_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.soc_bytes_ext = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.snd_sof_control* }
%struct.snd_sof_control = type { i32, %struct.sof_ipc_ctrl_data*, %struct.snd_sof_dev* }
%struct.sof_ipc_ctrl_data = type { %struct.sof_abi_hdr* }
%struct.sof_abi_hdr = type { i32 }
%struct.snd_sof_dev = type { i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"error: data max %d exceeds ucontrol data array size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"error: size too big %zu bytes max is %d\0A\00", align 1
@SOF_IPC_COMP_SET_DATA = common dso_local global i32 0, align 4
@SOF_CTRL_TYPE_DATA_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sof_bytes_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.soc_bytes_ext*, align 8
  %7 = alloca %struct.snd_sof_control*, align 8
  %8 = alloca %struct.snd_sof_dev*, align 8
  %9 = alloca %struct.sof_ipc_ctrl_data*, align 8
  %10 = alloca %struct.sof_abi_hdr*, align 8
  %11 = alloca i64, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.soc_bytes_ext*
  store %struct.soc_bytes_ext* %15, %struct.soc_bytes_ext** %6, align 8
  %16 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %6, align 8
  %17 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.snd_sof_control*, %struct.snd_sof_control** %18, align 8
  store %struct.snd_sof_control* %19, %struct.snd_sof_control** %7, align 8
  %20 = load %struct.snd_sof_control*, %struct.snd_sof_control** %7, align 8
  %21 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %20, i32 0, i32 2
  %22 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %21, align 8
  store %struct.snd_sof_dev* %22, %struct.snd_sof_dev** %8, align 8
  %23 = load %struct.snd_sof_control*, %struct.snd_sof_control** %7, align 8
  %24 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %23, i32 0, i32 1
  %25 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %24, align 8
  store %struct.sof_ipc_ctrl_data* %25, %struct.sof_ipc_ctrl_data** %9, align 8
  %26 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %9, align 8
  %27 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %26, i32 0, i32 0
  %28 = load %struct.sof_abi_hdr*, %struct.sof_abi_hdr** %27, align 8
  store %struct.sof_abi_hdr* %28, %struct.sof_abi_hdr** %10, align 8
  %29 = load %struct.sof_abi_hdr*, %struct.sof_abi_hdr** %10, align 8
  %30 = getelementptr inbounds %struct.sof_abi_hdr, %struct.sof_abi_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 %32, 4
  store i64 %33, i64* %11, align 8
  %34 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %6, align 8
  %35 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = icmp ugt i64 %37, 4
  br i1 %38, label %39, label %50

39:                                               ; preds = %2
  %40 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %41 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %6, align 8
  %44 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = call i32 (i32, i8*, i64, ...) @dev_err_ratelimited(i32 %42, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %94

50:                                               ; preds = %2
  %51 = load i64, i64* %11, align 8
  %52 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %6, align 8
  %53 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = icmp ugt i64 %51, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %50
  %58 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %59 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %11, align 8
  %62 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %6, align 8
  %63 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i32, i8*, i64, ...) @dev_err_ratelimited(i32 %60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %61, i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %94

68:                                               ; preds = %50
  %69 = load %struct.sof_abi_hdr*, %struct.sof_abi_hdr** %10, align 8
  %70 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %71 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @memcpy(%struct.sof_abi_hdr* %69, i32 %74, i64 %75)
  %77 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %78 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @pm_runtime_active(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %68
  %83 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %84 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.snd_sof_control*, %struct.snd_sof_control** %7, align 8
  %87 = load i32, i32* @SOF_IPC_COMP_SET_DATA, align 4
  %88 = load i32, i32* @SOF_CTRL_TYPE_DATA_SET, align 4
  %89 = load %struct.snd_sof_control*, %struct.snd_sof_control** %7, align 8
  %90 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @snd_sof_ipc_set_get_comp_data(i32 %85, %struct.snd_sof_control* %86, i32 %87, i32 %88, i32 %91, i32 1)
  br label %93

93:                                               ; preds = %82, %68
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %57, %39
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @dev_err_ratelimited(i32, i8*, i64, ...) #1

declare dso_local i32 @memcpy(%struct.sof_abi_hdr*, i32, i64) #1

declare dso_local i64 @pm_runtime_active(i32) #1

declare dso_local i32 @snd_sof_ipc_set_get_comp_data(i32, %struct.snd_sof_control*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
