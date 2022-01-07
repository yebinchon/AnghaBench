; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw_auto_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k2.c_hw_auto_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GLOBAL_CNTL_GCTL = common dso_local global i32 0, align 4
@GCTL_AIE = common dso_local global i32 0, align 4
@GCTL_AID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Card Auto-init failed!!!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*)* @hw_auto_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_auto_init(%struct.hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %3, align 8
  %6 = load %struct.hw*, %struct.hw** %3, align 8
  %7 = load i32, i32* @GLOBAL_CNTL_GCTL, align 4
  %8 = call i32 @hw_read_20kx(%struct.hw* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @GCTL_AIE, align 4
  %10 = call i32 @set_field(i32* %4, i32 %9, i32 0)
  %11 = load %struct.hw*, %struct.hw** %3, align 8
  %12 = load i32, i32* @GLOBAL_CNTL_GCTL, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @hw_write_20kx(%struct.hw* %11, i32 %12, i32 %13)
  %15 = load i32, i32* @GCTL_AIE, align 4
  %16 = call i32 @set_field(i32* %4, i32 %15, i32 1)
  %17 = load %struct.hw*, %struct.hw** %3, align 8
  %18 = load i32, i32* @GLOBAL_CNTL_GCTL, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @hw_write_20kx(%struct.hw* %17, i32 %18, i32 %19)
  %21 = call i32 @mdelay(i32 10)
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %35, %1
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 400000
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load %struct.hw*, %struct.hw** %3, align 8
  %27 = load i32, i32* @GLOBAL_CNTL_GCTL, align 4
  %28 = call i32 @hw_read_20kx(%struct.hw* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @GCTL_AID, align 4
  %31 = call i64 @get_field(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %38

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %22

38:                                               ; preds = %33, %22
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @GCTL_AID, align 4
  %41 = call i64 @get_field(i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %38
  %44 = load %struct.hw*, %struct.hw** %3, align 8
  %45 = getelementptr inbounds %struct.hw, %struct.hw* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_alert(i32 %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EBUSY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %53

52:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %43
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @hw_read_20kx(%struct.hw*, i32) #1

declare dso_local i32 @set_field(i32*, i32, i32) #1

declare dso_local i32 @hw_write_20kx(%struct.hw*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i64 @get_field(i32, i32) #1

declare dso_local i32 @dev_alert(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
