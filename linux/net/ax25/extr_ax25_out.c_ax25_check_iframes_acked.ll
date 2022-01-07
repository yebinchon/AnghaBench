; ModuleID = '/home/carl/AnghaBench/linux/net/ax25/extr_ax25_out.c_ax25_check_iframes_acked.c'
source_filename = "/home/carl/AnghaBench/linux/net/ax25/extr_ax25_out.c_ax25_check_iframes_acked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i16, i16 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ax25_check_iframes_acked(%struct.TYPE_9__* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i16, align 2
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i16 %1, i16* %5, align 2
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i32
  %10 = load i16, i16* %5, align 2
  %11 = zext i16 %10 to i32
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = load i16, i16* %5, align 2
  %16 = call i32 @ax25_frames_acked(%struct.TYPE_9__* %14, i16 zeroext %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = call i32 @ax25_calculate_rtt(%struct.TYPE_9__* %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = call i32 @ax25_stop_t1timer(%struct.TYPE_9__* %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = call i32 @ax25_start_t3timer(%struct.TYPE_9__* %21)
  store i32 1, i32* %3, align 4
  br label %41

23:                                               ; preds = %2
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i16, i16* %25, align 2
  %27 = zext i16 %26 to i32
  %28 = load i16, i16* %5, align 2
  %29 = zext i16 %28 to i32
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = load i16, i16* %5, align 2
  %34 = call i32 @ax25_frames_acked(%struct.TYPE_9__* %32, i16 zeroext %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = call i32 @ax25_calculate_t1(%struct.TYPE_9__* %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = call i32 @ax25_start_t1timer(%struct.TYPE_9__* %37)
  store i32 1, i32* %3, align 4
  br label %41

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %31, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @ax25_frames_acked(%struct.TYPE_9__*, i16 zeroext) #1

declare dso_local i32 @ax25_calculate_rtt(%struct.TYPE_9__*) #1

declare dso_local i32 @ax25_stop_t1timer(%struct.TYPE_9__*) #1

declare dso_local i32 @ax25_start_t3timer(%struct.TYPE_9__*) #1

declare dso_local i32 @ax25_calculate_t1(%struct.TYPE_9__*) #1

declare dso_local i32 @ax25_start_t1timer(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
