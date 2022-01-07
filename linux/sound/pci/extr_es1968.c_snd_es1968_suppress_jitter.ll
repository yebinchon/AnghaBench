; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_suppress_jitter.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_suppress_jitter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1968 = type { i32 }
%struct.esschan = type { i32 }

@IDR0_DATA_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es1968*, %struct.esschan*)* @snd_es1968_suppress_jitter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_es1968_suppress_jitter(%struct.es1968* %0, %struct.esschan* %1) #0 {
  %3 = alloca %struct.es1968*, align 8
  %4 = alloca %struct.esschan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.es1968* %0, %struct.es1968** %3, align 8
  store %struct.esschan* %1, %struct.esschan** %4, align 8
  %8 = load %struct.es1968*, %struct.es1968** %3, align 8
  %9 = call i32 @__apu_get_register(%struct.es1968* %8, i32 0, i32 5)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.es1968*, %struct.es1968** %3, align 8
  %11 = call i32 @__apu_get_register(%struct.es1968* %10, i32 1, i32 5)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ugt i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sub i32 %16, %17
  br label %23

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sub i32 %20, %21
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i32 [ %18, %15 ], [ %22, %19 ]
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ugt i32 %25, 1
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.es1968*, %struct.es1968** %3, align 8
  %29 = load i32, i32* @IDR0_DATA_PORT, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @__maestro_write(%struct.es1968* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %23
  ret void
}

declare dso_local i32 @__apu_get_register(%struct.es1968*, i32, i32) #1

declare dso_local i32 @__maestro_write(%struct.es1968*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
