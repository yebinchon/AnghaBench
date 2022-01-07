; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_adb_addroutes.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_adb_addroutes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@VORTEX_ADB_RTBASE = common dso_local global i64 0, align 8
@ADB_MASK = common dso_local global i32 0, align 4
@ROUTE_MASK = common dso_local global i32 0, align 4
@VORTEX_ADB_CHNBASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"vortex_adb_addroutes: unending route! 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8, i32*, i32)* @vortex_adb_addroutes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_adb_addroutes(%struct.TYPE_6__* %0, i8 zeroext %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %4
  br label %142

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %8, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* @VORTEX_ADB_RTBASE, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ADB_MASK, align 4
  %31 = and i32 %29, %30
  %32 = shl i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %24, %33
  %35 = load i32, i32* @ROUTE_MASK, align 4
  %36 = call i32 @hwwrite(i32 %23, i64 %34, i32 %35)
  br label %37

37:                                               ; preds = %40, %18
  %38 = load i32, i32* %8, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %37
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* @VORTEX_ADB_RTBASE, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ADB_MASK, align 4
  %52 = and i32 %50, %51
  %53 = shl i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %44, %54
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @hwwrite(i32 %43, i64 %55, i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %8, align 4
  br label %37

64:                                               ; preds = %37
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i64, i64* @VORTEX_ADB_CHNBASE, align 8
  %69 = load i8, i8* %6, align 1
  %70 = zext i8 %69 to i32
  %71 = shl i32 %70, 2
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %68, %72
  %74 = call i32 @hwread(i32 %67, i64 %73)
  %75 = load i32, i32* @ADB_MASK, align 4
  %76 = and i32 %74, %75
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @ADB_MASK, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %64
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i64, i64* @VORTEX_ADB_CHNBASE, align 8
  %85 = load i8, i8* %6, align 1
  %86 = zext i8 %85 to i32
  %87 = shl i32 %86, 2
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %84, %88
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @hwwrite(i32 %83, i64 %89, i32 %92)
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %95 = load i8, i8* %6, align 1
  %96 = call i32 @vortex_adb_en_sr(%struct.TYPE_6__* %94, i8 zeroext %95)
  br label %142

97:                                               ; preds = %64
  br label %98

98:                                               ; preds = %125, %97
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %10, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i64, i64* @VORTEX_ADB_RTBASE, align 8
  %104 = load i32, i32* %9, align 4
  %105 = shl i32 %104, 2
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %103, %106
  %108 = call i32 @hwread(i32 %102, i64 %107)
  %109 = load i32, i32* @ADB_MASK, align 4
  %110 = and i32 %108, %109
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* @ADB_MASK, align 4
  %114 = icmp sgt i32 %111, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %98
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %7, align 8
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @dev_err(i32 %120, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %122)
  br label %142

124:                                              ; preds = %98
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @ADB_MASK, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %98, label %129

129:                                              ; preds = %125
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i64, i64* @VORTEX_ADB_RTBASE, align 8
  %134 = load i32, i32* %10, align 4
  %135 = shl i32 %134, 2
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %133, %136
  %138 = load i32*, i32** %7, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @hwwrite(i32 %132, i64 %137, i32 %140)
  br label %142

142:                                              ; preds = %129, %115, %80, %17
  ret void
}

declare dso_local i32 @hwwrite(i32, i64, i32) #1

declare dso_local i32 @hwread(i32, i64) #1

declare dso_local i32 @vortex_adb_en_sr(%struct.TYPE_6__*, i8 zeroext) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
