; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_transaction.c_snd_efw_transaction_run.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_transaction.c_snd_efw_transaction_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }
%struct.transaction_queue = type { i32, i64, i32, %struct.fw_unit*, i32, i64, i8* }
%struct.snd_efw_transaction = type { i32 }

@STATE_PENDING = common dso_local global i64 0, align 8
@transaction_queues_lock = common dso_local global i32 0, align 4
@transaction_queues = common dso_local global i32 0, align 4
@EFC_TIMEOUT_MS = common dso_local global i32 0, align 4
@STATE_COMPLETE = common dso_local global i64 0, align 8
@STATE_BUS_RESET = common dso_local global i64 0, align 8
@ERROR_DELAY_MS = common dso_local global i32 0, align 4
@ERROR_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"EFW transaction timed out\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_efw_transaction_run(%struct.fw_unit* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.fw_unit*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.transaction_queue, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fw_unit* %0, %struct.fw_unit** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.fw_unit*, %struct.fw_unit** %6, align 8
  %15 = getelementptr inbounds %struct.transaction_queue, %struct.transaction_queue* %11, i32 0, i32 3
  store %struct.fw_unit* %14, %struct.fw_unit** %15, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = getelementptr inbounds %struct.transaction_queue, %struct.transaction_queue* %11, i32 0, i32 6
  store i8* %16, i8** %17, align 8
  %18 = load i32, i32* %10, align 4
  %19 = getelementptr inbounds %struct.transaction_queue, %struct.transaction_queue* %11, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.snd_efw_transaction*
  %22 = getelementptr inbounds %struct.snd_efw_transaction, %struct.snd_efw_transaction* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @be32_to_cpu(i32 %23)
  %25 = add nsw i64 %24, 1
  %26 = getelementptr inbounds %struct.transaction_queue, %struct.transaction_queue* %11, i32 0, i32 5
  store i64 %25, i64* %26, align 8
  %27 = load i64, i64* @STATE_PENDING, align 8
  %28 = getelementptr inbounds %struct.transaction_queue, %struct.transaction_queue* %11, i32 0, i32 1
  store i64 %27, i64* %28, align 8
  %29 = getelementptr inbounds %struct.transaction_queue, %struct.transaction_queue* %11, i32 0, i32 4
  %30 = call i32 @init_waitqueue_head(i32* %29)
  %31 = call i32 @spin_lock_irq(i32* @transaction_queues_lock)
  %32 = getelementptr inbounds %struct.transaction_queue, %struct.transaction_queue* %11, i32 0, i32 2
  %33 = call i32 @list_add_tail(i32* %32, i32* @transaction_queues)
  %34 = call i32 @spin_unlock_irq(i32* @transaction_queues_lock)
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %85, %5
  %36 = getelementptr inbounds %struct.transaction_queue, %struct.transaction_queue* %11, i32 0, i32 3
  %37 = load %struct.fw_unit*, %struct.fw_unit** %36, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @snd_efw_transaction_cmd(%struct.fw_unit* %37, i8* %38, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %86

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.transaction_queue, %struct.transaction_queue* %11, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.transaction_queue, %struct.transaction_queue* %11, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @STATE_PENDING, align 8
  %50 = icmp ne i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* @EFC_TIMEOUT_MS, align 4
  %53 = call i32 @msecs_to_jiffies(i32 %52)
  %54 = call i32 @wait_event_timeout(i32 %46, i32 %51, i32 %53)
  %55 = getelementptr inbounds %struct.transaction_queue, %struct.transaction_queue* %11, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @STATE_COMPLETE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %44
  %60 = getelementptr inbounds %struct.transaction_queue, %struct.transaction_queue* %11, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %13, align 4
  br label %86

62:                                               ; preds = %44
  %63 = getelementptr inbounds %struct.transaction_queue, %struct.transaction_queue* %11, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @STATE_BUS_RESET, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @ERROR_DELAY_MS, align 4
  %69 = call i32 @msleep(i32 %68)
  br label %83

70:                                               ; preds = %62
  %71 = load i32, i32* %12, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* @ERROR_RETRIES, align 4
  %74 = icmp uge i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.transaction_queue, %struct.transaction_queue* %11, i32 0, i32 3
  %77 = load %struct.fw_unit*, %struct.fw_unit** %76, align 8
  %78 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %77, i32 0, i32 0
  %79 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %13, align 4
  br label %86

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %67
  br label %84

84:                                               ; preds = %83
  br label %85

85:                                               ; preds = %84
  br i1 true, label %35, label %86

86:                                               ; preds = %85, %75, %59, %43
  %87 = call i32 @spin_lock_irq(i32* @transaction_queues_lock)
  %88 = getelementptr inbounds %struct.transaction_queue, %struct.transaction_queue* %11, i32 0, i32 2
  %89 = call i32 @list_del(i32* %88)
  %90 = call i32 @spin_unlock_irq(i32* @transaction_queues_lock)
  %91 = load i32, i32* %13, align 4
  ret i32 %91
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_efw_transaction_cmd(%struct.fw_unit*, i8*, i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
