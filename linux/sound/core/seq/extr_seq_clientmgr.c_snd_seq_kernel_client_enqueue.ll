; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_clientmgr.c_snd_seq_kernel_client_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_clientmgr.c_snd_seq_kernel_client_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_event = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }
%struct.snd_seq_client = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_NONE = common dso_local global i64 0, align 8
@SNDRV_SEQ_EVENT_KERNEL_ERROR = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_kernel_client_enqueue(i32 %0, %struct.snd_seq_event* %1, %struct.file* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_seq_event*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_seq_client*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.snd_seq_event* %1, %struct.snd_seq_event** %7, align 8
  store %struct.file* %2, %struct.file** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %13 = icmp ne %struct.snd_seq_event* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @snd_BUG_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %82

21:                                               ; preds = %4
  %22 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %23 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SNDRV_SEQ_EVENT_NONE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %82

28:                                               ; preds = %21
  %29 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %30 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SNDRV_SEQ_EVENT_KERNEL_ERROR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %82

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %40 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %43 = call i64 @check_event_type_and_length(%struct.snd_seq_event* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %82

48:                                               ; preds = %37
  %49 = load i32, i32* %6, align 4
  %50 = call %struct.snd_seq_client* @snd_seq_client_use_ptr(i32 %49)
  store %struct.snd_seq_client* %50, %struct.snd_seq_client** %10, align 8
  %51 = load %struct.snd_seq_client*, %struct.snd_seq_client** %10, align 8
  %52 = icmp eq %struct.snd_seq_client* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %82

56:                                               ; preds = %48
  %57 = load %struct.snd_seq_client*, %struct.snd_seq_client** %10, align 8
  %58 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @EPERM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %11, align 4
  br label %78

64:                                               ; preds = %56
  %65 = load %struct.snd_seq_client*, %struct.snd_seq_client** %10, align 8
  %66 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %65, i32 0, i32 0
  %67 = call i32 @mutex_lock(i32* %66)
  %68 = load %struct.snd_seq_client*, %struct.snd_seq_client** %10, align 8
  %69 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %70 = load %struct.file*, %struct.file** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.snd_seq_client*, %struct.snd_seq_client** %10, align 8
  %73 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %72, i32 0, i32 0
  %74 = call i32 @snd_seq_client_enqueue_event(%struct.snd_seq_client* %68, %struct.snd_seq_event* %69, %struct.file* %70, i32 %71, i32 0, i32 0, i32* %73)
  store i32 %74, i32* %11, align 4
  %75 = load %struct.snd_seq_client*, %struct.snd_seq_client** %10, align 8
  %76 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  br label %78

78:                                               ; preds = %64, %61
  %79 = load %struct.snd_seq_client*, %struct.snd_seq_client** %10, align 8
  %80 = call i32 @snd_seq_client_unlock(%struct.snd_seq_client* %79)
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %78, %53, %45, %34, %27, %18
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i64 @check_event_type_and_length(%struct.snd_seq_event*) #1

declare dso_local %struct.snd_seq_client* @snd_seq_client_use_ptr(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_seq_client_enqueue_event(%struct.snd_seq_client*, %struct.snd_seq_event*, %struct.file*, i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_seq_client_unlock(%struct.snd_seq_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
