; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_load_xilinx_binary.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_load_xilinx_binary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i8*, i32 }

@PCXHR_PLX_CHIPSC = common dso_local global i32 0, align 4
@PCXHR_CHIPSC_GPI_USERI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"error loading first xilinx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PCXHR_CHIPSC_RESET_XILINX = common dso_local global i32 0, align 4
@PCXHR_WAIT_DEFAULT = common dso_local global i32 0, align 4
@PCXHR_CHIPSC_DATA_CLK = common dso_local global i32 0, align 4
@PCXHR_CHIPSC_DATA_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcxhr_load_xilinx_binary(%struct.pcxhr_mgr* %0, %struct.firmware* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcxhr_mgr*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %5, align 8
  store %struct.firmware* %1, %struct.firmware** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %14 = load i32, i32* @PCXHR_PLX_CHIPSC, align 4
  %15 = call i32 @PCXHR_INPL(%struct.pcxhr_mgr* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @PCXHR_CHIPSC_GPI_USERI, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %25 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %110

31:                                               ; preds = %18
  %32 = load i32, i32* @PCXHR_CHIPSC_RESET_XILINX, align 4
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %36 = load i32, i32* @PCXHR_PLX_CHIPSC, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @PCXHR_OUTPL(%struct.pcxhr_mgr* %35, i32 %36, i32 %37)
  %39 = load i32, i32* @PCXHR_WAIT_DEFAULT, align 4
  %40 = call i32 @msleep(i32 %39)
  br label %41

41:                                               ; preds = %31, %3
  %42 = load %struct.firmware*, %struct.firmware** %6, align 8
  %43 = getelementptr inbounds %struct.firmware, %struct.firmware* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %12, align 8
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %92, %41
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.firmware*, %struct.firmware** %6, align 8
  %48 = getelementptr inbounds %struct.firmware, %struct.firmware* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ult i32 %46, %49
  br i1 %50, label %51, label %97

51:                                               ; preds = %45
  %52 = load i8*, i8** %12, align 8
  %53 = load i8, i8* %52, align 1
  store i8 %53, i8* %10, align 1
  store i8 -128, i8* %11, align 1
  br label %54

54:                                               ; preds = %74, %51
  %55 = load i8, i8* %11, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %57, label %90

57:                                               ; preds = %54
  %58 = load i32, i32* @PCXHR_CHIPSC_DATA_CLK, align 4
  %59 = load i32, i32* @PCXHR_CHIPSC_DATA_IN, align 4
  %60 = or i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %9, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load i8, i8* %10, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* %11, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %57
  %71 = load i32, i32* @PCXHR_CHIPSC_DATA_IN, align 4
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %70, %57
  %75 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %76 = load i32, i32* @PCXHR_PLX_CHIPSC, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @PCXHR_OUTPL(%struct.pcxhr_mgr* %75, i32 %76, i32 %77)
  %79 = load i32, i32* @PCXHR_CHIPSC_DATA_CLK, align 4
  %80 = load i32, i32* %9, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %9, align 4
  %82 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %83 = load i32, i32* @PCXHR_PLX_CHIPSC, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @PCXHR_OUTPL(%struct.pcxhr_mgr* %82, i32 %83, i32 %84)
  %86 = load i8, i8* %11, align 1
  %87 = zext i8 %86 to i32
  %88 = ashr i32 %87, 1
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %11, align 1
  br label %54

90:                                               ; preds = %54
  %91 = call i32 (...) @cond_resched()
  br label %92

92:                                               ; preds = %90
  %93 = load i32, i32* %8, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %8, align 4
  %95 = load i8*, i8** %12, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %12, align 8
  br label %45

97:                                               ; preds = %45
  %98 = load i32, i32* @PCXHR_CHIPSC_DATA_CLK, align 4
  %99 = load i32, i32* @PCXHR_CHIPSC_DATA_IN, align 4
  %100 = or i32 %98, %99
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %9, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %9, align 4
  %104 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %105 = load i32, i32* @PCXHR_PLX_CHIPSC, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @PCXHR_OUTPL(%struct.pcxhr_mgr* %104, i32 %105, i32 %106)
  %108 = load i32, i32* @PCXHR_WAIT_DEFAULT, align 4
  %109 = call i32 @msleep(i32 %108)
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %97, %23
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @PCXHR_INPL(%struct.pcxhr_mgr*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PCXHR_OUTPL(%struct.pcxhr_mgr*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
