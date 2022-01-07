; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usbusx2y.c_usX2Y_unlinkSeq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/usx2y/extr_usbusx2y.c_usX2Y_unlinkSeq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usX2Y_AsyncSeq = type { i32, i32** }

@URBS_AsyncSeq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_usX2Y_AsyncSeq*)* @usX2Y_unlinkSeq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usX2Y_unlinkSeq(%struct.snd_usX2Y_AsyncSeq* %0) #0 {
  %2 = alloca %struct.snd_usX2Y_AsyncSeq*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_usX2Y_AsyncSeq* %0, %struct.snd_usX2Y_AsyncSeq** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %31, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @URBS_AsyncSeq, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %34

8:                                                ; preds = %4
  %9 = load %struct.snd_usX2Y_AsyncSeq*, %struct.snd_usX2Y_AsyncSeq** %2, align 8
  %10 = getelementptr inbounds %struct.snd_usX2Y_AsyncSeq, %struct.snd_usX2Y_AsyncSeq* %9, i32 0, i32 1
  %11 = load i32**, i32*** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32*, i32** %11, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @usb_kill_urb(i32* %15)
  %17 = load %struct.snd_usX2Y_AsyncSeq*, %struct.snd_usX2Y_AsyncSeq** %2, align 8
  %18 = getelementptr inbounds %struct.snd_usX2Y_AsyncSeq, %struct.snd_usX2Y_AsyncSeq* %17, i32 0, i32 1
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @usb_free_urb(i32* %23)
  %25 = load %struct.snd_usX2Y_AsyncSeq*, %struct.snd_usX2Y_AsyncSeq** %2, align 8
  %26 = getelementptr inbounds %struct.snd_usX2Y_AsyncSeq, %struct.snd_usX2Y_AsyncSeq* %25, i32 0, i32 1
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %8
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %4

34:                                               ; preds = %4
  %35 = load %struct.snd_usX2Y_AsyncSeq*, %struct.snd_usX2Y_AsyncSeq** %2, align 8
  %36 = getelementptr inbounds %struct.snd_usX2Y_AsyncSeq, %struct.snd_usX2Y_AsyncSeq* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @kfree(i32 %37)
  ret void
}

declare dso_local i32 @usb_kill_urb(i32*) #1

declare dso_local i32 @usb_free_urb(i32*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
