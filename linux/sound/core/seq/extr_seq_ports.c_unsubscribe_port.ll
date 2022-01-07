; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_ports.c_unsubscribe_port.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_ports.c_unsubscribe_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_client = type { i64 }
%struct.snd_seq_client_port = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_seq_port_subs_info = type { i64, i32 (i32, %struct.snd_seq_port_subscribe*)* }
%struct.snd_seq_port_subscribe = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@USER_CLIENT = common dso_local global i64 0, align 8
@SNDRV_SEQ_EVENT_PORT_UNSUBSCRIBED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_client*, %struct.snd_seq_client_port*, %struct.snd_seq_port_subs_info*, %struct.snd_seq_port_subscribe*, i32)* @unsubscribe_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unsubscribe_port(%struct.snd_seq_client* %0, %struct.snd_seq_client_port* %1, %struct.snd_seq_port_subs_info* %2, %struct.snd_seq_port_subscribe* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_seq_client*, align 8
  %8 = alloca %struct.snd_seq_client_port*, align 8
  %9 = alloca %struct.snd_seq_port_subs_info*, align 8
  %10 = alloca %struct.snd_seq_port_subscribe*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_seq_client* %0, %struct.snd_seq_client** %7, align 8
  store %struct.snd_seq_client_port* %1, %struct.snd_seq_client_port** %8, align 8
  store %struct.snd_seq_port_subs_info* %2, %struct.snd_seq_port_subs_info** %9, align 8
  store %struct.snd_seq_port_subscribe* %3, %struct.snd_seq_port_subscribe** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.snd_seq_port_subs_info*, %struct.snd_seq_port_subs_info** %9, align 8
  %14 = getelementptr inbounds %struct.snd_seq_port_subs_info, %struct.snd_seq_port_subs_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %70

20:                                               ; preds = %5
  %21 = load %struct.snd_seq_port_subs_info*, %struct.snd_seq_port_subs_info** %9, align 8
  %22 = getelementptr inbounds %struct.snd_seq_port_subs_info, %struct.snd_seq_port_subs_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.snd_seq_port_subs_info*, %struct.snd_seq_port_subs_info** %9, align 8
  %26 = getelementptr inbounds %struct.snd_seq_port_subs_info, %struct.snd_seq_port_subs_info* %25, i32 0, i32 1
  %27 = load i32 (i32, %struct.snd_seq_port_subscribe*)*, i32 (i32, %struct.snd_seq_port_subscribe*)** %26, align 8
  %28 = icmp ne i32 (i32, %struct.snd_seq_port_subscribe*)* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %20
  %30 = load %struct.snd_seq_port_subs_info*, %struct.snd_seq_port_subs_info** %9, align 8
  %31 = getelementptr inbounds %struct.snd_seq_port_subs_info, %struct.snd_seq_port_subs_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load %struct.snd_seq_port_subs_info*, %struct.snd_seq_port_subs_info** %9, align 8
  %36 = getelementptr inbounds %struct.snd_seq_port_subs_info, %struct.snd_seq_port_subs_info* %35, i32 0, i32 1
  %37 = load i32 (i32, %struct.snd_seq_port_subscribe*)*, i32 (i32, %struct.snd_seq_port_subscribe*)** %36, align 8
  %38 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %8, align 8
  %39 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.snd_seq_port_subscribe*, %struct.snd_seq_port_subscribe** %10, align 8
  %42 = call i32 %37(i32 %40, %struct.snd_seq_port_subscribe* %41)
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %34, %29, %20
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %43
  %47 = load %struct.snd_seq_client*, %struct.snd_seq_client** %7, align 8
  %48 = getelementptr inbounds %struct.snd_seq_client, %struct.snd_seq_client* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @USER_CLIENT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %8, align 8
  %54 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %8, align 8
  %58 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.snd_seq_port_subscribe*, %struct.snd_seq_port_subscribe** %10, align 8
  %62 = load i32, i32* @SNDRV_SEQ_EVENT_PORT_UNSUBSCRIBED, align 4
  %63 = call i32 @snd_seq_client_notify_subscription(i32 %56, i32 %60, %struct.snd_seq_port_subscribe* %61, i32 %62)
  br label %64

64:                                               ; preds = %52, %46, %43
  %65 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %8, align 8
  %66 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @module_put(i32 %67)
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %64, %17
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @snd_seq_client_notify_subscription(i32, i32, %struct.snd_seq_port_subscribe*, i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
