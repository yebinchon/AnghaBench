; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpidspcd.c_hpi_dsp_code_read_block.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpidspcd.c_hpi_dsp_code_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsp_code = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@HPI_ERROR_DSP_FILE_FORMAT = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @hpi_dsp_code_read_block(i64 %0, %struct.dsp_code* %1, i32** %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i64, align 8
  %6 = alloca %struct.dsp_code*, align 8
  %7 = alloca i32**, align 8
  store i64 %0, i64* %5, align 8
  store %struct.dsp_code* %1, %struct.dsp_code** %6, align 8
  store i32** %2, i32*** %7, align 8
  %8 = load %struct.dsp_code*, %struct.dsp_code** %6, align 8
  %9 = getelementptr inbounds %struct.dsp_code, %struct.dsp_code* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = add i64 %10, %11
  %13 = load %struct.dsp_code*, %struct.dsp_code** %6, align 8
  %14 = getelementptr inbounds %struct.dsp_code, %struct.dsp_code* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ugt i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i16, i16* @HPI_ERROR_DSP_FILE_FORMAT, align 2
  store i16 %18, i16* %4, align 2
  br label %38

19:                                               ; preds = %3
  %20 = load %struct.dsp_code*, %struct.dsp_code** %6, align 8
  %21 = getelementptr inbounds %struct.dsp_code, %struct.dsp_code* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  %28 = load %struct.dsp_code*, %struct.dsp_code** %6, align 8
  %29 = getelementptr inbounds %struct.dsp_code, %struct.dsp_code* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32**, i32*** %7, align 8
  store i32* %31, i32** %32, align 8
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.dsp_code*, %struct.dsp_code** %6, align 8
  %35 = getelementptr inbounds %struct.dsp_code, %struct.dsp_code* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, %33
  store i64 %37, i64* %35, align 8
  store i16 0, i16* %4, align 2
  br label %38

38:                                               ; preds = %19, %17
  %39 = load i16, i16* %4, align 2
  ret i16 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
