; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_ipc.c_sof_ipc_tx_message_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_ipc.c_sof_ipc_tx_message_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_ipc = type { %struct.snd_sof_ipc_msg, i64, %struct.snd_sof_dev* }
%struct.snd_sof_ipc_msg = type { i64, i64, i32, i32, i32, i64 }
%struct.snd_sof_dev = type { i32, i32, %struct.snd_sof_ipc_msg* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"error: ipc tx failed with error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ipc tx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sof_ipc*, i32, i8*, i64, i8*, i64)* @sof_ipc_tx_message_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sof_ipc_tx_message_unlocked(%struct.snd_sof_ipc* %0, i32 %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_sof_ipc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.snd_sof_dev*, align 8
  %15 = alloca %struct.snd_sof_ipc_msg*, align 8
  %16 = alloca i32, align 4
  store %struct.snd_sof_ipc* %0, %struct.snd_sof_ipc** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load %struct.snd_sof_ipc*, %struct.snd_sof_ipc** %8, align 8
  %18 = getelementptr inbounds %struct.snd_sof_ipc, %struct.snd_sof_ipc* %17, i32 0, i32 2
  %19 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %18, align 8
  store %struct.snd_sof_dev* %19, %struct.snd_sof_dev** %14, align 8
  %20 = load %struct.snd_sof_ipc*, %struct.snd_sof_ipc** %8, align 8
  %21 = getelementptr inbounds %struct.snd_sof_ipc, %struct.snd_sof_ipc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %95

27:                                               ; preds = %6
  %28 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %14, align 8
  %29 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %28, i32 0, i32 1
  %30 = call i32 @spin_lock_irq(i32* %29)
  %31 = load %struct.snd_sof_ipc*, %struct.snd_sof_ipc** %8, align 8
  %32 = getelementptr inbounds %struct.snd_sof_ipc, %struct.snd_sof_ipc* %31, i32 0, i32 0
  store %struct.snd_sof_ipc_msg* %32, %struct.snd_sof_ipc_msg** %15, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %15, align 8
  %35 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i64, i64* %11, align 8
  %37 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %15, align 8
  %38 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %13, align 8
  %40 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %15, align 8
  %41 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %15, align 8
  %43 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %42, i32 0, i32 5
  store i64 0, i64* %43, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %27
  %47 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %15, align 8
  %48 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @memcpy(i32 %49, i8* %50, i64 %51)
  br label %53

53:                                               ; preds = %46, %27
  %54 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %15, align 8
  %55 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %14, align 8
  %56 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %55, i32 0, i32 2
  store %struct.snd_sof_ipc_msg* %54, %struct.snd_sof_ipc_msg** %56, align 8
  %57 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %14, align 8
  %58 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %15, align 8
  %59 = call i32 @snd_sof_dsp_send_msg(%struct.snd_sof_dev* %57, %struct.snd_sof_ipc_msg* %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %53
  %63 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %15, align 8
  %64 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %63, i32 0, i32 2
  store i32 0, i32* %64, align 8
  br label %65

65:                                               ; preds = %62, %53
  %66 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %14, align 8
  %67 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %66, i32 0, i32 1
  %68 = call i32 @spin_unlock_irq(i32* %67)
  %69 = load i32, i32* %16, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %14, align 8
  %73 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @dev_err_ratelimited(i32 %74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %16, align 4
  store i32 %77, i32* %7, align 4
  br label %95

78:                                               ; preds = %65
  %79 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %14, align 8
  %80 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %15, align 8
  %83 = getelementptr inbounds %struct.snd_sof_ipc_msg, %struct.snd_sof_ipc_msg* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ipc_log_header(i32 %81, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %16, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %78
  %89 = load %struct.snd_sof_ipc*, %struct.snd_sof_ipc** %8, align 8
  %90 = load %struct.snd_sof_ipc_msg*, %struct.snd_sof_ipc_msg** %15, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = call i32 @tx_wait_done(%struct.snd_sof_ipc* %89, %struct.snd_sof_ipc_msg* %90, i8* %91)
  store i32 %92, i32* %16, align 4
  br label %93

93:                                               ; preds = %88, %78
  %94 = load i32, i32* %16, align 4
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %93, %71, %24
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @snd_sof_dsp_send_msg(%struct.snd_sof_dev*, %struct.snd_sof_ipc_msg*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, i32) #1

declare dso_local i32 @ipc_log_header(i32, i8*, i32) #1

declare dso_local i32 @tx_wait_done(%struct.snd_sof_ipc*, %struct.snd_sof_ipc_msg*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
