; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_set_dds_value.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdspm.c_hdspm_set_dds_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdspm = type { i32 }

@HDSPM_freqReg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdspm*, i32)* @hdspm_set_dds_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdspm_set_dds_value(%struct.hdspm* %0, i32 %1) #0 {
  %3 = alloca %struct.hdspm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hdspm* %0, %struct.hdspm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sle i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @snd_BUG_ON(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %45

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp sge i32 %13, 112000
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = sdiv i32 %16, 4
  store i32 %17, i32* %4, align 4
  br label %25

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = icmp sge i32 %19, 56000
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = sdiv i32 %22, 2
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %21, %18
  br label %25

25:                                               ; preds = %24, %15
  %26 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %27 = getelementptr inbounds %struct.hdspm, %struct.hdspm* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %32 [
    i32 129, label %29
    i32 130, label %30
    i32 132, label %30
    i32 128, label %31
    i32 131, label %31
  ]

29:                                               ; preds = %25
  store i32 -1811939328, i32* %5, align 4
  br label %34

30:                                               ; preds = %25, %25
  store i32 -2108428264, i32* %5, align 4
  br label %34

31:                                               ; preds = %25, %25
  store i32 268435456, i32* %5, align 4
  br label %34

32:                                               ; preds = %25
  %33 = call i32 (...) @snd_BUG()
  br label %45

34:                                               ; preds = %31, %30, %29
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @div_u64(i32 %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = ashr i32 %38, 32
  %40 = call i32 @snd_BUG_ON(i32 %39)
  %41 = load %struct.hdspm*, %struct.hdspm** %3, align 8
  %42 = load i32, i32* @HDSPM_freqReg, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @hdspm_write(%struct.hdspm* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %34, %32, %11
  ret void
}

declare dso_local i32 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @hdspm_write(%struct.hdspm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
