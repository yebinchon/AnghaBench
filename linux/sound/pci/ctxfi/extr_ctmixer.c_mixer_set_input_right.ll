; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctmixer.c_mixer_set_input_right.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctmixer.c_mixer_set_input_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_mixer = type { i32* }
%struct.rsc = type { i32 }

@CHN_NUM = common dso_local global i32 0, align 4
@NUM_CT_AMIXERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_mixer*, i32, %struct.rsc*)* @mixer_set_input_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_set_input_right(%struct.ct_mixer* %0, i32 %1, %struct.rsc* %2) #0 {
  %4 = alloca %struct.ct_mixer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsc*, align 8
  %7 = alloca i32, align 4
  store %struct.ct_mixer* %0, %struct.ct_mixer** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rsc* %2, %struct.rsc** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @port_to_amixer(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load %struct.ct_mixer*, %struct.ct_mixer** %4, align 8
  %11 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @CHN_NUM, align 4
  %15 = mul i32 %13, %14
  %16 = add i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %12, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rsc*, %struct.rsc** %6, align 8
  %21 = call i32 @mixer_set_input_port(i32 %19, %struct.rsc* %20)
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @get_recording_amixer(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @NUM_CT_AMIXERS, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %3
  %28 = load %struct.ct_mixer*, %struct.ct_mixer** %4, align 8
  %29 = getelementptr inbounds %struct.ct_mixer, %struct.ct_mixer* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @CHN_NUM, align 4
  %33 = mul i32 %31, %32
  %34 = add i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %30, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rsc*, %struct.rsc** %6, align 8
  %39 = call i32 @mixer_set_input_port(i32 %37, %struct.rsc* %38)
  br label %40

40:                                               ; preds = %27, %3
  ret i32 0
}

declare dso_local i32 @port_to_amixer(i32) #1

declare dso_local i32 @mixer_set_input_port(i32, %struct.rsc*) #1

declare dso_local i32 @get_recording_amixer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
