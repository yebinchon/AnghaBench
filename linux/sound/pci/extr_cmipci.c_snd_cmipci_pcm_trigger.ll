; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_snd_cmipci_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmipci = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cmipci_pcm = type { i32, i32, i32, i32 }

@CM_CH0_INT_EN = common dso_local global i32 0, align 4
@CM_CHEN0 = common dso_local global i32 0, align 4
@CM_RST_CH0 = common dso_local global i32 0, align 4
@CM_PAUSE0 = common dso_local global i32 0, align 4
@CM_REG_INT_HLDCLR = common dso_local global i32 0, align 4
@CM_REG_FUNCTRL0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"functrl0 = %08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmipci*, %struct.cmipci_pcm*, i32)* @snd_cmipci_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cmipci_pcm_trigger(%struct.cmipci* %0, %struct.cmipci_pcm* %1, i32 %2) #0 {
  %4 = alloca %struct.cmipci*, align 8
  %5 = alloca %struct.cmipci_pcm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cmipci* %0, %struct.cmipci** %4, align 8
  store %struct.cmipci_pcm* %1, %struct.cmipci_pcm** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @CM_CH0_INT_EN, align 4
  %13 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %5, align 8
  %14 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %12, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @CM_CHEN0, align 4
  %18 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %5, align 8
  %19 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %17, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @CM_RST_CH0, align 4
  %23 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %5, align 8
  %24 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %22, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @CM_PAUSE0, align 4
  %28 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %5, align 8
  %29 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %27, %30
  store i32 %31, i32* %10, align 4
  %32 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %33 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %32, i32 0, i32 1
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load i32, i32* %6, align 4
  switch i32 %35, label %123 [
    i32 130, label %36
    i32 129, label %63
    i32 133, label %98
    i32 128, label %98
    i32 132, label %110
    i32 131, label %110
  ]

36:                                               ; preds = %3
  %37 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %5, align 8
  %38 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  %39 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %40 = load i32, i32* @CM_REG_INT_HLDCLR, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @snd_cmipci_set_bit(%struct.cmipci* %39, i32 %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %45 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %49 = load i32, i32* @CM_REG_FUNCTRL0, align 4
  %50 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %51 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @snd_cmipci_write(%struct.cmipci* %48, i32 %49, i32 %52)
  %54 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %55 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %60 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dev_dbg(i32 %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %126

63:                                               ; preds = %3
  %64 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %5, align 8
  %65 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %64, i32 0, i32 1
  store i32 0, i32* %65, align 4
  %66 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %67 = load i32, i32* @CM_REG_INT_HLDCLR, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @snd_cmipci_clear_bit(%struct.cmipci* %66, i32 %67, i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %73 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %77 = load i32, i32* @CM_REG_FUNCTRL0, align 4
  %78 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %79 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @snd_cmipci_write(%struct.cmipci* %76, i32 %77, i32 %82)
  %84 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %85 = load i32, i32* @CM_REG_FUNCTRL0, align 4
  %86 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %87 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  %92 = call i32 @snd_cmipci_write(%struct.cmipci* %84, i32 %85, i32 %91)
  %93 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %5, align 8
  %94 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.cmipci_pcm*, %struct.cmipci_pcm** %5, align 8
  %97 = getelementptr inbounds %struct.cmipci_pcm, %struct.cmipci_pcm* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  br label %126

98:                                               ; preds = %3, %3
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %101 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %105 = load i32, i32* @CM_REG_FUNCTRL0, align 4
  %106 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %107 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @snd_cmipci_write(%struct.cmipci* %104, i32 %105, i32 %108)
  br label %126

110:                                              ; preds = %3, %3
  %111 = load i32, i32* %10, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %114 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %118 = load i32, i32* @CM_REG_FUNCTRL0, align 4
  %119 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %120 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @snd_cmipci_write(%struct.cmipci* %117, i32 %118, i32 %121)
  br label %126

123:                                              ; preds = %3
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %11, align 4
  br label %126

126:                                              ; preds = %123, %110, %98, %63, %36
  %127 = load %struct.cmipci*, %struct.cmipci** %4, align 8
  %128 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %127, i32 0, i32 1
  %129 = call i32 @spin_unlock(i32* %128)
  %130 = load i32, i32* %11, align 4
  ret i32 %130
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_cmipci_set_bit(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @snd_cmipci_write(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @snd_cmipci_clear_bit(%struct.cmipci*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
