; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4117.c_snd_ak4117_reinit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4117.c_snd_ak4117_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak4117 = type { i8*, i32, i32 }

@AK4117_REG_PWRDN = common dso_local global i64 0, align 8
@AK4117_RST = common dso_local global i8 0, align 1
@AK4117_PWN = common dso_local global i8 0, align 1
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_ak4117_reinit(%struct.ak4117* %0) #0 {
  %2 = alloca %struct.ak4117*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store %struct.ak4117* %0, %struct.ak4117** %2, align 8
  %5 = load %struct.ak4117*, %struct.ak4117** %2, align 8
  %6 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = load i64, i64* @AK4117_REG_PWRDN, align 8
  %9 = getelementptr inbounds i8, i8* %7, i64 %8
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %3, align 1
  %11 = load %struct.ak4117*, %struct.ak4117** %2, align 8
  %12 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %11, i32 0, i32 2
  %13 = call i32 @del_timer(i32* %12)
  %14 = load %struct.ak4117*, %struct.ak4117** %2, align 8
  %15 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %14, i32 0, i32 1
  store i32 1, i32* %15, align 8
  %16 = load %struct.ak4117*, %struct.ak4117** %2, align 8
  %17 = load i64, i64* @AK4117_REG_PWRDN, align 8
  %18 = call i32 @reg_write(%struct.ak4117* %16, i64 %17, i8 zeroext 0)
  %19 = call i32 @udelay(i32 200)
  %20 = load %struct.ak4117*, %struct.ak4117** %2, align 8
  %21 = load i64, i64* @AK4117_REG_PWRDN, align 8
  %22 = load i8, i8* %3, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @AK4117_RST, align 1
  %25 = zext i8 %24 to i32
  %26 = or i32 %23, %25
  %27 = load i8, i8* @AK4117_PWN, align 1
  %28 = zext i8 %27 to i32
  %29 = xor i32 %28, -1
  %30 = and i32 %26, %29
  %31 = trunc i32 %30 to i8
  %32 = call i32 @reg_write(%struct.ak4117* %20, i64 %21, i8 zeroext %31)
  %33 = call i32 @udelay(i32 200)
  store i8 1, i8* %4, align 1
  br label %34

34:                                               ; preds = %50, %1
  %35 = load i8, i8* %4, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp slt i32 %36, 5
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load %struct.ak4117*, %struct.ak4117** %2, align 8
  %40 = load i8, i8* %4, align 1
  %41 = zext i8 %40 to i64
  %42 = load %struct.ak4117*, %struct.ak4117** %2, align 8
  %43 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i8, i8* %4, align 1
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = call i32 @reg_write(%struct.ak4117* %39, i64 %41, i8 zeroext %48)
  br label %50

50:                                               ; preds = %38
  %51 = load i8, i8* %4, align 1
  %52 = add i8 %51, 1
  store i8 %52, i8* %4, align 1
  br label %34

53:                                               ; preds = %34
  %54 = load %struct.ak4117*, %struct.ak4117** %2, align 8
  %55 = load i64, i64* @AK4117_REG_PWRDN, align 8
  %56 = load i8, i8* %3, align 1
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* @AK4117_RST, align 1
  %59 = zext i8 %58 to i32
  %60 = or i32 %57, %59
  %61 = load i8, i8* @AK4117_PWN, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %60, %62
  %64 = trunc i32 %63 to i8
  %65 = call i32 @reg_write(%struct.ak4117* %54, i64 %55, i8 zeroext %64)
  %66 = load %struct.ak4117*, %struct.ak4117** %2, align 8
  %67 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %66, i32 0, i32 1
  store i32 0, i32* %67, align 8
  %68 = load %struct.ak4117*, %struct.ak4117** %2, align 8
  %69 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %68, i32 0, i32 2
  %70 = load i64, i64* @jiffies, align 8
  %71 = add nsw i64 1, %70
  %72 = call i32 @mod_timer(i32* %69, i64 %71)
  ret void
}

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @reg_write(%struct.ak4117*, i64, i8 zeroext) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
