; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctamixer.c_amixer_set_input.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctamixer.c_amixer_set_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amixer = type { %struct.TYPE_4__, %struct.rsc* }
%struct.TYPE_4__ = type { i32, %struct.hw* }
%struct.hw = type { i32 (i32, i32)*, i32 (i32, i32)* }
%struct.rsc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.rsc*)* }

@AMIXER_Y_IMMEDIATE = common dso_local global i32 0, align 4
@BLANK_SLOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amixer*, %struct.rsc*)* @amixer_set_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amixer_set_input(%struct.amixer* %0, %struct.rsc* %1) #0 {
  %3 = alloca %struct.amixer*, align 8
  %4 = alloca %struct.rsc*, align 8
  %5 = alloca %struct.hw*, align 8
  store %struct.amixer* %0, %struct.amixer** %3, align 8
  store %struct.rsc* %1, %struct.rsc** %4, align 8
  %6 = load %struct.amixer*, %struct.amixer** %3, align 8
  %7 = getelementptr inbounds %struct.amixer, %struct.amixer* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.hw*, %struct.hw** %8, align 8
  store %struct.hw* %9, %struct.hw** %5, align 8
  %10 = load %struct.hw*, %struct.hw** %5, align 8
  %11 = getelementptr inbounds %struct.hw, %struct.hw* %10, i32 0, i32 1
  %12 = load i32 (i32, i32)*, i32 (i32, i32)** %11, align 8
  %13 = load %struct.amixer*, %struct.amixer** %3, align 8
  %14 = getelementptr inbounds %struct.amixer, %struct.amixer* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @AMIXER_Y_IMMEDIATE, align 4
  %18 = call i32 %12(i32 %16, i32 %17)
  %19 = load %struct.rsc*, %struct.rsc** %4, align 8
  %20 = load %struct.amixer*, %struct.amixer** %3, align 8
  %21 = getelementptr inbounds %struct.amixer, %struct.amixer* %20, i32 0, i32 1
  store %struct.rsc* %19, %struct.rsc** %21, align 8
  %22 = load %struct.rsc*, %struct.rsc** %4, align 8
  %23 = icmp ne %struct.rsc* %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %2
  %25 = load %struct.hw*, %struct.hw** %5, align 8
  %26 = getelementptr inbounds %struct.hw, %struct.hw* %25, i32 0, i32 0
  %27 = load i32 (i32, i32)*, i32 (i32, i32)** %26, align 8
  %28 = load %struct.amixer*, %struct.amixer** %3, align 8
  %29 = getelementptr inbounds %struct.amixer, %struct.amixer* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @BLANK_SLOT, align 4
  %33 = call i32 %27(i32 %31, i32 %32)
  br label %50

34:                                               ; preds = %2
  %35 = load %struct.hw*, %struct.hw** %5, align 8
  %36 = getelementptr inbounds %struct.hw, %struct.hw* %35, i32 0, i32 0
  %37 = load i32 (i32, i32)*, i32 (i32, i32)** %36, align 8
  %38 = load %struct.amixer*, %struct.amixer** %3, align 8
  %39 = getelementptr inbounds %struct.amixer, %struct.amixer* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.rsc*, %struct.rsc** %4, align 8
  %43 = getelementptr inbounds %struct.rsc, %struct.rsc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32 (%struct.rsc*)*, i32 (%struct.rsc*)** %45, align 8
  %47 = load %struct.rsc*, %struct.rsc** %4, align 8
  %48 = call i32 %46(%struct.rsc* %47)
  %49 = call i32 %37(i32 %41, i32 %48)
  br label %50

50:                                               ; preds = %34, %24
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
