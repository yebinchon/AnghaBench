; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_snd_bebob_stream_get_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_snd_bebob_stream_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob = type { i32 }

@AVC_GENERAL_PLUG_DIR_OUT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@AVC_GENERAL_PLUG_DIR_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_bebob_stream_get_rate(%struct.snd_bebob* %0, i32* %1) #0 {
  %3 = alloca %struct.snd_bebob*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_bebob* %0, %struct.snd_bebob** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %24, %2
  %10 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %11 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AVC_GENERAL_PLUG_DIR_OUT, align 4
  %14 = call i32 @avc_general_get_sig_fmt(i32 %12, i32* %5, i32 %13, i32 0)
  store i32 %14, i32* %8, align 4
  br label %15

15:                                               ; preds = %9
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @EAGAIN, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %7, align 4
  %23 = icmp ult i32 %22, 3
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi i1 [ false, %15 ], [ %23, %20 ]
  br i1 %25, label %9, label %26

26:                                               ; preds = %24
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %66

30:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %46, %30
  %32 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %33 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AVC_GENERAL_PLUG_DIR_IN, align 4
  %36 = call i32 @avc_general_get_sig_fmt(i32 %34, i32* %6, i32 %35, i32 0)
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @EAGAIN, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %7, align 4
  %45 = icmp ult i32 %44, 3
  br label %46

46:                                               ; preds = %42, %37
  %47 = phi i1 [ false, %37 ], [ %45, %42 ]
  br i1 %47, label %31, label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %66

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = load i32*, i32** %4, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %66

59:                                               ; preds = %52
  %60 = load %struct.snd_bebob*, %struct.snd_bebob** %3, align 8
  %61 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @AVC_GENERAL_PLUG_DIR_IN, align 4
  %65 = call i32 @avc_general_set_sig_fmt(i32 %62, i32 %63, i32 %64, i32 0)
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %59, %58, %51, %29
  %67 = load i32, i32* %8, align 4
  ret i32 %67
}

declare dso_local i32 @avc_general_get_sig_fmt(i32, i32*, i32, i32) #1

declare dso_local i32 @avc_general_set_sig_fmt(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
