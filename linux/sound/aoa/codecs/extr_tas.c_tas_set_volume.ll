; ModuleID = '/home/carl/AnghaBench/linux/sound/aoa/codecs/extr_tas.c_tas_set_volume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/aoa/codecs/extr_tas.c_tas_set_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tas = type { i32, i32, i64, i64 }

@tas_gaintable = common dso_local global i32* null, align 8
@TAS_REG_VOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tas*)* @tas_set_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tas_set_volume(%struct.tas* %0) #0 {
  %2 = alloca %struct.tas*, align 8
  %3 = alloca [6 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tas* %0, %struct.tas** %2, align 8
  %7 = load %struct.tas*, %struct.tas** %2, align 8
  %8 = getelementptr inbounds %struct.tas, %struct.tas* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.tas*, %struct.tas** %2, align 8
  %11 = getelementptr inbounds %struct.tas, %struct.tas* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 177
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 177, i32* %5, align 4
  br label %16

16:                                               ; preds = %15, %1
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 177
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 177, i32* %6, align 4
  br label %20

20:                                               ; preds = %19, %16
  %21 = load %struct.tas*, %struct.tas** %2, align 8
  %22 = getelementptr inbounds %struct.tas, %struct.tas* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = load %struct.tas*, %struct.tas** %2, align 8
  %28 = getelementptr inbounds %struct.tas, %struct.tas* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32*, i32** @tas_gaintable, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = ashr i32 %38, 20
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  store i32 %39, i32* %40, align 16
  %41 = load i32, i32* %4, align 4
  %42 = ashr i32 %41, 12
  %43 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 1
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %4, align 4
  %45 = ashr i32 %44, 4
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 2
  store i32 %45, i32* %46, align 8
  %47 = load i32*, i32** @tas_gaintable, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = ashr i32 %52, 20
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 3
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %4, align 4
  %56 = ashr i32 %55, 12
  %57 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 4
  store i32 %56, i32* %57, align 16
  %58 = load i32, i32* %4, align 4
  %59 = ashr i32 %58, 4
  %60 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 5
  store i32 %59, i32* %60, align 4
  %61 = load %struct.tas*, %struct.tas** %2, align 8
  %62 = load i32, i32* @TAS_REG_VOL, align 4
  %63 = getelementptr inbounds [6 x i32], [6 x i32]* %3, i64 0, i64 0
  %64 = call i32 @tas_write_reg(%struct.tas* %61, i32 %62, i32 6, i32* %63)
  ret void
}

declare dso_local i32 @tas_write_reg(%struct.tas*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
