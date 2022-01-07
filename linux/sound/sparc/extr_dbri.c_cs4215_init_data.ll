; ModuleID = '/home/carl/AnghaBench/linux/sound/sparc/extr_dbri.c_cs4215_init_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/sparc/extr_dbri.c_cs4215_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.cs4215 = type { i32*, i32*, i32, i32, i32, i64 }

@CS4215_HE = common dso_local global i32 0, align 4
@CS4215_LE = common dso_local global i32 0, align 4
@CS4215_SE = common dso_local global i32 0, align 4
@CS4215_IS = common dso_local global i32 0, align 4
@CS4215_PIO0 = common dso_local global i32 0, align 4
@CS4215_PIO1 = common dso_local global i32 0, align 4
@CS4215_RSRVD_1 = common dso_local global i32 0, align 4
@CS4215_MLB = common dso_local global i32 0, align 4
@CS4215_DFR_ULAW = common dso_local global i32 0, align 4
@CS4215_FREQ = common dso_local global %struct.TYPE_2__* null, align 8
@CS4215_XCLK = common dso_local global i32 0, align 4
@CS4215_BSEL_128 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs4215*)* @cs4215_init_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4215_init_data(%struct.cs4215* %0) #0 {
  %2 = alloca %struct.cs4215*, align 8
  store %struct.cs4215* %0, %struct.cs4215** %2, align 8
  %3 = call i32 @CS4215_LO(i32 32)
  %4 = load i32, i32* @CS4215_HE, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @CS4215_LE, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.cs4215*, %struct.cs4215** %2, align 8
  %9 = getelementptr inbounds %struct.cs4215, %struct.cs4215* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %7, i32* %11, align 4
  %12 = call i32 @CS4215_RO(i32 32)
  %13 = load i32, i32* @CS4215_SE, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.cs4215*, %struct.cs4215** %2, align 8
  %16 = getelementptr inbounds %struct.cs4215, %struct.cs4215* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %14, i32* %18, align 4
  %19 = call i32 @CS4215_LG(i32 8)
  %20 = load i32, i32* @CS4215_IS, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @CS4215_PIO0, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @CS4215_PIO1, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.cs4215*, %struct.cs4215** %2, align 8
  %27 = getelementptr inbounds %struct.cs4215, %struct.cs4215* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  store i32 %25, i32* %29, align 4
  %30 = call i32 @CS4215_RG(i32 8)
  %31 = call i32 @CS4215_MA(i32 15)
  %32 = or i32 %30, %31
  %33 = load %struct.cs4215*, %struct.cs4215** %2, align 8
  %34 = getelementptr inbounds %struct.cs4215, %struct.cs4215* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* @CS4215_RSRVD_1, align 4
  %38 = load i32, i32* @CS4215_MLB, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.cs4215*, %struct.cs4215** %2, align 8
  %41 = getelementptr inbounds %struct.cs4215, %struct.cs4215* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* @CS4215_DFR_ULAW, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CS4215_FREQ, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %44, %48
  %50 = load %struct.cs4215*, %struct.cs4215** %2, align 8
  %51 = getelementptr inbounds %struct.cs4215, %struct.cs4215* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* @CS4215_XCLK, align 4
  %55 = load i32, i32* @CS4215_BSEL_128, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CS4215_FREQ, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %56, %60
  %62 = load %struct.cs4215*, %struct.cs4215** %2, align 8
  %63 = getelementptr inbounds %struct.cs4215, %struct.cs4215* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  store i32 %61, i32* %65, align 4
  %66 = load %struct.cs4215*, %struct.cs4215** %2, align 8
  %67 = getelementptr inbounds %struct.cs4215, %struct.cs4215* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  store i32 0, i32* %69, align 4
  %70 = load %struct.cs4215*, %struct.cs4215** %2, align 8
  %71 = getelementptr inbounds %struct.cs4215, %struct.cs4215* %70, i32 0, i32 5
  store i64 0, i64* %71, align 8
  %72 = load %struct.cs4215*, %struct.cs4215** %2, align 8
  %73 = getelementptr inbounds %struct.cs4215, %struct.cs4215* %72, i32 0, i32 2
  store i32 255, i32* %73, align 8
  %74 = load %struct.cs4215*, %struct.cs4215** %2, align 8
  %75 = getelementptr inbounds %struct.cs4215, %struct.cs4215* %74, i32 0, i32 3
  store i32 8, i32* %75, align 4
  %76 = load %struct.cs4215*, %struct.cs4215** %2, align 8
  %77 = getelementptr inbounds %struct.cs4215, %struct.cs4215* %76, i32 0, i32 4
  store i32 1, i32* %77, align 8
  ret i32 0
}

declare dso_local i32 @CS4215_LO(i32) #1

declare dso_local i32 @CS4215_RO(i32) #1

declare dso_local i32 @CS4215_LG(i32) #1

declare dso_local i32 @CS4215_RG(i32) #1

declare dso_local i32 @CS4215_MA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
