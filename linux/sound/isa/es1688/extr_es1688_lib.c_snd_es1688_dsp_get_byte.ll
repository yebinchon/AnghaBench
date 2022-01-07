; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_dsp_get_byte.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/es1688/extr_es1688_lib.c_snd_es1688_dsp_get_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_es1688 = type { i32 }

@DATA_AVAIL = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"es1688 get byte failed: 0x%lx = 0x%x!!!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_es1688*)* @snd_es1688_dsp_get_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1688_dsp_get_byte(%struct.snd_es1688* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_es1688*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_es1688* %0, %struct.snd_es1688** %3, align 8
  store i32 1000, i32* %4, align 4
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %5
  %9 = load %struct.snd_es1688*, %struct.snd_es1688** %3, align 8
  %10 = load i32, i32* @DATA_AVAIL, align 4
  %11 = call i32 @ES1688P(%struct.snd_es1688* %9, i32 %10)
  %12 = call i32 @inb(i32 %11)
  %13 = and i32 %12, 128
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load %struct.snd_es1688*, %struct.snd_es1688** %3, align 8
  %17 = load i32, i32* @READ, align 4
  %18 = call i32 @ES1688P(%struct.snd_es1688* %16, i32 %17)
  %19 = call i32 @inb(i32 %18)
  store i32 %19, i32* %2, align 4
  br label %35

20:                                               ; preds = %8
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %4, align 4
  br label %5

24:                                               ; preds = %5
  %25 = load %struct.snd_es1688*, %struct.snd_es1688** %3, align 8
  %26 = load i32, i32* @DATA_AVAIL, align 4
  %27 = call i32 @ES1688P(%struct.snd_es1688* %25, i32 %26)
  %28 = load %struct.snd_es1688*, %struct.snd_es1688** %3, align 8
  %29 = load i32, i32* @DATA_AVAIL, align 4
  %30 = call i32 @ES1688P(%struct.snd_es1688* %28, i32 %29)
  %31 = call i32 @inb(i32 %30)
  %32 = call i32 @snd_printd(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %31)
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %24, %15
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @ES1688P(%struct.snd_es1688*, i32) #1

declare dso_local i32 @snd_printd(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
