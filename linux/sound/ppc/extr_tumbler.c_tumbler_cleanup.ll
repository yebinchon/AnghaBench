; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_tumbler.c_tumbler_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_tumbler.c_tumbler_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pmac = type { %struct.pmac_tumbler* }
%struct.pmac_tumbler = type { i64, i64, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pmac*)* @tumbler_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tumbler_cleanup(%struct.snd_pmac* %0) #0 {
  %2 = alloca %struct.snd_pmac*, align 8
  %3 = alloca %struct.pmac_tumbler*, align 8
  store %struct.snd_pmac* %0, %struct.snd_pmac** %2, align 8
  %4 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %5 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %4, i32 0, i32 0
  %6 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %5, align 8
  store %struct.pmac_tumbler* %6, %struct.pmac_tumbler** %3, align 8
  %7 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %3, align 8
  %8 = icmp ne %struct.pmac_tumbler* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %52

10:                                               ; preds = %1
  %11 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %3, align 8
  %12 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %3, align 8
  %17 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %20 = call i32 @free_irq(i64 %18, %struct.snd_pmac* %19)
  br label %21

21:                                               ; preds = %15, %10
  %22 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %3, align 8
  %23 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %3, align 8
  %28 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %31 = call i32 @free_irq(i64 %29, %struct.snd_pmac* %30)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %3, align 8
  %34 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %33, i32 0, i32 6
  %35 = call i32 @tumbler_gpio_free(i32* %34)
  %36 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %3, align 8
  %37 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %36, i32 0, i32 5
  %38 = call i32 @tumbler_gpio_free(i32* %37)
  %39 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %3, align 8
  %40 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %39, i32 0, i32 4
  %41 = call i32 @tumbler_gpio_free(i32* %40)
  %42 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %3, align 8
  %43 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %42, i32 0, i32 3
  %44 = call i32 @tumbler_gpio_free(i32* %43)
  %45 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %3, align 8
  %46 = getelementptr inbounds %struct.pmac_tumbler, %struct.pmac_tumbler* %45, i32 0, i32 2
  %47 = call i32 @snd_pmac_keywest_cleanup(i32* %46)
  %48 = load %struct.pmac_tumbler*, %struct.pmac_tumbler** %3, align 8
  %49 = call i32 @kfree(%struct.pmac_tumbler* %48)
  %50 = load %struct.snd_pmac*, %struct.snd_pmac** %2, align 8
  %51 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %50, i32 0, i32 0
  store %struct.pmac_tumbler* null, %struct.pmac_tumbler** %51, align 8
  br label %52

52:                                               ; preds = %32, %9
  ret void
}

declare dso_local i32 @free_irq(i64, %struct.snd_pmac*) #1

declare dso_local i32 @tumbler_gpio_free(i32*) #1

declare dso_local i32 @snd_pmac_keywest_cleanup(i32*) #1

declare dso_local i32 @kfree(%struct.pmac_tumbler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
