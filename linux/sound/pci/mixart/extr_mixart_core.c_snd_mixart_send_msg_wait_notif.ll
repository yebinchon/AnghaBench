; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart_core.c_snd_mixart_send_msg_wait_notif.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart_core.c_snd_mixart_send_msg_wait_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixart_mgr = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mixart_msg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MSG_TYPE_MASK = common dso_local global i32 0, align 4
@MSG_TYPE_NOTIFY = common dso_local global i32 0, align 4
@MSG_CANCEL_NOTIFY_MASK = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@MSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@MSG_TIMEOUT_JIFFIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"error: notification %x not received\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_mixart_send_msg_wait_notif(%struct.mixart_mgr* %0, %struct.mixart_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mixart_mgr*, align 8
  %6 = alloca %struct.mixart_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.mixart_mgr* %0, %struct.mixart_mgr** %5, align 8
  store %struct.mixart_msg* %1, %struct.mixart_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @snd_BUG_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %84

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @MSG_TYPE_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @MSG_TYPE_NOTIFY, align 4
  %25 = icmp ne i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @snd_BUG_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %84

32:                                               ; preds = %20
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @MSG_CANCEL_NOTIFY_MASK, align 4
  %35 = and i32 %33, %34
  %36 = call i64 @snd_BUG_ON(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %84

41:                                               ; preds = %32
  %42 = load i32, i32* @current, align 4
  %43 = call i32 @init_waitqueue_entry(i32* %9, i32 %42)
  %44 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %45 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %44, i32 0, i32 2
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %48 = load %struct.mixart_msg*, %struct.mixart_msg** %6, align 8
  %49 = load i32, i32* @MSG_DEFAULT_SIZE, align 4
  %50 = call i32 @send_msg(%struct.mixart_mgr* %47, %struct.mixart_msg* %48, i32 %49, i32 1, i32* %7)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %41
  %54 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %55 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %54, i32 0, i32 2
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %84

58:                                               ; preds = %41
  %59 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %60 = call i32 @set_current_state(i32 %59)
  %61 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %62 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %61, i32 0, i32 1
  %63 = call i32 @add_wait_queue(i32* %62, i32* %9)
  %64 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %65 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %64, i32 0, i32 2
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* @MSG_TIMEOUT_JIFFIES, align 4
  %68 = call i64 @schedule_timeout(i32 %67)
  store i64 %68, i64* %10, align 8
  %69 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %70 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %69, i32 0, i32 1
  %71 = call i32 @remove_wait_queue(i32* %70, i32* %9)
  %72 = load i64, i64* %10, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %58
  %75 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %76 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %84

83:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %74, %53, %38, %29, %17
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @init_waitqueue_entry(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @send_msg(%struct.mixart_mgr*, %struct.mixart_msg*, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i64 @schedule_timeout(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
