; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_p16v.c_snd_p16v_capture_channel_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_p16v.c_snd_p16v_capture_channel_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_emu10k1 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CAPTURE_P16V_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_p16v_capture_channel_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_p16v_capture_channel_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.snd_emu10k1*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.snd_emu10k1* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.snd_emu10k1* %11, %struct.snd_emu10k1** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %13 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ugt i32 %19, 3
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %49

24:                                               ; preds = %2
  %25 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %26 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %36 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %38 = load i32, i32* @CAPTURE_P16V_SOURCE, align 4
  %39 = call i32 @snd_emu10k1_ptr20_read(%struct.snd_emu10k1* %37, i32 %38, i32 0)
  %40 = and i32 %39, 65532
  store i32 %40, i32* %9, align 4
  %41 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %42 = load i32, i32* @CAPTURE_P16V_SOURCE, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1* %41, i32 %42, i32 0, i32 %45)
  br label %47

47:                                               ; preds = %33, %24
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %21
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.snd_emu10k1* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_emu10k1_ptr20_read(%struct.snd_emu10k1*, i32, i32) #1

declare dso_local i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
