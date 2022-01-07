; ModuleID = '/home/carl/AnghaBench/linux/sound/oss/dmasound/extr_dmasound_q40.c_Q40PlayNextFrame.c'
source_filename = "/home/carl/AnghaBench/linux/sound/oss/dmasound/extr_dmasound_q40.c_Q40PlayNextFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32**, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@write_sq = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@q40_pp = common dso_local global i32* null, align 8
@q40_sc = common dso_local global i32 0, align 4
@dmasound = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@SAMPLE_ENABLE_REG = common dso_local global i32 0, align 4
@Q40_IRQ_SAMPLE = common dso_local global i32 0, align 4
@Q40Interrupt = common dso_local global i32 0, align 4
@Q40StereoInterrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Q40 sound\00", align 1
@Q40MonoInterrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Couldn't register sound interrupt\0A\00", align 1
@SAMPLE_RATE_REG = common dso_local global i32 0, align 4
@SAMPLE_CLEAR_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @Q40PlayNextFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Q40PlayNextFrame(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @write_sq, i32 0, i32 0), align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @write_sq, i32 0, i32 1), align 8
  %9 = getelementptr inbounds i32*, i32** %7, i64 %8
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %3, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @write_sq, i32 0, i32 2), align 8
  %12 = load i32, i32* %2, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @write_sq, i32 0, i32 6), align 8
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @write_sq, i32 0, i32 5), align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %4, align 4
  %20 = load i32*, i32** %3, align 8
  store i32* %20, i32** @q40_pp, align 8
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* @q40_sc, align 4
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @write_sq, i32 0, i32 1), align 8
  %23 = add i64 %22, 1
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @write_sq, i32 0, i32 3), align 4
  %25 = sext i32 %24 to i64
  %26 = urem i64 %23, %25
  store i64 %26, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @write_sq, i32 0, i32 1), align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @write_sq, i32 0, i32 4), align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @write_sq, i32 0, i32 4), align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dmasound, i32 0, i32 1, i32 0), align 8
  %30 = icmp eq i32 %29, 10000
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 0, i32 1
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @SAMPLE_ENABLE_REG, align 4
  %34 = call i32 @master_outb(i32 0, i32 %33)
  %35 = load i32, i32* @Q40_IRQ_SAMPLE, align 4
  %36 = load i32, i32* @Q40Interrupt, align 4
  %37 = call i32 @free_irq(i32 %35, i32 %36)
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dmasound, i32 0, i32 0, i32 0), align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %18
  %41 = load i32, i32* @Q40_IRQ_SAMPLE, align 4
  %42 = load i32, i32* @Q40StereoInterrupt, align 4
  %43 = load i32, i32* @Q40Interrupt, align 4
  %44 = call i32 @request_irq(i32 %41, i32 %42, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %43)
  store i32 %44, i32* %6, align 4
  br label %50

45:                                               ; preds = %18
  %46 = load i32, i32* @Q40_IRQ_SAMPLE, align 4
  %47 = load i32, i32* @Q40MonoInterrupt, align 4
  %48 = load i32, i32* @Q40Interrupt, align 4
  %49 = call i32 @request_irq(i32 %46, i32 %47, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %48)
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = call i64 (...) @printk_ratelimit()
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %53, %50
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @SAMPLE_RATE_REG, align 4
  %61 = call i32 @master_outb(i32 %59, i32 %60)
  %62 = load i32, i32* @SAMPLE_CLEAR_REG, align 4
  %63 = call i32 @master_outb(i32 1, i32 %62)
  %64 = load i32, i32* @SAMPLE_ENABLE_REG, align 4
  %65 = call i32 @master_outb(i32 1, i32 %64)
  ret void
}

declare dso_local i32 @master_outb(i32, i32) #1

declare dso_local i32 @free_irq(i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
