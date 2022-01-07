; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp2_parse_sizes.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp2_parse_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_adsp = type { i32 }
%struct.firmware = type { i32* }
%struct.wmfw_adsp2_sizes = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"%s: %d XM, %d YM %d PM, %d ZM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm_adsp*, i8*, i32, %struct.firmware*)* @wm_adsp2_parse_sizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_adsp2_parse_sizes(%struct.wm_adsp* %0, i8* %1, i32 %2, %struct.firmware* %3) #0 {
  %5 = alloca %struct.wm_adsp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca %struct.wmfw_adsp2_sizes*, align 8
  store %struct.wm_adsp* %0, %struct.wm_adsp** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.firmware* %3, %struct.firmware** %8, align 8
  %10 = load %struct.firmware*, %struct.firmware** %8, align 8
  %11 = getelementptr inbounds %struct.firmware, %struct.firmware* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = bitcast i32* %15 to i8*
  %17 = bitcast i8* %16 to %struct.wmfw_adsp2_sizes*
  store %struct.wmfw_adsp2_sizes* %17, %struct.wmfw_adsp2_sizes** %9, align 8
  %18 = load %struct.wm_adsp*, %struct.wm_adsp** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.wmfw_adsp2_sizes*, %struct.wmfw_adsp2_sizes** %9, align 8
  %21 = getelementptr inbounds %struct.wmfw_adsp2_sizes, %struct.wmfw_adsp2_sizes* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le32_to_cpu(i32 %22)
  %24 = load %struct.wmfw_adsp2_sizes*, %struct.wmfw_adsp2_sizes** %9, align 8
  %25 = getelementptr inbounds %struct.wmfw_adsp2_sizes, %struct.wmfw_adsp2_sizes* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le32_to_cpu(i32 %26)
  %28 = load %struct.wmfw_adsp2_sizes*, %struct.wmfw_adsp2_sizes** %9, align 8
  %29 = getelementptr inbounds %struct.wmfw_adsp2_sizes, %struct.wmfw_adsp2_sizes* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  %32 = load %struct.wmfw_adsp2_sizes*, %struct.wmfw_adsp2_sizes** %9, align 8
  %33 = getelementptr inbounds %struct.wmfw_adsp2_sizes, %struct.wmfw_adsp2_sizes* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = call i32 @adsp_dbg(%struct.wm_adsp* %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %23, i32 %27, i32 %31, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = add i64 %38, 16
  %40 = trunc i64 %39 to i32
  ret i32 %40
}

declare dso_local i32 @adsp_dbg(%struct.wm_adsp*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
