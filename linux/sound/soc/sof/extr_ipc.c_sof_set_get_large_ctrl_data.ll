; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_ipc.c_sof_set_get_large_ctrl_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_ipc.c_sof_set_get_large_ctrl_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.sof_ipc_ctrl_data = type { i64, i32, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.sof_ipc_ctrl_data_params = type { i64, i64, i64, i32, %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data* }

@SOF_IPC_MSG_MAX_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sof_dev*, %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data_params*, i32)* @sof_set_get_large_ctrl_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_set_get_large_ctrl_data(%struct.snd_sof_dev* %0, %struct.sof_ipc_ctrl_data* %1, %struct.sof_ipc_ctrl_data_params* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_sof_dev*, align 8
  %7 = alloca %struct.sof_ipc_ctrl_data*, align 8
  %8 = alloca %struct.sof_ipc_ctrl_data_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sof_ipc_ctrl_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %6, align 8
  store %struct.sof_ipc_ctrl_data* %1, %struct.sof_ipc_ctrl_data** %7, align 8
  store %struct.sof_ipc_ctrl_data_params* %2, %struct.sof_ipc_ctrl_data_params** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %12, align 8
  %17 = load i32, i32* @SOF_IPC_MSG_MAX_SIZE, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.sof_ipc_ctrl_data* @kzalloc(i32 %17, i32 %18)
  store %struct.sof_ipc_ctrl_data* %19, %struct.sof_ipc_ctrl_data** %10, align 8
  %20 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %10, align 8
  %21 = icmp ne %struct.sof_ipc_ctrl_data* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %168

25:                                               ; preds = %4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %7, align 8
  %30 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %7, align 8
  %33 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %10, align 8
  %34 = load %struct.sof_ipc_ctrl_data_params*, %struct.sof_ipc_ctrl_data_params** %8, align 8
  %35 = call i32 @sof_get_ctrl_copy_params(i32 %31, %struct.sof_ipc_ctrl_data* %32, %struct.sof_ipc_ctrl_data* %33, %struct.sof_ipc_ctrl_data_params* %34)
  store i32 %35, i32* %15, align 4
  br label %44

36:                                               ; preds = %25
  %37 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %7, align 8
  %38 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %10, align 8
  %41 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %7, align 8
  %42 = load %struct.sof_ipc_ctrl_data_params*, %struct.sof_ipc_ctrl_data_params** %8, align 8
  %43 = call i32 @sof_get_ctrl_copy_params(i32 %39, %struct.sof_ipc_ctrl_data* %40, %struct.sof_ipc_ctrl_data* %41, %struct.sof_ipc_ctrl_data_params* %42)
  store i32 %43, i32* %15, align 4
  br label %44

44:                                               ; preds = %36, %28
  %45 = load i32, i32* %15, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %10, align 8
  %49 = call i32 @kfree(%struct.sof_ipc_ctrl_data* %48)
  %50 = load i32, i32* %15, align 4
  store i32 %50, i32* %5, align 4
  br label %168

51:                                               ; preds = %44
  %52 = load %struct.sof_ipc_ctrl_data_params*, %struct.sof_ipc_ctrl_data_params** %8, align 8
  %53 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %13, align 8
  %55 = load %struct.sof_ipc_ctrl_data_params*, %struct.sof_ipc_ctrl_data_params** %8, align 8
  %56 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %14, align 8
  %58 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %10, align 8
  %59 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %7, align 8
  %60 = load %struct.sof_ipc_ctrl_data_params*, %struct.sof_ipc_ctrl_data_params** %8, align 8
  %61 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @memcpy(%struct.sof_ipc_ctrl_data* %58, %struct.sof_ipc_ctrl_data* %59, i64 %62)
  %64 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %65 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = call i32 @mutex_lock(i32* %67)
  store i32 0, i32* %16, align 4
  br label %69

69:                                               ; preds = %156, %51
  %70 = load i32, i32* %16, align 4
  %71 = load %struct.sof_ipc_ctrl_data_params*, %struct.sof_ipc_ctrl_data_params** %8, align 8
  %72 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %159

75:                                               ; preds = %69
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* %14, align 8
  %78 = call i64 @min(i64 %76, i64 %77)
  store i64 %78, i64* %11, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %10, align 8
  %81 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.sof_ipc_ctrl_data_params*, %struct.sof_ipc_ctrl_data_params** %8, align 8
  %83 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %11, align 8
  %86 = add i64 %84, %85
  %87 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %10, align 8
  %88 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i64 %86, i64* %90, align 8
  %91 = load i32, i32* %16, align 4
  %92 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %10, align 8
  %93 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* %13, align 8
  %96 = sub i64 %95, %94
  store i64 %96, i64* %13, align 8
  %97 = load i64, i64* %13, align 8
  %98 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %10, align 8
  %99 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %98, i32 0, i32 2
  store i64 %97, i64* %99, align 8
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %75
  %103 = load %struct.sof_ipc_ctrl_data_params*, %struct.sof_ipc_ctrl_data_params** %8, align 8
  %104 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %103, i32 0, i32 5
  %105 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %104, align 8
  %106 = load %struct.sof_ipc_ctrl_data_params*, %struct.sof_ipc_ctrl_data_params** %8, align 8
  %107 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %106, i32 0, i32 4
  %108 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %107, align 8
  %109 = load i64, i64* %12, align 8
  %110 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %108, i64 %109
  %111 = load i64, i64* %11, align 8
  %112 = call i32 @memcpy(%struct.sof_ipc_ctrl_data* %105, %struct.sof_ipc_ctrl_data* %110, i64 %111)
  br label %113

113:                                              ; preds = %102, %75
  %114 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %115 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %114, i32 0, i32 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %10, align 8
  %118 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %10, align 8
  %123 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %10, align 8
  %124 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %10, align 8
  %129 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %10, align 8
  %130 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @sof_ipc_tx_message_unlocked(%struct.TYPE_6__* %116, i32 %121, %struct.sof_ipc_ctrl_data* %122, i64 %127, %struct.sof_ipc_ctrl_data* %128, i64 %133)
  store i32 %134, i32* %15, align 4
  %135 = load i32, i32* %15, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %113
  br label %159

138:                                              ; preds = %113
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %152, label %141

141:                                              ; preds = %138
  %142 = load %struct.sof_ipc_ctrl_data_params*, %struct.sof_ipc_ctrl_data_params** %8, align 8
  %143 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %142, i32 0, i32 5
  %144 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %143, align 8
  %145 = load i64, i64* %12, align 8
  %146 = getelementptr inbounds %struct.sof_ipc_ctrl_data, %struct.sof_ipc_ctrl_data* %144, i64 %145
  %147 = load %struct.sof_ipc_ctrl_data_params*, %struct.sof_ipc_ctrl_data_params** %8, align 8
  %148 = getelementptr inbounds %struct.sof_ipc_ctrl_data_params, %struct.sof_ipc_ctrl_data_params* %147, i32 0, i32 4
  %149 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %148, align 8
  %150 = load i64, i64* %11, align 8
  %151 = call i32 @memcpy(%struct.sof_ipc_ctrl_data* %146, %struct.sof_ipc_ctrl_data* %149, i64 %150)
  br label %152

152:                                              ; preds = %141, %138
  %153 = load i64, i64* %14, align 8
  %154 = load i64, i64* %12, align 8
  %155 = add i64 %154, %153
  store i64 %155, i64* %12, align 8
  br label %156

156:                                              ; preds = %152
  %157 = load i32, i32* %16, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %16, align 4
  br label %69

159:                                              ; preds = %137, %69
  %160 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %161 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %160, i32 0, i32 0
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = call i32 @mutex_unlock(i32* %163)
  %165 = load %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data** %10, align 8
  %166 = call i32 @kfree(%struct.sof_ipc_ctrl_data* %165)
  %167 = load i32, i32* %15, align 4
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %159, %47, %22
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local %struct.sof_ipc_ctrl_data* @kzalloc(i32, i32) #1

declare dso_local i32 @sof_get_ctrl_copy_params(i32, %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data_params*) #1

declare dso_local i32 @kfree(%struct.sof_ipc_ctrl_data*) #1

declare dso_local i32 @memcpy(%struct.sof_ipc_ctrl_data*, %struct.sof_ipc_ctrl_data*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @sof_ipc_tx_message_unlocked(%struct.TYPE_6__*, i32, %struct.sof_ipc_ctrl_data*, i64, %struct.sof_ipc_ctrl_data*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
