; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_tpacket.c___v3_fill.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_tpacket.c___v3_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i64 }

@PACKET_RX_RING = common dso_local global i32 0, align 4
@TP_FT_REQ_FILL_RXHASH = common dso_local global i32 0, align 4
@TPACKET_ALIGNMENT = common dso_local global i32 0, align 4
@walk_v3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ring*, i32, i32)* @__v3_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__v3_fill(%struct.ring* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ring* %0, %struct.ring** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PACKET_RX_RING, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %3
  %11 = load %struct.ring*, %struct.ring** %4, align 8
  %12 = getelementptr inbounds %struct.ring, %struct.ring* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 64, i32* %13, align 8
  %14 = load %struct.ring*, %struct.ring** %4, align 8
  %15 = getelementptr inbounds %struct.ring, %struct.ring* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 6
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @TP_FT_REQ_FILL_RXHASH, align 4
  %18 = load %struct.ring*, %struct.ring** %4, align 8
  %19 = getelementptr inbounds %struct.ring, %struct.ring* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 5
  store i32 %17, i32* %20, align 4
  br label %21

21:                                               ; preds = %10, %3
  %22 = call i32 (...) @getpagesize()
  %23 = shl i32 %22, 2
  %24 = load %struct.ring*, %struct.ring** %4, align 8
  %25 = getelementptr inbounds %struct.ring, %struct.ring* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @TPACKET_ALIGNMENT, align 4
  %28 = shl i32 %27, 7
  %29 = load %struct.ring*, %struct.ring** %4, align 8
  %30 = getelementptr inbounds %struct.ring, %struct.ring* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.ring*, %struct.ring** %4, align 8
  %34 = getelementptr inbounds %struct.ring, %struct.ring* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 4
  %36 = load %struct.ring*, %struct.ring** %4, align 8
  %37 = getelementptr inbounds %struct.ring, %struct.ring* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ring*, %struct.ring** %4, align 8
  %41 = getelementptr inbounds %struct.ring, %struct.ring* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = sdiv i32 %39, %43
  %45 = load %struct.ring*, %struct.ring** %4, align 8
  %46 = getelementptr inbounds %struct.ring, %struct.ring* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = mul i32 %44, %48
  %50 = load %struct.ring*, %struct.ring** %4, align 8
  %51 = getelementptr inbounds %struct.ring, %struct.ring* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  store i32 %49, i32* %52, align 8
  %53 = load %struct.ring*, %struct.ring** %4, align 8
  %54 = getelementptr inbounds %struct.ring, %struct.ring* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ring*, %struct.ring** %4, align 8
  %58 = getelementptr inbounds %struct.ring, %struct.ring* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = mul i32 %56, %60
  %62 = load %struct.ring*, %struct.ring** %4, align 8
  %63 = getelementptr inbounds %struct.ring, %struct.ring* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @walk_v3, align 4
  %65 = load %struct.ring*, %struct.ring** %4, align 8
  %66 = getelementptr inbounds %struct.ring, %struct.ring* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ring*, %struct.ring** %4, align 8
  %68 = getelementptr inbounds %struct.ring, %struct.ring* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ring*, %struct.ring** %4, align 8
  %72 = getelementptr inbounds %struct.ring, %struct.ring* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ring*, %struct.ring** %4, align 8
  %74 = getelementptr inbounds %struct.ring, %struct.ring* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ring*, %struct.ring** %4, align 8
  %78 = getelementptr inbounds %struct.ring, %struct.ring* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  ret void
}

declare dso_local i32 @getpagesize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
