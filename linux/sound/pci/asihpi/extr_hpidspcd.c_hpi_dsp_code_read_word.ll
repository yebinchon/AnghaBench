; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpidspcd.c_hpi_dsp_code_read_word.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpidspcd.c_hpi_dsp_code_read_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsp_code = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@HPI_ERROR_DSP_FILE_FORMAT = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @hpi_dsp_code_read_word(%struct.dsp_code* %0, i32* %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.dsp_code*, align 8
  %5 = alloca i32*, align 8
  store %struct.dsp_code* %0, %struct.dsp_code** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.dsp_code*, %struct.dsp_code** %4, align 8
  %7 = getelementptr inbounds %struct.dsp_code, %struct.dsp_code* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, 1
  %10 = load %struct.dsp_code*, %struct.dsp_code** %4, align 8
  %11 = getelementptr inbounds %struct.dsp_code, %struct.dsp_code* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %9, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i16, i16* @HPI_ERROR_DSP_FILE_FORMAT, align 2
  store i16 %15, i16* %3, align 2
  br label %36

16:                                               ; preds = %2
  %17 = load %struct.dsp_code*, %struct.dsp_code** %4, align 8
  %18 = getelementptr inbounds %struct.dsp_code, %struct.dsp_code* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = load %struct.dsp_code*, %struct.dsp_code** %4, align 8
  %26 = getelementptr inbounds %struct.dsp_code, %struct.dsp_code* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.dsp_code*, %struct.dsp_code** %4, align 8
  %33 = getelementptr inbounds %struct.dsp_code, %struct.dsp_code* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  store i16 0, i16* %3, align 2
  br label %36

36:                                               ; preds = %16, %14
  %37 = load i16, i16* %3, align 2
  ret i16 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
