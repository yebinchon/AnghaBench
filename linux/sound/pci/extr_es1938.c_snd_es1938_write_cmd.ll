; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_write_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_write_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1938 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@WRITE_LOOP_TIMEOUT = common dso_local global i32 0, align 4
@READSTATUS = common dso_local global i32 0, align 4
@WRITEDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"snd_es1938_write_cmd timeout (0x02%x/0x02%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es1938*, i8)* @snd_es1938_write_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_es1938_write_cmd(%struct.es1938* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.es1938*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.es1938* %0, %struct.es1938** %3, align 8
  store i8 %1, i8* %4, align 1
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %26, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @WRITE_LOOP_TIMEOUT, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = load %struct.es1938*, %struct.es1938** %3, align 8
  %13 = load i32, i32* @READSTATUS, align 4
  %14 = call i32 @SLSB_REG(%struct.es1938* %12, i32 %13)
  %15 = call i32 @inb(i32 %14)
  %16 = and i32 %15, 128
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %6, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %11
  %20 = load i8, i8* %4, align 1
  %21 = load %struct.es1938*, %struct.es1938** %3, align 8
  %22 = load i32, i32* @WRITEDATA, align 4
  %23 = call i32 @SLSB_REG(%struct.es1938* %21, i32 %22)
  %24 = call i32 @outb(i8 zeroext %20, i32 %23)
  br label %38

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %7

29:                                               ; preds = %7
  %30 = load %struct.es1938*, %struct.es1938** %3, align 8
  %31 = getelementptr inbounds %struct.es1938, %struct.es1938* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8, i8* %4, align 1
  %36 = load i8, i8* %6, align 1
  %37 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8 zeroext %35, i8 zeroext %36)
  br label %38

38:                                               ; preds = %29, %19
  ret void
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @SLSB_REG(%struct.es1938*, i32) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
