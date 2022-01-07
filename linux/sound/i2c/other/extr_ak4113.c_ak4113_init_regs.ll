; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4113.c_ak4113_init_regs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4113.c_ak4113_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak4113 = type { i8* }

@AK4113_REG_PWRDN = common dso_local global i64 0, align 8
@AK4113_RST = common dso_local global i8 0, align 1
@AK4113_PWN = common dso_local global i8 0, align 1
@AK4113_WRITABLE_REGS = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ak4113*)* @ak4113_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ak4113_init_regs(%struct.ak4113* %0) #0 {
  %2 = alloca %struct.ak4113*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store %struct.ak4113* %0, %struct.ak4113** %2, align 8
  %5 = load %struct.ak4113*, %struct.ak4113** %2, align 8
  %6 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = load i64, i64* @AK4113_REG_PWRDN, align 8
  %9 = getelementptr inbounds i8, i8* %7, i64 %8
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %3, align 1
  %11 = load %struct.ak4113*, %struct.ak4113** %2, align 8
  %12 = load i64, i64* @AK4113_REG_PWRDN, align 8
  %13 = load i8, i8* %3, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* @AK4113_RST, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @AK4113_PWN, align 1
  %18 = zext i8 %17 to i32
  %19 = or i32 %16, %18
  %20 = xor i32 %19, -1
  %21 = and i32 %14, %20
  %22 = trunc i32 %21 to i8
  %23 = call i32 @reg_write(%struct.ak4113* %11, i64 %12, i8 zeroext %22)
  %24 = call i32 @udelay(i32 200)
  %25 = load %struct.ak4113*, %struct.ak4113** %2, align 8
  %26 = load i64, i64* @AK4113_REG_PWRDN, align 8
  %27 = load i8, i8* %3, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @AK4113_RST, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %28, %30
  %32 = load i8, i8* @AK4113_PWN, align 1
  %33 = zext i8 %32 to i32
  %34 = xor i32 %33, -1
  %35 = and i32 %31, %34
  %36 = trunc i32 %35 to i8
  %37 = call i32 @reg_write(%struct.ak4113* %25, i64 %26, i8 zeroext %36)
  %38 = call i32 @udelay(i32 200)
  store i8 1, i8* %4, align 1
  br label %39

39:                                               ; preds = %57, %1
  %40 = load i8, i8* %4, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @AK4113_WRITABLE_REGS, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %39
  %46 = load %struct.ak4113*, %struct.ak4113** %2, align 8
  %47 = load i8, i8* %4, align 1
  %48 = zext i8 %47 to i64
  %49 = load %struct.ak4113*, %struct.ak4113** %2, align 8
  %50 = getelementptr inbounds %struct.ak4113, %struct.ak4113* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i8, i8* %4, align 1
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = call i32 @reg_write(%struct.ak4113* %46, i64 %48, i8 zeroext %55)
  br label %57

57:                                               ; preds = %45
  %58 = load i8, i8* %4, align 1
  %59 = add i8 %58, 1
  store i8 %59, i8* %4, align 1
  br label %39

60:                                               ; preds = %39
  %61 = load %struct.ak4113*, %struct.ak4113** %2, align 8
  %62 = load i64, i64* @AK4113_REG_PWRDN, align 8
  %63 = load i8, i8* %3, align 1
  %64 = zext i8 %63 to i32
  %65 = load i8, i8* @AK4113_RST, align 1
  %66 = zext i8 %65 to i32
  %67 = or i32 %64, %66
  %68 = load i8, i8* @AK4113_PWN, align 1
  %69 = zext i8 %68 to i32
  %70 = or i32 %67, %69
  %71 = trunc i32 %70 to i8
  %72 = call i32 @reg_write(%struct.ak4113* %61, i64 %62, i8 zeroext %71)
  ret void
}

declare dso_local i32 @reg_write(%struct.ak4113*, i64, i8 zeroext) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
