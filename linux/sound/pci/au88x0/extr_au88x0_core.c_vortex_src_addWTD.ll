; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_src_addWTD.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_src_addWTD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@VORTEX_SRCBLOCK_SR = common dso_local global i32 0, align 4
@VORTEX_SRC_CHNBASE = common dso_local global i8 0, align 1
@VORTEX_SRC_RTBASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"vortex_src_addWTD: lifeboat overflow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8, i8)* @vortex_src_addWTD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vortex_src_addWTD(%struct.TYPE_6__* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i32 0, i32* %9, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @VORTEX_SRCBLOCK_SR, align 4
  %15 = call i32 @hwread(i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i8, i8* %7, align 1
  %18 = zext i8 %17 to i32
  %19 = shl i32 1, %18
  %20 = and i32 %16, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i8, i8* @VORTEX_SRC_CHNBASE, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* %7, align 1
  %29 = zext i8 %28 to i32
  %30 = shl i32 %29, 2
  %31 = add nsw i32 %27, %30
  %32 = load i8, i8* %6, align 1
  %33 = zext i8 %32 to i32
  %34 = call i32 @hwwrite(i32 %25, i32 %31, i32 %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = load i8, i8* %7, align 1
  %37 = call i32 @vortex_src_en_sr(%struct.TYPE_6__* %35, i8 zeroext %36)
  store i32 1, i32* %4, align 4
  br label %96

38:                                               ; preds = %3
  %39 = load i8, i8* @VORTEX_SRC_CHNBASE, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8, i8* %7, align 1
  %42 = zext i8 %41 to i32
  %43 = shl i32 %42, 2
  %44 = add nsw i32 %40, %43
  store i32 %44, i32* %10, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @hwread(i32 %47, i32 %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %75, %38
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, 16
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %50
  %55 = load i32, i32* @VORTEX_SRC_RTBASE, align 4
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, 15
  %58 = shl i32 %57, 2
  %59 = add nsw i32 %55, %58
  store i32 %59, i32* %10, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @hwread(i32 %62, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  %67 = icmp sgt i32 %66, 15
  br i1 %67, label %68, label %75

68:                                               ; preds = %54
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %96

75:                                               ; preds = %54
  br label %50

76:                                               ; preds = %50
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @VORTEX_SRC_RTBASE, align 4
  %81 = load i32, i32* %8, align 4
  %82 = and i32 %81, 15
  %83 = shl i32 %82, 2
  %84 = add nsw i32 %80, %83
  %85 = load i8, i8* %6, align 1
  %86 = zext i8 %85 to i32
  %87 = call i32 @hwwrite(i32 %79, i32 %84, i32 %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %8, align 4
  %93 = and i32 %92, 15
  %94 = or i32 %93, 16
  %95 = call i32 @hwwrite(i32 %90, i32 %91, i32 %94)
  store i32 1, i32* %4, align 4
  br label %96

96:                                               ; preds = %76, %68, %22
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @hwread(i32, i32) #1

declare dso_local i32 @hwwrite(i32, i32, i32) #1

declare dso_local i32 @vortex_src_en_sr(%struct.TYPE_6__*, i8 zeroext) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
