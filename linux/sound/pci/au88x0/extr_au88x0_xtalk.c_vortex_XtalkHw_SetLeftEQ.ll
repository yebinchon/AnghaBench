; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_xtalk.c_vortex_XtalkHw_SetLeftEQ.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_xtalk.c_vortex_XtalkHw_SetLeftEQ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i16, i16, i16**)* @vortex_XtalkHw_SetLeftEQ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_XtalkHw_SetLeftEQ(%struct.TYPE_3__* %0, i16 signext %1, i16 signext %2, i16** %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16**, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16** %3, i16*** %8, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %84, %4
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 5
  br i1 %12, label %13, label %87

13:                                               ; preds = %10
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %9, align 4
  %18 = mul nsw i32 %17, 36
  %19 = add nsw i32 147968, %18
  %20 = load i16**, i16*** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i16*, i16** %20, i64 %22
  %24 = load i16*, i16** %23, align 8
  %25 = getelementptr inbounds i16, i16* %24, i64 0
  %26 = load i16, i16* %25, align 2
  %27 = call i32 @hwwrite(i32 %16, i32 %19, i16 signext %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = mul nsw i32 %31, 36
  %33 = add nsw i32 147972, %32
  %34 = load i16**, i16*** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i16*, i16** %34, i64 %36
  %38 = load i16*, i16** %37, align 8
  %39 = getelementptr inbounds i16, i16* %38, i64 1
  %40 = load i16, i16* %39, align 2
  %41 = call i32 @hwwrite(i32 %30, i32 %33, i16 signext %40)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = mul nsw i32 %45, 36
  %47 = add nsw i32 147976, %46
  %48 = load i16**, i16*** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i16*, i16** %48, i64 %50
  %52 = load i16*, i16** %51, align 8
  %53 = getelementptr inbounds i16, i16* %52, i64 2
  %54 = load i16, i16* %53, align 2
  %55 = call i32 @hwwrite(i32 %44, i32 %47, i16 signext %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = mul nsw i32 %59, 36
  %61 = add nsw i32 147980, %60
  %62 = load i16**, i16*** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i16*, i16** %62, i64 %64
  %66 = load i16*, i16** %65, align 8
  %67 = getelementptr inbounds i16, i16* %66, i64 3
  %68 = load i16, i16* %67, align 2
  %69 = call i32 @hwwrite(i32 %58, i32 %61, i16 signext %68)
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %9, align 4
  %74 = mul nsw i32 %73, 36
  %75 = add nsw i32 147984, %74
  %76 = load i16**, i16*** %8, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i16*, i16** %76, i64 %78
  %80 = load i16*, i16** %79, align 8
  %81 = getelementptr inbounds i16, i16* %80, i64 4
  %82 = load i16, i16* %81, align 2
  %83 = call i32 @hwwrite(i32 %72, i32 %75, i16 signext %82)
  br label %84

84:                                               ; preds = %13
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %10

87:                                               ; preds = %10
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i16, i16* %6, align 2
  %92 = sext i16 %91 to i32
  %93 = and i32 %92, 65535
  %94 = trunc i32 %93 to i16
  %95 = call i32 @hwwrite(i32 %90, i32 148792, i16 signext %94)
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i16, i16* %7, align 2
  %100 = sext i16 %99 to i32
  %101 = and i32 %100, 65535
  %102 = trunc i32 %101 to i16
  %103 = call i32 @hwwrite(i32 %98, i32 148796, i16 signext %102)
  ret void
}

declare dso_local i32 @hwwrite(i32, i32, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
