; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_hpi_write_block.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_hpi6000.c_hpi_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsp_obj = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsp_obj*, i64, i64*, i64)* @hpi_write_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpi_write_block(%struct.dsp_obj* %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca %struct.dsp_obj*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.dsp_obj* %0, %struct.dsp_obj** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %8, align 8
  %11 = sub nsw i64 %10, 1
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %37

15:                                               ; preds = %4
  %16 = load %struct.dsp_obj*, %struct.dsp_obj** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @hpi_set_address(%struct.dsp_obj* %16, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %37

21:                                               ; preds = %15
  %22 = load %struct.dsp_obj*, %struct.dsp_obj** %5, align 8
  %23 = getelementptr inbounds %struct.dsp_obj, %struct.dsp_obj* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i64*, i64** %7, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @iowrite32_rep(i32 %24, i64* %25, i64 %26)
  %28 = load i64*, i64** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = getelementptr inbounds i64, i64* %30, i64 -1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.dsp_obj*, %struct.dsp_obj** %5, align 8
  %34 = getelementptr inbounds %struct.dsp_obj, %struct.dsp_obj* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @iowrite32(i64 %32, i32 %35)
  br label %37

37:                                               ; preds = %21, %20, %14
  ret void
}

declare dso_local i64 @hpi_set_address(%struct.dsp_obj*, i64) #1

declare dso_local i32 @iowrite32_rep(i32, i64*, i64) #1

declare dso_local i32 @iowrite32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
