; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_tpacket.c___v1_v2_fill.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_tpacket.c___v1_v2_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@TPACKET_ALIGNMENT = common dso_local global i32 0, align 4
@walk_v1_v2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ring*, i32)* @__v1_v2_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__v1_v2_fill(%struct.ring* %0, i32 %1) #0 {
  %3 = alloca %struct.ring*, align 8
  %4 = alloca i32, align 4
  store %struct.ring* %0, %struct.ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @getpagesize()
  %6 = shl i32 %5, 2
  %7 = load %struct.ring*, %struct.ring** %3, align 8
  %8 = getelementptr inbounds %struct.ring, %struct.ring* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 %6, i32* %9, align 4
  %10 = load i32, i32* @TPACKET_ALIGNMENT, align 4
  %11 = shl i32 %10, 7
  %12 = load %struct.ring*, %struct.ring** %3, align 8
  %13 = getelementptr inbounds %struct.ring, %struct.ring* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.ring*, %struct.ring** %3, align 8
  %17 = getelementptr inbounds %struct.ring, %struct.ring* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 4
  %19 = load %struct.ring*, %struct.ring** %3, align 8
  %20 = getelementptr inbounds %struct.ring, %struct.ring* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ring*, %struct.ring** %3, align 8
  %24 = getelementptr inbounds %struct.ring, %struct.ring* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %22, %26
  %28 = load %struct.ring*, %struct.ring** %3, align 8
  %29 = getelementptr inbounds %struct.ring, %struct.ring* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = mul i32 %27, %31
  %33 = load %struct.ring*, %struct.ring** %3, align 8
  %34 = getelementptr inbounds %struct.ring, %struct.ring* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 4
  %36 = load %struct.ring*, %struct.ring** %3, align 8
  %37 = getelementptr inbounds %struct.ring, %struct.ring* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ring*, %struct.ring** %3, align 8
  %41 = getelementptr inbounds %struct.ring, %struct.ring* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = mul i32 %39, %43
  %45 = load %struct.ring*, %struct.ring** %3, align 8
  %46 = getelementptr inbounds %struct.ring, %struct.ring* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @walk_v1_v2, align 4
  %48 = load %struct.ring*, %struct.ring** %3, align 8
  %49 = getelementptr inbounds %struct.ring, %struct.ring* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ring*, %struct.ring** %3, align 8
  %51 = getelementptr inbounds %struct.ring, %struct.ring* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ring*, %struct.ring** %3, align 8
  %55 = getelementptr inbounds %struct.ring, %struct.ring* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ring*, %struct.ring** %3, align 8
  %57 = getelementptr inbounds %struct.ring, %struct.ring* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ring*, %struct.ring** %3, align 8
  %61 = getelementptr inbounds %struct.ring, %struct.ring* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  ret void
}

declare dso_local i32 @getpagesize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
