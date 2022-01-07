; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/opti9xx/extr_miro.c_snd_miro_opti_check.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/opti9xx/extr_miro.c_snd_miro_opti_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_miro = type { i32*, i64, i32 }

@.str = private unnamed_addr constant [11 x i8] c"OPTi9xx MC\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_miro*)* @snd_miro_opti_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_miro_opti_check(%struct.snd_miro* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_miro*, align 8
  %4 = alloca i8, align 1
  store %struct.snd_miro* %0, %struct.snd_miro** %3, align 8
  %5 = load %struct.snd_miro*, %struct.snd_miro** %3, align 8
  %6 = getelementptr inbounds %struct.snd_miro, %struct.snd_miro* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.snd_miro*, %struct.snd_miro** %3, align 8
  %9 = getelementptr inbounds %struct.snd_miro, %struct.snd_miro* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32* @request_region(i64 %7, i32 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.snd_miro*, %struct.snd_miro** %3, align 8
  %13 = getelementptr inbounds %struct.snd_miro, %struct.snd_miro* %12, i32 0, i32 0
  store i32* %11, i32** %13, align 8
  %14 = load %struct.snd_miro*, %struct.snd_miro** %3, align 8
  %15 = getelementptr inbounds %struct.snd_miro, %struct.snd_miro* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %58

21:                                               ; preds = %1
  %22 = load %struct.snd_miro*, %struct.snd_miro** %3, align 8
  %23 = call i64 @OPTi9XX_MC_REG(i32 1)
  %24 = call zeroext i8 @snd_miro_read(%struct.snd_miro* %22, i64 %23)
  store i8 %24, i8* %4, align 1
  %25 = load i8, i8* %4, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %26, 255
  br i1 %27, label %28, label %49

28:                                               ; preds = %21
  %29 = load i8, i8* %4, align 1
  %30 = zext i8 %29 to i32
  %31 = load %struct.snd_miro*, %struct.snd_miro** %3, align 8
  %32 = getelementptr inbounds %struct.snd_miro, %struct.snd_miro* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @OPTi9XX_MC_REG(i32 1)
  %35 = add nsw i64 %33, %34
  %36 = call zeroext i8 @inb(i64 %35)
  %37 = zext i8 %36 to i32
  %38 = icmp ne i32 %30, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %28
  %40 = load i8, i8* %4, align 1
  %41 = zext i8 %40 to i32
  %42 = load %struct.snd_miro*, %struct.snd_miro** %3, align 8
  %43 = call i64 @OPTi9XX_MC_REG(i32 1)
  %44 = call zeroext i8 @snd_miro_read(%struct.snd_miro* %42, i64 %43)
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %41, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %58

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %28, %21
  %50 = load %struct.snd_miro*, %struct.snd_miro** %3, align 8
  %51 = getelementptr inbounds %struct.snd_miro, %struct.snd_miro* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @release_and_free_resource(i32* %52)
  %54 = load %struct.snd_miro*, %struct.snd_miro** %3, align 8
  %55 = getelementptr inbounds %struct.snd_miro, %struct.snd_miro* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %49, %47, %18
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32* @request_region(i64, i32, i8*) #1

declare dso_local zeroext i8 @snd_miro_read(%struct.snd_miro*, i64) #1

declare dso_local i64 @OPTi9XX_MC_REG(i32) #1

declare dso_local zeroext i8 @inb(i64) #1

declare dso_local i32 @release_and_free_resource(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
