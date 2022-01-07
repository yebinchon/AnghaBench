; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/opti9xx/extr_opti92x-ad1848.c_snd_opti9xx_read_check.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/opti9xx/extr_opti92x-ad1848.c_snd_opti9xx_read_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_opti9xx = type { i32, i32, i32, i32, i32, i32*, i32*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"OPTi9xx MC\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_opti9xx*)* @snd_opti9xx_read_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opti9xx_read_check(%struct.snd_opti9xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_opti9xx*, align 8
  %4 = alloca i8, align 1
  store %struct.snd_opti9xx* %0, %struct.snd_opti9xx** %3, align 8
  %5 = load %struct.snd_opti9xx*, %struct.snd_opti9xx** %3, align 8
  %6 = getelementptr inbounds %struct.snd_opti9xx, %struct.snd_opti9xx* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.snd_opti9xx*, %struct.snd_opti9xx** %3, align 8
  %9 = getelementptr inbounds %struct.snd_opti9xx, %struct.snd_opti9xx* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @request_region(i32 %7, i32 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = bitcast i8* %11 to i32*
  %13 = load %struct.snd_opti9xx*, %struct.snd_opti9xx** %3, align 8
  %14 = getelementptr inbounds %struct.snd_opti9xx, %struct.snd_opti9xx* %13, i32 0, i32 5
  store i32* %12, i32** %14, align 8
  %15 = load %struct.snd_opti9xx*, %struct.snd_opti9xx** %3, align 8
  %16 = getelementptr inbounds %struct.snd_opti9xx, %struct.snd_opti9xx* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %59

22:                                               ; preds = %1
  %23 = load %struct.snd_opti9xx*, %struct.snd_opti9xx** %3, align 8
  %24 = call i32 @OPTi9XX_MC_REG(i32 1)
  %25 = call i32 @snd_opti9xx_read(%struct.snd_opti9xx* %23, i32 %24)
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %4, align 1
  %27 = load i8, i8* %4, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ne i32 %28, 255
  br i1 %29, label %30, label %50

30:                                               ; preds = %22
  %31 = load i8, i8* %4, align 1
  %32 = zext i8 %31 to i32
  %33 = load %struct.snd_opti9xx*, %struct.snd_opti9xx** %3, align 8
  %34 = getelementptr inbounds %struct.snd_opti9xx, %struct.snd_opti9xx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @OPTi9XX_MC_REG(i32 1)
  %37 = add nsw i32 %35, %36
  %38 = call zeroext i8 @inb(i32 %37)
  %39 = zext i8 %38 to i32
  %40 = icmp ne i32 %32, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %30
  %42 = load i8, i8* %4, align 1
  %43 = zext i8 %42 to i32
  %44 = load %struct.snd_opti9xx*, %struct.snd_opti9xx** %3, align 8
  %45 = call i32 @OPTi9XX_MC_REG(i32 1)
  %46 = call i32 @snd_opti9xx_read(%struct.snd_opti9xx* %44, i32 %45)
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %59

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %30, %22
  %51 = load %struct.snd_opti9xx*, %struct.snd_opti9xx** %3, align 8
  %52 = getelementptr inbounds %struct.snd_opti9xx, %struct.snd_opti9xx* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @release_and_free_resource(i32* %53)
  %55 = load %struct.snd_opti9xx*, %struct.snd_opti9xx** %3, align 8
  %56 = getelementptr inbounds %struct.snd_opti9xx, %struct.snd_opti9xx* %55, i32 0, i32 5
  store i32* null, i32** %56, align 8
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %50, %48, %19
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i8* @request_region(i32, i32, i8*) #1

declare dso_local i32 @snd_opti9xx_read(%struct.snd_opti9xx*, i32) #1

declare dso_local i32 @OPTi9XX_MC_REG(i32) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @release_and_free_resource(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
