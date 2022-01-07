; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_adb_delroutes.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_adb_delroutes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@VORTEX_ADB_CHNBASE = common dso_local global i64 0, align 8
@ADB_MASK = common dso_local global i32 0, align 4
@VORTEX_ADB_RTBASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"vortex_adb_delroutes: route not found! 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8, i32, i32)* @vortex_adb_delroutes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_adb_delroutes(%struct.TYPE_6__* %0, i8 zeroext %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i64, i64* @VORTEX_ADB_CHNBASE, align 8
  %16 = load i8, i8* %6, align 1
  %17 = zext i8 %16 to i32
  %18 = shl i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %15, %19
  %21 = call i32 @hwread(i32 %14, i64 %20)
  %22 = load i32, i32* @ADB_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @ADB_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %62

29:                                               ; preds = %4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* @VORTEX_ADB_RTBASE, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @ADB_MASK, align 4
  %36 = and i32 %34, %35
  %37 = shl i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %33, %38
  %40 = call i32 @hwread(i32 %32, i64 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @ADB_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @ADB_MASK, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %29
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = load i8, i8* %6, align 1
  %49 = call i32 @vortex_adb_dis_sr(%struct.TYPE_6__* %47, i8 zeroext %48)
  br label %50

50:                                               ; preds = %46, %29
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* @VORTEX_ADB_CHNBASE, align 8
  %55 = load i8, i8* %6, align 1
  %56 = zext i8 %55 to i32
  %57 = shl i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %54, %58
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @hwwrite(i32 %53, i64 %59, i32 %60)
  br label %135

62:                                               ; preds = %4
  br label %63

63:                                               ; preds = %93, %62
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %11, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i64, i64* @VORTEX_ADB_RTBASE, align 8
  %69 = load i32, i32* %11, align 4
  %70 = shl i32 %69, 2
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %68, %71
  %73 = call i32 @hwread(i32 %67, i64 %72)
  %74 = load i32, i32* @ADB_MASK, align 4
  %75 = and i32 %73, %74
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* @ADB_MASK, align 4
  %79 = icmp sgt i32 %76, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %63
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @ADB_MASK, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %80, %63
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @dev_err(i32 %89, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %135

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @ADB_MASK, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %94, %97
  br i1 %98, label %63, label %99

99:                                               ; preds = %93
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i64, i64* @VORTEX_ADB_RTBASE, align 8
  %104 = load i32, i32* %9, align 4
  %105 = shl i32 %104, 2
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %103, %106
  %108 = call i32 @hwread(i32 %102, i64 %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @ADB_MASK, align 4
  %111 = and i32 %109, %110
  %112 = load i32, i32* %8, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %99
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i64, i64* @VORTEX_ADB_RTBASE, align 8
  %119 = load i32, i32* %9, align 4
  %120 = shl i32 %119, 2
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %118, %121
  %123 = call i32 @hwread(i32 %117, i64 %122)
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %114, %99
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i64, i64* @VORTEX_ADB_RTBASE, align 8
  %129 = load i32, i32* %11, align 4
  %130 = shl i32 %129, 2
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %128, %131
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @hwwrite(i32 %127, i64 %132, i32 %133)
  br label %135

135:                                              ; preds = %124, %84, %50
  ret void
}

declare dso_local i32 @hwread(i32, i64) #1

declare dso_local i32 @vortex_adb_dis_sr(%struct.TYPE_6__*, i8 zeroext) #1

declare dso_local i32 @hwwrite(i32, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
