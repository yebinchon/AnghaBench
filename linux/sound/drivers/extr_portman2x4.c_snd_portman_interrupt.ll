; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_portman2x4.c_snd_portman_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_portman2x4.c_snd_portman_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.portman = type { i32*, i32, i32* }
%struct.snd_card = type { %struct.portman* }

@INT_REQ = common dso_local global i32 0, align 4
@PORTMAN2X4_MODE_INPUT_TRIGGERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @snd_portman_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_portman_interrupt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca %struct.portman*, align 8
  store i8* %0, i8** %2, align 8
  store i8 0, i8* %3, align 1
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.snd_card*
  %7 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %6, i32 0, i32 0
  %8 = load %struct.portman*, %struct.portman** %7, align 8
  store %struct.portman* %8, %struct.portman** %4, align 8
  %9 = load %struct.portman*, %struct.portman** %4, align 8
  %10 = getelementptr inbounds %struct.portman, %struct.portman* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  br label %12

12:                                               ; preds = %65, %1
  %13 = load %struct.portman*, %struct.portman** %4, align 8
  %14 = call i32 @portman_read_status(%struct.portman* %13)
  %15 = load i32, i32* @INT_REQ, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @INT_REQ, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %66

19:                                               ; preds = %12
  %20 = load %struct.portman*, %struct.portman** %4, align 8
  %21 = call i64 @portman_data_avail(%struct.portman* %20, i32 0)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = load %struct.portman*, %struct.portman** %4, align 8
  %25 = call zeroext i8 @portman_read_midi(%struct.portman* %24, i32 0)
  store i8 %25, i8* %3, align 1
  %26 = load %struct.portman*, %struct.portman** %4, align 8
  %27 = getelementptr inbounds %struct.portman, %struct.portman* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PORTMAN2X4_MODE_INPUT_TRIGGERED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %23
  %35 = load %struct.portman*, %struct.portman** %4, align 8
  %36 = getelementptr inbounds %struct.portman, %struct.portman* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @snd_rawmidi_receive(i32 %39, i8* %3, i32 1)
  br label %41

41:                                               ; preds = %34, %23
  br label %42

42:                                               ; preds = %41, %19
  %43 = load %struct.portman*, %struct.portman** %4, align 8
  %44 = call i64 @portman_data_avail(%struct.portman* %43, i32 1)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %42
  %47 = load %struct.portman*, %struct.portman** %4, align 8
  %48 = call zeroext i8 @portman_read_midi(%struct.portman* %47, i32 1)
  store i8 %48, i8* %3, align 1
  %49 = load %struct.portman*, %struct.portman** %4, align 8
  %50 = getelementptr inbounds %struct.portman, %struct.portman* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PORTMAN2X4_MODE_INPUT_TRIGGERED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %46
  %58 = load %struct.portman*, %struct.portman** %4, align 8
  %59 = getelementptr inbounds %struct.portman, %struct.portman* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @snd_rawmidi_receive(i32 %62, i8* %3, i32 1)
  br label %64

64:                                               ; preds = %57, %46
  br label %65

65:                                               ; preds = %64, %42
  br label %12

66:                                               ; preds = %12
  %67 = load %struct.portman*, %struct.portman** %4, align 8
  %68 = getelementptr inbounds %struct.portman, %struct.portman* %67, i32 0, i32 1
  %69 = call i32 @spin_unlock(i32* %68)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @portman_read_status(%struct.portman*) #1

declare dso_local i64 @portman_data_avail(%struct.portman*, i32) #1

declare dso_local zeroext i8 @portman_read_midi(%struct.portman*, i32) #1

declare dso_local i32 @snd_rawmidi_receive(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
