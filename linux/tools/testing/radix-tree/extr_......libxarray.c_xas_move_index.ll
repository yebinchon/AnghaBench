; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libxarray.c_xas_move_index.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_......libxarray.c_xas_move_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@XA_CHUNK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xa_state*, i64)* @xas_move_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xas_move_index(%struct.xa_state* %0, i64 %1) #0 {
  %3 = alloca %struct.xa_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.xa_state* %0, %struct.xa_state** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %7 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @XA_CHUNK_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 %12, %13
  %15 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %16 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = shl i64 %19, %21
  %23 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %24 = getelementptr inbounds %struct.xa_state, %struct.xa_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = zext i32 %25 to i64
  %27 = add i64 %26, %22
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
