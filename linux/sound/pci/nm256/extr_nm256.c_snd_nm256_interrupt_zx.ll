; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/nm256/extr_nm256.c_snd_nm256_interrupt_zx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/nm256/extr_nm256.c_snd_nm256_interrupt_zx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nm256 = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@NM_INT_REG = common dso_local global i32 0, align 4
@NM2_PLAYBACK_INT = common dso_local global i32 0, align 4
@NM2_RECORD_INT = common dso_local global i32 0, align 4
@NM2_MISC_INT_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"NM256: Got misc interrupt #1\0A\00", align 1
@NM2_MISC_INT_2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"NM256: Got misc interrupt #2\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"NM256: Fire in the hole! Unknown status 0x%x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_nm256_interrupt_zx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_nm256_interrupt_zx(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nm256*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.nm256*
  store %struct.nm256* %10, %struct.nm256** %6, align 8
  %11 = load %struct.nm256*, %struct.nm256** %6, align 8
  %12 = load i32, i32* @NM_INT_REG, align 4
  %13 = call i32 @snd_nm256_readl(%struct.nm256* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.nm256*, %struct.nm256** %6, align 8
  %18 = call i32 @snd_nm256_intr_check(%struct.nm256* %17)
  store i32 %18, i32* %3, align 4
  br label %123

19:                                               ; preds = %2
  %20 = load %struct.nm256*, %struct.nm256** %6, align 8
  %21 = getelementptr inbounds %struct.nm256, %struct.nm256* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.nm256*, %struct.nm256** %6, align 8
  %23 = getelementptr inbounds %struct.nm256, %struct.nm256* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @NM2_PLAYBACK_INT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %19
  %30 = load i32, i32* @NM2_PLAYBACK_INT, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load %struct.nm256*, %struct.nm256** %6, align 8
  %35 = load i32, i32* @NM2_PLAYBACK_INT, align 4
  %36 = call i32 @NM2_ACK_INT(%struct.nm256* %34, i32 %35)
  %37 = load %struct.nm256*, %struct.nm256** %6, align 8
  %38 = call i32 @snd_nm256_playback_update(%struct.nm256* %37)
  br label %39

39:                                               ; preds = %29, %19
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @NM2_RECORD_INT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load i32, i32* @NM2_RECORD_INT, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load %struct.nm256*, %struct.nm256** %6, align 8
  %50 = load i32, i32* @NM2_RECORD_INT, align 4
  %51 = call i32 @NM2_ACK_INT(%struct.nm256* %49, i32 %50)
  %52 = load %struct.nm256*, %struct.nm256** %6, align 8
  %53 = call i32 @snd_nm256_capture_update(%struct.nm256* %52)
  br label %54

54:                                               ; preds = %44, %39
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @NM2_MISC_INT_1, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %54
  %60 = load i32, i32* @NM2_MISC_INT_1, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load %struct.nm256*, %struct.nm256** %6, align 8
  %65 = load i32, i32* @NM2_MISC_INT_1, align 4
  %66 = call i32 @NM2_ACK_INT(%struct.nm256* %64, i32 %65)
  %67 = load %struct.nm256*, %struct.nm256** %6, align 8
  %68 = getelementptr inbounds %struct.nm256, %struct.nm256* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, ...) @dev_dbg(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %73 = load %struct.nm256*, %struct.nm256** %6, align 8
  %74 = call i32 @snd_nm256_readb(%struct.nm256* %73, i32 1024)
  store i32 %74, i32* %8, align 4
  %75 = load %struct.nm256*, %struct.nm256** %6, align 8
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, 2
  %78 = call i32 @snd_nm256_writeb(%struct.nm256* %75, i32 1024, i32 %77)
  br label %79

79:                                               ; preds = %59, %54
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @NM2_MISC_INT_2, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %79
  %85 = load i32, i32* @NM2_MISC_INT_2, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %7, align 4
  %89 = load %struct.nm256*, %struct.nm256** %6, align 8
  %90 = load i32, i32* @NM2_MISC_INT_2, align 4
  %91 = call i32 @NM2_ACK_INT(%struct.nm256* %89, i32 %90)
  %92 = load %struct.nm256*, %struct.nm256** %6, align 8
  %93 = getelementptr inbounds %struct.nm256, %struct.nm256* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i32, i8*, ...) @dev_dbg(i32 %96, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %98 = load %struct.nm256*, %struct.nm256** %6, align 8
  %99 = call i32 @snd_nm256_readb(%struct.nm256* %98, i32 1024)
  store i32 %99, i32* %8, align 4
  %100 = load %struct.nm256*, %struct.nm256** %6, align 8
  %101 = load i32, i32* %8, align 4
  %102 = and i32 %101, -3
  %103 = call i32 @snd_nm256_writeb(%struct.nm256* %100, i32 1024, i32 %102)
  br label %104

104:                                              ; preds = %84, %79
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %104
  %108 = load %struct.nm256*, %struct.nm256** %6, align 8
  %109 = getelementptr inbounds %struct.nm256, %struct.nm256* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 (i32, i8*, ...) @dev_dbg(i32 %112, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  %115 = load %struct.nm256*, %struct.nm256** %6, align 8
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @NM2_ACK_INT(%struct.nm256* %115, i32 %116)
  br label %118

118:                                              ; preds = %107, %104
  %119 = load %struct.nm256*, %struct.nm256** %6, align 8
  %120 = getelementptr inbounds %struct.nm256, %struct.nm256* %119, i32 0, i32 0
  %121 = call i32 @spin_unlock(i32* %120)
  %122 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %118, %16
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @snd_nm256_readl(%struct.nm256*, i32) #1

declare dso_local i32 @snd_nm256_intr_check(%struct.nm256*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @NM2_ACK_INT(%struct.nm256*, i32) #1

declare dso_local i32 @snd_nm256_playback_update(%struct.nm256*) #1

declare dso_local i32 @snd_nm256_capture_update(%struct.nm256*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @snd_nm256_readb(%struct.nm256*, i32) #1

declare dso_local i32 @snd_nm256_writeb(%struct.nm256*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
