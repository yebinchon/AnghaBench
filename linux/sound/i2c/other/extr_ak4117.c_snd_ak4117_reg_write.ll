; ModuleID = '/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4117.c_snd_ak4117_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/i2c/other/extr_ak4117.c_snd_ak4117_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ak4117 = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_ak4117_reg_write(%struct.ak4117* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.ak4117*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.ak4117* %0, %struct.ak4117** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %9 = load i8, i8* %6, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp sge i32 %10, 5
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %33

13:                                               ; preds = %4
  %14 = load %struct.ak4117*, %struct.ak4117** %5, align 8
  %15 = load i8, i8* %6, align 1
  %16 = load %struct.ak4117*, %struct.ak4117** %5, align 8
  %17 = getelementptr inbounds %struct.ak4117, %struct.ak4117* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* %7, align 1
  %25 = zext i8 %24 to i32
  %26 = xor i32 %25, -1
  %27 = and i32 %23, %26
  %28 = load i8, i8* %8, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %27, %29
  %31 = trunc i32 %30 to i8
  %32 = call i32 @reg_write(%struct.ak4117* %14, i8 zeroext %15, i8 zeroext %31)
  br label %33

33:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @reg_write(%struct.ak4117*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
