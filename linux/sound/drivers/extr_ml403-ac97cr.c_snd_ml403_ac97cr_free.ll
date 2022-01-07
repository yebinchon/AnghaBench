; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_ml403-ac97cr.c_snd_ml403_ac97cr_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_ml403-ac97cr.c_snd_ml403_ac97cr_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ml403_ac97cr = type { i64, i64, i32 }

@INIT_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"free():\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"free(): (done)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ml403_ac97cr*)* @snd_ml403_ac97cr_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ml403_ac97cr_free(%struct.snd_ml403_ac97cr* %0) #0 {
  %2 = alloca %struct.snd_ml403_ac97cr*, align 8
  store %struct.snd_ml403_ac97cr* %0, %struct.snd_ml403_ac97cr** %2, align 8
  %3 = load i32, i32* @INIT_INFO, align 4
  %4 = call i32 @PDEBUG(i32 %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %2, align 8
  %6 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sge i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %2, align 8
  %11 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %2, align 8
  %14 = call i32 @free_irq(i64 %12, %struct.snd_ml403_ac97cr* %13)
  br label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %2, align 8
  %17 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %2, align 8
  %22 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %2, align 8
  %25 = call i32 @free_irq(i64 %23, %struct.snd_ml403_ac97cr* %24)
  br label %26

26:                                               ; preds = %20, %15
  %27 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %2, align 8
  %28 = getelementptr inbounds %struct.snd_ml403_ac97cr, %struct.snd_ml403_ac97cr* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @iounmap(i32 %29)
  %31 = load %struct.snd_ml403_ac97cr*, %struct.snd_ml403_ac97cr** %2, align 8
  %32 = call i32 @kfree(%struct.snd_ml403_ac97cr* %31)
  %33 = load i32, i32* @INIT_INFO, align 4
  %34 = call i32 @PDEBUG(i32 %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @free_irq(i64, %struct.snd_ml403_ac97cr*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.snd_ml403_ac97cr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
