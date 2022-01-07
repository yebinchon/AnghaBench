; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_generate_cip_header.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_generate_cip_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CIP_DBS_SHIFT = common dso_local global i32 0, align 4
@CIP_SPH_SHIFT = common dso_local global i32 0, align 4
@CIP_SPH_MASK = common dso_local global i32 0, align 4
@CIP_EOH = common dso_local global i32 0, align 4
@CIP_FMT_SHIFT = common dso_local global i32 0, align 4
@CIP_FMT_MASK = common dso_local global i32 0, align 4
@CIP_FDF_SHIFT = common dso_local global i32 0, align 4
@CIP_FDF_MASK = common dso_local global i32 0, align 4
@CIP_SYT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdtp_stream*, i32*, i32, i32)* @generate_cip_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_cip_header(%struct.amdtp_stream* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdtp_stream*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %10 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @READ_ONCE(i32 %11)
  %13 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %14 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CIP_DBS_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = or i32 %12, %17
  %19 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %20 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CIP_SPH_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32, i32* @CIP_SPH_MASK, align 4
  %25 = and i32 %23, %24
  %26 = or i32 %18, %25
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @cpu_to_be32(i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @CIP_EOH, align 4
  %33 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %34 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CIP_FMT_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* @CIP_FMT_MASK, align 4
  %39 = and i32 %37, %38
  %40 = or i32 %32, %39
  %41 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %42 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CIP_FDF_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* @CIP_FDF_MASK, align 4
  %49 = and i32 %47, %48
  %50 = or i32 %40, %49
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @CIP_SYT_MASK, align 4
  %53 = and i32 %51, %52
  %54 = or i32 %50, %53
  %55 = call i32 @cpu_to_be32(i32 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 %55, i32* %57, align 4
  ret void
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
