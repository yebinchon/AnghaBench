; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_card_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_card_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ali = type { %struct.snd_ali_channel_control, i32 }
%struct.snd_ali_channel_control = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8* }

@IRQ_NONE = common dso_local global i32 0, align 4
@ALI_MISCINT = common dso_local global i32 0, align 4
@ADDRESS_IRQ = common dso_local global i32 0, align 4
@ALI_CHANNELS = common dso_local global i32 0, align 4
@TARGET_REACHED = common dso_local global i32 0, align 4
@MIXER_OVERFLOW = common dso_local global i32 0, align 4
@MIXER_UNDERFLOW = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_ali_card_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ali_card_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_ali*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_ali_channel_control*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.snd_ali*
  store %struct.snd_ali* %11, %struct.snd_ali** %6, align 8
  %12 = load %struct.snd_ali*, %struct.snd_ali** %6, align 8
  %13 = icmp eq %struct.snd_ali* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.snd_ali*, %struct.snd_ali** %6, align 8
  %16 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14, %2
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %72

21:                                               ; preds = %14
  %22 = load %struct.snd_ali*, %struct.snd_ali** %6, align 8
  %23 = load i32, i32* @ALI_MISCINT, align 4
  %24 = call i32 @ALI_REG(%struct.snd_ali* %22, i32 %23)
  %25 = call i8* @inl(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @IRQ_NONE, align 4
  store i32 %30, i32* %3, align 4
  br label %72

31:                                               ; preds = %21
  %32 = load %struct.snd_ali*, %struct.snd_ali** %6, align 8
  %33 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %32, i32 0, i32 0
  store %struct.snd_ali_channel_control* %33, %struct.snd_ali_channel_control** %9, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @ADDRESS_IRQ, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %31
  %39 = load %struct.snd_ali*, %struct.snd_ali** %6, align 8
  %40 = load %struct.snd_ali_channel_control*, %struct.snd_ali_channel_control** %9, align 8
  %41 = getelementptr inbounds %struct.snd_ali_channel_control, %struct.snd_ali_channel_control* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ALI_REG(%struct.snd_ali* %39, i32 %43)
  %45 = call i8* @inl(i32 %44)
  %46 = load %struct.snd_ali_channel_control*, %struct.snd_ali_channel_control** %9, align 8
  %47 = getelementptr inbounds %struct.snd_ali_channel_control, %struct.snd_ali_channel_control* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i8* %45, i8** %48, align 8
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %57, %38
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @ALI_CHANNELS, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load %struct.snd_ali*, %struct.snd_ali** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @snd_ali_update_ptr(%struct.snd_ali* %54, i32 %55)
  br label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %49

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %31
  %62 = load i32, i32* @TARGET_REACHED, align 4
  %63 = load i32, i32* @MIXER_OVERFLOW, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @MIXER_UNDERFLOW, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.snd_ali*, %struct.snd_ali** %6, align 8
  %68 = load i32, i32* @ALI_MISCINT, align 4
  %69 = call i32 @ALI_REG(%struct.snd_ali* %67, i32 %68)
  %70 = call i32 @outl(i32 %66, i32 %69)
  %71 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %61, %29, %19
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i8* @inl(i32) #1

declare dso_local i32 @ALI_REG(%struct.snd_ali*, i32) #1

declare dso_local i32 @snd_ali_update_ptr(%struct.snd_ali*, i32) #1

declare dso_local i32 @outl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
