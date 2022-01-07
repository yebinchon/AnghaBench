; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_trace.c_trace_debugfs_create.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_trace.c_trace_debugfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_sof_dfsentry = type { %struct.snd_sof_dev*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SOF_DFSENTRY_TYPE_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@sof_dfs_trace_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sof_dev*)* @trace_debugfs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_debugfs_create(%struct.snd_sof_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_sof_dev*, align 8
  %4 = alloca %struct.snd_sof_dfsentry*, align 8
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %3, align 8
  %5 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %6 = icmp ne %struct.snd_sof_dev* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %45

10:                                               ; preds = %1
  %11 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %12 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.snd_sof_dfsentry* @devm_kzalloc(i32 %13, i32 24, i32 %14)
  store %struct.snd_sof_dfsentry* %15, %struct.snd_sof_dfsentry** %4, align 8
  %16 = load %struct.snd_sof_dfsentry*, %struct.snd_sof_dfsentry** %4, align 8
  %17 = icmp ne %struct.snd_sof_dfsentry* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %10
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %45

21:                                               ; preds = %10
  %22 = load i32, i32* @SOF_DFSENTRY_TYPE_BUF, align 4
  %23 = load %struct.snd_sof_dfsentry*, %struct.snd_sof_dfsentry** %4, align 8
  %24 = getelementptr inbounds %struct.snd_sof_dfsentry, %struct.snd_sof_dfsentry* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %26 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.snd_sof_dfsentry*, %struct.snd_sof_dfsentry** %4, align 8
  %30 = getelementptr inbounds %struct.snd_sof_dfsentry, %struct.snd_sof_dfsentry* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %32 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.snd_sof_dfsentry*, %struct.snd_sof_dfsentry** %4, align 8
  %36 = getelementptr inbounds %struct.snd_sof_dfsentry, %struct.snd_sof_dfsentry* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %38 = load %struct.snd_sof_dfsentry*, %struct.snd_sof_dfsentry** %4, align 8
  %39 = getelementptr inbounds %struct.snd_sof_dfsentry, %struct.snd_sof_dfsentry* %38, i32 0, i32 0
  store %struct.snd_sof_dev* %37, %struct.snd_sof_dev** %39, align 8
  %40 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %41 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.snd_sof_dfsentry*, %struct.snd_sof_dfsentry** %4, align 8
  %44 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 292, i32 %42, %struct.snd_sof_dfsentry* %43, i32* @sof_dfs_trace_fops)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %21, %18, %7
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.snd_sof_dfsentry* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.snd_sof_dfsentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
