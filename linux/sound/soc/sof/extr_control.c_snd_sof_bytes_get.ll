; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_control.c_snd_sof_bytes_get.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_control.c_snd_sof_bytes_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.soc_bytes_ext = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.snd_sof_control* }
%struct.snd_sof_control = type { %struct.sof_ipc_ctrl_data*, %struct.snd_sof_dev* }
%struct.sof_ipc_ctrl_data = type { %struct.sof_abi_hdr* }
%struct.sof_abi_hdr = type { i32 }
%struct.snd_sof_dev = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"error: data max %d exceeds ucontrol data array size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"error: DSP sent %zu bytes max is %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sof_bytes_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.soc_bytes_ext*, align 8
  %7 = alloca %struct.snd_sof_control*, align 8
  %8 = alloca %struct.snd_sof_dev*, align 8
  %9 = alloca %struct.sof_ipc_ctrl_data*, align 8
  %10 = alloca %struct.sof_abi_hdr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.soc_bytes_ext*
  store %struct.soc_bytes_ext* %16, %struct.soc_bytes_ext** %6, align 8
  %17 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %6, align 8
  %18 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.snd_sof_control*, %struct.snd_sof_control** %19, align 8
  store %struct.snd_sof_control* %20, %struct.snd_sof_control** %7, align 8
  %21 = load %struct.snd_sof_control*, %struct.snd_sof_control** %7, align 8
  %22 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %21, i32 0, i32 1
  %23 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %22, align 8
  store %struct.snd_sof_dev* %23, %struct.snd_sof_dev** %8, align 8
  %24 = load %struct.snd_sof_control*, %struct.snd_sof_control** %7, align 8
  %25 = getelementptr inbounds %struct.snd_sof_control, %struct.snd_sof_control* %24, i32 0, i32 0
  %26 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %25, align 8
  store %struct.sof_ipc_ctrl_data* %26, %struct.sof_ipc_ctrl_data** %9, align 8
  %27 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %9, align 8
  %28 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %27, i32 0, i32 0
  %29 = load %struct.sof_abi_hdr*, %struct.sof_abi_hdr** %28, align 8
  store %struct.sof_abi_hdr* %29, %struct.sof_abi_hdr** %10, align 8
  store i32 0, i32* %12, align 4
  %30 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %6, align 8
  %31 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = icmp ugt i64 %33, 4
  br i1 %34, label %35, label %46

35:                                               ; preds = %2
  %36 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %37 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %6, align 8
  %40 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = call i32 (i32, i8*, i64, ...) @dev_err_ratelimited(i32 %38, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %80

46:                                               ; preds = %2
  %47 = load %struct.sof_abi_hdr*, %struct.sof_abi_hdr** %10, align 8
  %48 = getelementptr inbounds %struct.sof_abi_hdr, %struct.sof_abi_hdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add i64 %50, 4
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %6, align 8
  %54 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = icmp ugt i64 %52, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %46
  %59 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %8, align 8
  %60 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i64, i64* %11, align 8
  %63 = load %struct.soc_bytes_ext*, %struct.soc_bytes_ext** %6, align 8
  %64 = getelementptr inbounds %struct.soc_bytes_ext, %struct.soc_bytes_ext* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i32, i8*, i64, ...) @dev_err_ratelimited(i32 %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %62, i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %12, align 4
  br label %78

69:                                               ; preds = %46
  %70 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %71 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.sof_abi_hdr*, %struct.sof_abi_hdr** %10, align 8
  %76 = load i64, i64* %11, align 8
  %77 = call i32 @memcpy(i32 %74, %struct.sof_abi_hdr* %75, i64 %76)
  br label %78

78:                                               ; preds = %69, %58
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %35
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @dev_err_ratelimited(i32, i8*, i64, ...) #1

declare dso_local i32 @memcpy(i32, %struct.sof_abi_hdr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
