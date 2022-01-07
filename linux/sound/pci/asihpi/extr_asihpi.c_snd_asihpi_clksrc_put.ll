; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_asihpi_clksrc_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_asihpi_clksrc_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32, i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.snd_card_asihpi = type { %struct.clk_cache }
%struct.clk_cache = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }

@HPI_SAMPLECLOCK_SOURCE_AESEBU_INPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_asihpi_clksrc_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_asihpi_clksrc_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_card_asihpi*, align 8
  %6 = alloca %struct.clk_cache*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.snd_card_asihpi*
  store %struct.snd_card_asihpi* %13, %struct.snd_card_asihpi** %5, align 8
  %14 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %5, align 8
  %15 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %14, i32 0, i32 0
  store %struct.clk_cache* %15, %struct.clk_cache** %6, align 8
  %16 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %17 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  store i32 1, i32* %8, align 4
  %19 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %20 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.clk_cache*, %struct.clk_cache** %6, align 8
  %28 = getelementptr inbounds %struct.clk_cache, %struct.clk_cache* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp uge i32 %26, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load %struct.clk_cache*, %struct.clk_cache** %6, align 8
  %33 = getelementptr inbounds %struct.clk_cache, %struct.clk_cache* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %31, %2
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.clk_cache*, %struct.clk_cache** %6, align 8
  %39 = getelementptr inbounds %struct.clk_cache, %struct.clk_cache* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @hpi_sample_clock_set_source(i32 %37, i64 %45)
  %47 = call i32 @hpi_handle_error(i32 %46)
  %48 = load %struct.clk_cache*, %struct.clk_cache** %6, align 8
  %49 = getelementptr inbounds %struct.clk_cache, %struct.clk_cache* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @HPI_SAMPLECLOCK_SOURCE_AESEBU_INPUT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %36
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.clk_cache*, %struct.clk_cache** %6, align 8
  %61 = getelementptr inbounds %struct.clk_cache, %struct.clk_cache* %60, i32 0, i32 1
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @hpi_sample_clock_set_source_index(i32 %59, i32 %67)
  %69 = call i32 @hpi_handle_error(i32 %68)
  br label %70

70:                                               ; preds = %58, %36
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local i32 @hpi_handle_error(i32) #1

declare dso_local i32 @hpi_sample_clock_set_source(i32, i64) #1

declare dso_local i32 @hpi_sample_clock_set_source_index(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
