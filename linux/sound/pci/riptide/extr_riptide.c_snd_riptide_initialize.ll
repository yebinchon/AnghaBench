; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_snd_riptide_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_snd_riptide_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_riptide = type { i32, i64, %struct.cmdif*, i64 }
%struct.cmdif = type { %struct.riptideport*, i64, i32 }
%struct.riptideport = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Modem enable?\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Enabling MPU IRQs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_riptide*)* @snd_riptide_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_riptide_initialize(%struct.snd_riptide* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_riptide*, align 8
  %4 = alloca %struct.cmdif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_riptide* %0, %struct.snd_riptide** %3, align 8
  %7 = load %struct.snd_riptide*, %struct.snd_riptide** %3, align 8
  %8 = icmp ne %struct.snd_riptide* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @snd_BUG_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %73

16:                                               ; preds = %1
  %17 = load %struct.snd_riptide*, %struct.snd_riptide** %3, align 8
  %18 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %17, i32 0, i32 2
  %19 = load %struct.cmdif*, %struct.cmdif** %18, align 8
  store %struct.cmdif* %19, %struct.cmdif** %4, align 8
  %20 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %21 = icmp ne %struct.cmdif* %20, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.cmdif* @kzalloc(i32 24, i32 %23)
  store %struct.cmdif* %24, %struct.cmdif** %4, align 8
  %25 = icmp eq %struct.cmdif* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %73

29:                                               ; preds = %22
  %30 = load %struct.snd_riptide*, %struct.snd_riptide** %3, align 8
  %31 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.riptideport*
  %34 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %35 = getelementptr inbounds %struct.cmdif, %struct.cmdif* %34, i32 0, i32 0
  store %struct.riptideport* %33, %struct.riptideport** %35, align 8
  %36 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %37 = getelementptr inbounds %struct.cmdif, %struct.cmdif* %36, i32 0, i32 2
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %40 = load %struct.snd_riptide*, %struct.snd_riptide** %3, align 8
  %41 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %40, i32 0, i32 2
  store %struct.cmdif* %39, %struct.cmdif** %41, align 8
  br label %42

42:                                               ; preds = %29, %16
  %43 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %44 = getelementptr inbounds %struct.cmdif, %struct.cmdif* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %46 = load %struct.snd_riptide*, %struct.snd_riptide** %3, align 8
  %47 = call i32 @riptide_reset(%struct.cmdif* %45, %struct.snd_riptide* %46)
  store i32 %47, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %73

51:                                               ; preds = %42
  %52 = load %struct.snd_riptide*, %struct.snd_riptide** %3, align 8
  %53 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  switch i32 %55, label %60 [
    i32 17168, label %56
    i32 17184, label %56
    i32 17200, label %56
  ]

56:                                               ; preds = %51, %51, %51
  %57 = call i32 @snd_printdd(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %59 = call i32 @SEND_SETDPLL(%struct.cmdif* %58)
  br label %60

60:                                               ; preds = %51, %56
  %61 = call i32 @snd_printdd(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.snd_riptide*, %struct.snd_riptide** %3, align 8
  %63 = getelementptr inbounds %struct.snd_riptide, %struct.snd_riptide* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.cmdif*, %struct.cmdif** %4, align 8
  %68 = getelementptr inbounds %struct.cmdif, %struct.cmdif* %67, i32 0, i32 0
  %69 = load %struct.riptideport*, %struct.riptideport** %68, align 8
  %70 = call i32 @SET_EMPUIRQ(%struct.riptideport* %69)
  br label %71

71:                                               ; preds = %66, %60
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %49, %26, %13
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local %struct.cmdif* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @riptide_reset(%struct.cmdif*, %struct.snd_riptide*) #1

declare dso_local i32 @snd_printdd(i8*) #1

declare dso_local i32 @SEND_SETDPLL(%struct.cmdif*) #1

declare dso_local i32 @SET_EMPUIRQ(%struct.riptideport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
