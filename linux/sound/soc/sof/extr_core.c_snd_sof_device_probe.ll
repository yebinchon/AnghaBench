; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_core.c_snd_sof_device_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_core.c_snd_sof_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_sof_pdata = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.snd_sof_dev = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.snd_sof_pdata*, %struct.device* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CONFIG_SND_SOC_SOF_PROBE_WORK_QUEUE = common dso_local global i32 0, align 4
@sof_probe_work = common dso_local global i32 0, align 4
@TIMEOUT_DEFAULT_IPC_MS = common dso_local global i64 0, align 8
@TIMEOUT_DEFAULT_BOOT_MS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sof_device_probe(%struct.device* %0, %struct.snd_sof_pdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.snd_sof_pdata*, align 8
  %6 = alloca %struct.snd_sof_dev*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.snd_sof_pdata* %1, %struct.snd_sof_pdata** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.snd_sof_dev* @devm_kzalloc(%struct.device* %7, i32 72, i32 %8)
  store %struct.snd_sof_dev* %9, %struct.snd_sof_dev** %6, align 8
  %10 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %11 = icmp ne %struct.snd_sof_dev* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %160

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %18 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %17, i32 0, i32 12
  store %struct.device* %16, %struct.device** %18, align 8
  %19 = load %struct.snd_sof_pdata*, %struct.snd_sof_pdata** %5, align 8
  %20 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %21 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %20, i32 0, i32 11
  store %struct.snd_sof_pdata* %19, %struct.snd_sof_pdata** %21, align 8
  %22 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %23 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %26 = call i32 @dev_set_drvdata(%struct.device* %24, %struct.snd_sof_dev* %25)
  %27 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %28 = call %struct.TYPE_4__* @sof_ops(%struct.snd_sof_dev* %27)
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %78

30:                                               ; preds = %15
  %31 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %32 = call %struct.TYPE_4__* @sof_ops(%struct.snd_sof_dev* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %78

36:                                               ; preds = %30
  %37 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %38 = call %struct.TYPE_4__* @sof_ops(%struct.snd_sof_dev* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %78

42:                                               ; preds = %36
  %43 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %44 = call %struct.TYPE_4__* @sof_ops(%struct.snd_sof_dev* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %42
  %49 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %50 = call %struct.TYPE_4__* @sof_ops(%struct.snd_sof_dev* %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %48
  %55 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %56 = call %struct.TYPE_4__* @sof_ops(%struct.snd_sof_dev* %55)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %54
  %61 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %62 = call %struct.TYPE_4__* @sof_ops(%struct.snd_sof_dev* %61)
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %60
  %67 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %68 = call %struct.TYPE_4__* @sof_ops(%struct.snd_sof_dev* %67)
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %74 = call %struct.TYPE_4__* @sof_ops(%struct.snd_sof_dev* %73)
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %72, %66, %60, %54, %48, %42, %36, %30, %15
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %160

81:                                               ; preds = %72
  %82 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %83 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %82, i32 0, i32 10
  %84 = call i32 @INIT_LIST_HEAD(i32* %83)
  %85 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %86 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %85, i32 0, i32 9
  %87 = call i32 @INIT_LIST_HEAD(i32* %86)
  %88 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %89 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %88, i32 0, i32 8
  %90 = call i32 @INIT_LIST_HEAD(i32* %89)
  %91 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %92 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %91, i32 0, i32 7
  %93 = call i32 @INIT_LIST_HEAD(i32* %92)
  %94 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %95 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %94, i32 0, i32 6
  %96 = call i32 @INIT_LIST_HEAD(i32* %95)
  %97 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %98 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %97, i32 0, i32 5
  %99 = call i32 @spin_lock_init(i32* %98)
  %100 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %101 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %100, i32 0, i32 4
  %102 = call i32 @spin_lock_init(i32* %101)
  %103 = load i32, i32* @CONFIG_SND_SOC_SOF_PROBE_WORK_QUEUE, align 4
  %104 = call i64 @IS_ENABLED(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %81
  %107 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %108 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %107, i32 0, i32 3
  %109 = load i32, i32* @sof_probe_work, align 4
  %110 = call i32 @INIT_WORK(i32* %108, i32 %109)
  br label %111

111:                                              ; preds = %106, %81
  %112 = load %struct.snd_sof_pdata*, %struct.snd_sof_pdata** %5, align 8
  %113 = getelementptr inbounds %struct.snd_sof_pdata, %struct.snd_sof_pdata* %112, i32 0, i32 0
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  %119 = load i64, i64* @TIMEOUT_DEFAULT_IPC_MS, align 8
  %120 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %121 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  br label %130

122:                                              ; preds = %111
  %123 = load %struct.snd_sof_pdata*, %struct.snd_sof_pdata** %5, align 8
  %124 = getelementptr inbounds %struct.snd_sof_pdata, %struct.snd_sof_pdata* %123, i32 0, i32 0
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %129 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  br label %130

130:                                              ; preds = %122, %118
  %131 = load %struct.snd_sof_pdata*, %struct.snd_sof_pdata** %5, align 8
  %132 = getelementptr inbounds %struct.snd_sof_pdata, %struct.snd_sof_pdata* %131, i32 0, i32 0
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load i64, i64* @TIMEOUT_DEFAULT_BOOT_MS, align 8
  %139 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %140 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %139, i32 0, i32 2
  store i64 %138, i64* %140, align 8
  br label %149

141:                                              ; preds = %130
  %142 = load %struct.snd_sof_pdata*, %struct.snd_sof_pdata** %5, align 8
  %143 = getelementptr inbounds %struct.snd_sof_pdata, %struct.snd_sof_pdata* %142, i32 0, i32 0
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %148 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %147, i32 0, i32 2
  store i64 %146, i64* %148, align 8
  br label %149

149:                                              ; preds = %141, %137
  %150 = load i32, i32* @CONFIG_SND_SOC_SOF_PROBE_WORK_QUEUE, align 4
  %151 = call i64 @IS_ENABLED(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %155 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %154, i32 0, i32 3
  %156 = call i32 @schedule_work(i32* %155)
  store i32 0, i32* %3, align 4
  br label %160

157:                                              ; preds = %149
  %158 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %6, align 8
  %159 = call i32 @sof_probe_continue(%struct.snd_sof_dev* %158)
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %157, %153, %78, %12
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local %struct.snd_sof_dev* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.snd_sof_dev*) #1

declare dso_local %struct.TYPE_4__* @sof_ops(%struct.snd_sof_dev*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @sof_probe_continue(%struct.snd_sof_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
