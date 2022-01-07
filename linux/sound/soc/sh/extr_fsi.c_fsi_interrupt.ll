; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master = type { %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@SOFT_RST = common dso_local global i32 0, align 4
@IR = common dso_local global i32 0, align 4
@AO_SHIFT = common dso_local global i32 0, align 4
@BO_SHIFT = common dso_local global i32 0, align 4
@AI_SHIFT = common dso_local global i32 0, align 4
@BI_SHIFT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fsi_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fsi_master*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.fsi_master*
  store %struct.fsi_master* %8, %struct.fsi_master** %5, align 8
  %9 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %10 = call i32 @fsi_irq_get_status(%struct.fsi_master* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %12 = load i32, i32* @SOFT_RST, align 4
  %13 = load i32, i32* @IR, align 4
  %14 = call i32 @fsi_master_mask_set(%struct.fsi_master* %11, i32 %12, i32 %13, i32 0)
  %15 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %16 = load i32, i32* @SOFT_RST, align 4
  %17 = load i32, i32* @IR, align 4
  %18 = load i32, i32* @IR, align 4
  %19 = call i32 @fsi_master_mask_set(%struct.fsi_master* %15, i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @AO_SHIFT, align 4
  %22 = call i32 @AB_IO(i32 1, i32 %21)
  %23 = and i32 %20, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %27 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = call i32 @fsi_stream_transfer(i32* %28)
  br label %30

30:                                               ; preds = %25, %2
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @BO_SHIFT, align 4
  %33 = call i32 @AB_IO(i32 1, i32 %32)
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %38 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = call i32 @fsi_stream_transfer(i32* %39)
  br label %41

41:                                               ; preds = %36, %30
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @AI_SHIFT, align 4
  %44 = call i32 @AB_IO(i32 1, i32 %43)
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %49 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = call i32 @fsi_stream_transfer(i32* %50)
  br label %52

52:                                               ; preds = %47, %41
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @BI_SHIFT, align 4
  %55 = call i32 @AB_IO(i32 1, i32 %54)
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %60 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = call i32 @fsi_stream_transfer(i32* %61)
  br label %63

63:                                               ; preds = %58, %52
  %64 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %65 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %64, i32 0, i32 1
  %66 = call i32 @fsi_count_fifo_err(%struct.TYPE_3__* %65)
  %67 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %68 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %67, i32 0, i32 0
  %69 = call i32 @fsi_count_fifo_err(%struct.TYPE_3__* %68)
  %70 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %71 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %70, i32 0, i32 1
  %72 = call i32 @fsi_irq_clear_status(%struct.TYPE_3__* %71)
  %73 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %74 = getelementptr inbounds %struct.fsi_master, %struct.fsi_master* %73, i32 0, i32 0
  %75 = call i32 @fsi_irq_clear_status(%struct.TYPE_3__* %74)
  %76 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %76
}

declare dso_local i32 @fsi_irq_get_status(%struct.fsi_master*) #1

declare dso_local i32 @fsi_master_mask_set(%struct.fsi_master*, i32, i32, i32) #1

declare dso_local i32 @AB_IO(i32, i32) #1

declare dso_local i32 @fsi_stream_transfer(i32*) #1

declare dso_local i32 @fsi_count_fifo_err(%struct.TYPE_3__*) #1

declare dso_local i32 @fsi_irq_clear_status(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
