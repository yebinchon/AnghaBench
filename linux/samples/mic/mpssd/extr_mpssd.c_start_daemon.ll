; ModuleID = '/home/carl/AnghaBench/linux/samples/mic/mpssd/extr_mpssd.c_start_daemon.c'
source_filename = "/home/carl/AnghaBench/linux/samples/mic/mpssd/extr_mpssd.c_start_daemon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mic_info* }
%struct.mic_info = type { i32, i32, %struct.mic_info* }

@mic_list = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@init_mic = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s init_mic pthread_create failed %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @start_daemon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_daemon() #0 {
  %1 = alloca %struct.mic_info*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.mic_info*, %struct.mic_info** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mic_list, i32 0, i32 0), align 8
  store %struct.mic_info* %3, %struct.mic_info** %1, align 8
  br label %4

4:                                                ; preds = %25, %0
  %5 = load %struct.mic_info*, %struct.mic_info** %1, align 8
  %6 = icmp ne %struct.mic_info* %5, null
  br i1 %6, label %7, label %29

7:                                                ; preds = %4
  %8 = load %struct.mic_info*, %struct.mic_info** %1, align 8
  %9 = call i32 @set_mic_boot_params(%struct.mic_info* %8)
  %10 = load %struct.mic_info*, %struct.mic_info** %1, align 8
  %11 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %10, i32 0, i32 1
  %12 = load i32, i32* @init_mic, align 4
  %13 = load %struct.mic_info*, %struct.mic_info** %1, align 8
  %14 = call i32 @pthread_create(i32* %11, i32* null, i32 %12, %struct.mic_info* %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %7
  %18 = load %struct.mic_info*, %struct.mic_info** %1, align 8
  %19 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @strerror(i32 %21)
  %23 = call i32 @mpsslog(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %22)
  br label %24

24:                                               ; preds = %17, %7
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.mic_info*, %struct.mic_info** %1, align 8
  %27 = getelementptr inbounds %struct.mic_info, %struct.mic_info* %26, i32 0, i32 2
  %28 = load %struct.mic_info*, %struct.mic_info** %27, align 8
  store %struct.mic_info* %28, %struct.mic_info** %1, align 8
  br label %4

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %29, %30
  %31 = call i32 @sleep(i32 60)
  br label %30
}

declare dso_local i32 @set_mic_boot_params(%struct.mic_info*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.mic_info*) #1

declare dso_local i32 @mpsslog(i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
