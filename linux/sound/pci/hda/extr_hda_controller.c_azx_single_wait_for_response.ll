; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_single_wait_for_response.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_controller.c_azx_single_wait_for_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@IRS = common dso_local global i32 0, align 4
@AZX_IRS_VALID = common dso_local global i32 0, align 4
@IR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"get_response timeout: IRS=0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.azx*, i32)* @azx_single_wait_for_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_single_wait_for_response(%struct.azx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.azx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.azx* %0, %struct.azx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 50, i32* %6, align 4
  br label %7

7:                                                ; preds = %30, %2
  %8 = load i32, i32* %6, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %6, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = load %struct.azx*, %struct.azx** %4, align 8
  %13 = load i32, i32* @IRS, align 4
  %14 = call i32 @azx_readw(%struct.azx* %12, i32 %13)
  %15 = load i32, i32* @AZX_IRS_VALID, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %11
  %19 = load %struct.azx*, %struct.azx** %4, align 8
  %20 = load i32, i32* @IR, align 4
  %21 = call i32 @azx_readl(%struct.azx* %19, i32 %20)
  %22 = load %struct.azx*, %struct.azx** %4, align 8
  %23 = call %struct.TYPE_6__* @azx_bus(%struct.azx* %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %21, i32* %29, align 4
  store i32 0, i32* %3, align 4
  br label %56

30:                                               ; preds = %11
  %31 = call i32 @udelay(i32 1)
  br label %7

32:                                               ; preds = %7
  %33 = call i64 (...) @printk_ratelimit()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load %struct.azx*, %struct.azx** %4, align 8
  %37 = getelementptr inbounds %struct.azx, %struct.azx* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.azx*, %struct.azx** %4, align 8
  %42 = load i32, i32* @IRS, align 4
  %43 = call i32 @azx_readw(%struct.azx* %41, i32 %42)
  %44 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %35, %32
  %46 = load %struct.azx*, %struct.azx** %4, align 8
  %47 = call %struct.TYPE_6__* @azx_bus(%struct.azx* %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 -1, i32* %53, align 4
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %45, %18
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @azx_readw(%struct.azx*, i32) #1

declare dso_local i32 @azx_readl(%struct.azx*, i32) #1

declare dso_local %struct.TYPE_6__* @azx_bus(%struct.azx*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
