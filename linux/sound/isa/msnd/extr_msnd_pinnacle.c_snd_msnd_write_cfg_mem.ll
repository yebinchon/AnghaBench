; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/msnd/extr_msnd_pinnacle.c_snd_msnd_write_cfg_mem.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/msnd/extr_msnd_pinnacle.c_snd_msnd_write_cfg_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IREG_LOGDEVICE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IREG_MEMBASEHI = common dso_local global i32 0, align 4
@IREG_MEMBASELO = common dso_local global i32 0, align 4
@IREG_MEMCONTROL = common dso_local global i32 0, align 4
@MEMTYPE_HIADDR = common dso_local global i32 0, align 4
@MEMTYPE_16BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @snd_msnd_write_cfg_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_msnd_write_cfg_mem(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = ashr i32 %9, 8
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, 4095
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @IREG_LOGDEVICE, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @snd_msnd_write_cfg(i32 %14, i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %57

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @IREG_MEMBASEHI, align 4
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @HIBYTE(i64 %25)
  %27 = call i64 @snd_msnd_write_cfg(i32 %23, i32 %24, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %57

32:                                               ; preds = %22
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @IREG_MEMBASELO, align 4
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @LOBYTE(i64 %35)
  %37 = call i64 @snd_msnd_write_cfg(i32 %33, i32 %34, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %57

42:                                               ; preds = %32
  %43 = load i64, i64* %8, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @IREG_MEMCONTROL, align 4
  %48 = load i32, i32* @MEMTYPE_HIADDR, align 4
  %49 = load i32, i32* @MEMTYPE_16BIT, align 4
  %50 = or i32 %48, %49
  %51 = call i64 @snd_msnd_write_cfg(i32 %46, i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %57

56:                                               ; preds = %45, %42
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %53, %39, %29, %19
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @snd_msnd_write_cfg(i32, i32, i32) #1

declare dso_local i32 @HIBYTE(i64) #1

declare dso_local i32 @LOBYTE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
