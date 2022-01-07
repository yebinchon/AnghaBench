; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_acquire_codec.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_acquire_codec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PHYS_OUT_ADDR = common dso_local global i32 0, align 4
@ATI_REG_PHYS_OUT_ADDR_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"codec acquire timeout\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atiixp*)* @snd_atiixp_acquire_codec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_atiixp_acquire_codec(%struct.atiixp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atiixp*, align 8
  %4 = alloca i32, align 4
  store %struct.atiixp* %0, %struct.atiixp** %3, align 8
  store i32 1000, i32* %4, align 4
  br label %5

5:                                                ; preds = %25, %1
  %6 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %7 = load i32, i32* @PHYS_OUT_ADDR, align 4
  %8 = call i32 @atiixp_read(%struct.atiixp* %6, i32 %7)
  %9 = load i32, i32* @ATI_REG_PHYS_OUT_ADDR_EN, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %5
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %4, align 4
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %18 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_warn(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %28

25:                                               ; preds = %12
  %26 = call i32 @udelay(i32 1)
  br label %5

27:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %16
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @atiixp_read(%struct.atiixp*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
