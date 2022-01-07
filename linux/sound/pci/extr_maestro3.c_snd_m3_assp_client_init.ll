; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_assp_client_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_assp_client_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_m3 = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.m3_dma = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@MINISRC_TMP_BUFFER_SIZE = common dso_local global i32 0, align 4
@MINISRC_IN_BUFFER_SIZE = common dso_local global i32 0, align 4
@MINISRC_OUT_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"no memory for %d bytes at ind %d (addr 0x%x)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MEMTYPE_INTERNAL_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_m3*, %struct.m3_dma*, i32)* @snd_m3_assp_client_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_m3_assp_client_init(%struct.snd_m3* %0, %struct.m3_dma* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_m3*, align 8
  %6 = alloca %struct.m3_dma*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_m3* %0, %struct.snd_m3** %5, align 8
  store %struct.m3_dma* %1, %struct.m3_dma** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @MINISRC_TMP_BUFFER_SIZE, align 4
  %12 = sdiv i32 %11, 2
  %13 = load i32, i32* @MINISRC_IN_BUFFER_SIZE, align 4
  %14 = sdiv i32 %13, 2
  %15 = add nsw i32 %12, %14
  %16 = add nsw i32 %15, 1
  %17 = load i32, i32* @MINISRC_OUT_BUFFER_SIZE, align 4
  %18 = sdiv i32 %17, 2
  %19 = add nsw i32 %16, %18
  %20 = add nsw i32 %19, 1
  %21 = mul nsw i32 2, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @ALIGN(i32 %22, i32 256)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = sdiv i32 %24, 2
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 %25, %26
  %28 = add nsw i32 4352, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sdiv i32 %30, 2
  %32 = add nsw i32 %29, %31
  %33 = icmp sge i32 %32, 7168
  br i1 %33, label %34, label %46

34:                                               ; preds = %3
  %35 = load %struct.snd_m3*, %struct.snd_m3** %5, align 8
  %36 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41, i32 %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %73

46:                                               ; preds = %3
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.m3_dma*, %struct.m3_dma** %6, align 8
  %49 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.m3_dma*, %struct.m3_dma** %6, align 8
  %51 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 1024, i32* %52, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.m3_dma*, %struct.m3_dma** %6, align 8
  %55 = getelementptr inbounds %struct.m3_dma, %struct.m3_dma* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* %8, align 4
  %58 = sdiv i32 %57, 2
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %67, %46
  %60 = load i32, i32* %10, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load %struct.snd_m3*, %struct.snd_m3** %5, align 8
  %64 = load i32, i32* @MEMTYPE_INTERNAL_DATA, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @snd_m3_assp_write(%struct.snd_m3* %63, i32 %64, i32 %65, i32 0)
  br label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %10, align 4
  br label %59

72:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %34
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @snd_m3_assp_write(%struct.snd_m3*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
