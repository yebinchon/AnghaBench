; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_get_byte.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1938.c_snd_es1938_get_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1938 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GET_LOOP_TIMEOUT = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@READDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"get_byte timeout: status 0x02%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.es1938*)* @snd_es1938_get_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_es1938_get_byte(%struct.es1938* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.es1938*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.es1938* %0, %struct.es1938** %3, align 8
  %6 = load i32, i32* @GET_LOOP_TIMEOUT, align 4
  store i32 %6, i32* %4, align 4
  br label %7

7:                                                ; preds = %25, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  %11 = load %struct.es1938*, %struct.es1938** %3, align 8
  %12 = load i32, i32* @STATUS, align 4
  %13 = call i32 @SLSB_REG(%struct.es1938* %11, i32 %12)
  %14 = call i32 @inb(i32 %13)
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %5, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 128
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %10
  %20 = load %struct.es1938*, %struct.es1938** %3, align 8
  %21 = load i32, i32* @READDATA, align 4
  %22 = call i32 @SLSB_REG(%struct.es1938* %20, i32 %21)
  %23 = call i32 @inb(i32 %22)
  store i32 %23, i32* %2, align 4
  br label %38

24:                                               ; preds = %10
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %4, align 4
  br label %7

28:                                               ; preds = %7
  %29 = load %struct.es1938*, %struct.es1938** %3, align 8
  %30 = getelementptr inbounds %struct.es1938, %struct.es1938* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8, i8* %5, align 1
  %35 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8 zeroext %34)
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %28, %19
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @SLSB_REG(%struct.es1938*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
