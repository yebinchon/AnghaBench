; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_a3d.c_a3dsrc_SetA3DPointerReg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_a3d.c_a3dsrc_SetA3DPointerReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }

@A3D_SLICE_Pointers = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64)* @a3dsrc_SetA3DPointerReg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a3dsrc_SetA3DPointerReg(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* @A3D_SLICE_Pointers, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = shl i32 %16, 13
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %13, %18
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @hwwrite(i32 %12, i64 %19, i64 %20)
  ret void
}

declare dso_local i32 @hwwrite(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
