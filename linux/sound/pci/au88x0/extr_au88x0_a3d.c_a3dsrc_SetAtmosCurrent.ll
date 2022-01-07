; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_a3d.c_a3dsrc_SetAtmosCurrent.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_a3d.c_a3dsrc_SetAtmosCurrent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@A3D_B_A12Current = common dso_local global i32 0, align 4
@A3D_B_B01Current = common dso_local global i32 0, align 4
@A3D_B_B2Current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i16, i16, i16, i16, i16)* @a3dsrc_SetAtmosCurrent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a3dsrc_SetAtmosCurrent(%struct.TYPE_5__* %0, i16 signext %1, i16 signext %2, i16 signext %3, i16 signext %4, i16 signext %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i16 %1, i16* %8, align 2
  store i16 %2, i16* %9, align 2
  store i16 %3, i16* %10, align 2
  store i16 %4, i16* %11, align 2
  store i16 %5, i16* %12, align 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %13, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @A3D_B_A12Current, align 4
  %28 = call i32 @a3d_addrB(i32 %23, i32 %26, i32 %27)
  %29 = load i16, i16* %12, align 2
  %30 = sext i16 %29 to i32
  %31 = shl i32 %30, 16
  %32 = load i16, i16* %11, align 2
  %33 = sext i16 %32 to i32
  %34 = or i32 %31, %33
  %35 = trunc i32 %34 to i16
  %36 = call i32 @hwwrite(i32 %20, i32 %28, i16 signext %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @A3D_B_B01Current, align 4
  %47 = call i32 @a3d_addrB(i32 %42, i32 %45, i32 %46)
  %48 = load i16, i16* %9, align 2
  %49 = sext i16 %48 to i32
  %50 = shl i32 %49, 16
  %51 = load i16, i16* %8, align 2
  %52 = sext i16 %51 to i32
  %53 = or i32 %50, %52
  %54 = trunc i32 %53 to i16
  %55 = call i32 @hwwrite(i32 %39, i32 %47, i16 signext %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @A3D_B_B2Current, align 4
  %66 = call i32 @a3d_addrB(i32 %61, i32 %64, i32 %65)
  %67 = load i16, i16* %10, align 2
  %68 = call i32 @hwwrite(i32 %58, i32 %66, i16 signext %67)
  ret void
}

declare dso_local i32 @hwwrite(i32, i32, i16 signext) #1

declare dso_local i32 @a3d_addrB(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
