; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/nm256/extr_nm256.c_snd_nm256_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/nm256/extr_nm256.c_snd_nm256_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nm256 = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@NM_INT_REG = common dso_local global i32 0, align 4
@NM_PLAYBACK_INT = common dso_local global i32 0, align 4
@NM_RECORD_INT = common dso_local global i32 0, align 4
@NM_MISC_INT_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"NM256: Got misc interrupt #1\0A\00", align 1
@NM_MISC_INT_2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"NM256: Got misc interrupt #2\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"NM256: Fire in the hole! Unknown status 0x%x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_nm256_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_nm256_interrupt(i32 %0, i8* %1) #0 {
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
  %13 = call i32 @snd_nm256_readw(%struct.nm256* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.nm256*, %struct.nm256** %6, align 8
  %18 = call i32 @snd_nm256_intr_check(%struct.nm256* %17)
  store i32 %18, i32* %3, align 4
  br label %126

19:                                               ; preds = %2
  %20 = load %struct.nm256*, %struct.nm256** %6, align 8
  %21 = getelementptr inbounds %struct.nm256, %struct.nm256* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.nm256*, %struct.nm256** %6, align 8
  %23 = getelementptr inbounds %struct.nm256, %struct.nm256* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @NM_PLAYBACK_INT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %19
  %30 = load i32, i32* @NM_PLAYBACK_INT, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load %struct.nm256*, %struct.nm256** %6, align 8
  %35 = load i32, i32* @NM_PLAYBACK_INT, align 4
  %36 = call i32 @NM_ACK_INT(%struct.nm256* %34, i32 %35)
  %37 = load %struct.nm256*, %struct.nm256** %6, align 8
  %38 = call i32 @snd_nm256_playback_update(%struct.nm256* %37)
  br label %39

39:                                               ; preds = %29, %19
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @NM_RECORD_INT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load i32, i32* @NM_RECORD_INT, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load %struct.nm256*, %struct.nm256** %6, align 8
  %50 = load i32, i32* @NM_RECORD_INT, align 4
  %51 = call i32 @NM_ACK_INT(%struct.nm256* %49, i32 %50)
  %52 = load %struct.nm256*, %struct.nm256** %6, align 8
  %53 = call i32 @snd_nm256_capture_update(%struct.nm256* %52)
  br label %54

54:                                               ; preds = %44, %39
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @NM_MISC_INT_1, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %82

59:                                               ; preds = %54
  %60 = load i32, i32* @NM_MISC_INT_1, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load %struct.nm256*, %struct.nm256** %6, align 8
  %65 = load i32, i32* @NM_MISC_INT_1, align 4
  %66 = call i32 @NM_ACK_INT(%struct.nm256* %64, i32 %65)
  %67 = load %struct.nm256*, %struct.nm256** %6, align 8
  %68 = getelementptr inbounds %struct.nm256, %struct.nm256* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, ...) @dev_dbg(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %73 = load %struct.nm256*, %struct.nm256** %6, align 8
  %74 = load i32, i32* @NM_INT_REG, align 4
  %75 = call i32 @snd_nm256_writew(%struct.nm256* %73, i32 %74, i32 32768)
  %76 = load %struct.nm256*, %struct.nm256** %6, align 8
  %77 = call i32 @snd_nm256_readb(%struct.nm256* %76, i32 1024)
  store i32 %77, i32* %8, align 4
  %78 = load %struct.nm256*, %struct.nm256** %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, 2
  %81 = call i32 @snd_nm256_writeb(%struct.nm256* %78, i32 1024, i32 %80)
  br label %82

82:                                               ; preds = %59, %54
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @NM_MISC_INT_2, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %107

87:                                               ; preds = %82
  %88 = load i32, i32* @NM_MISC_INT_2, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %7, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %7, align 4
  %92 = load %struct.nm256*, %struct.nm256** %6, align 8
  %93 = load i32, i32* @NM_MISC_INT_2, align 4
  %94 = call i32 @NM_ACK_INT(%struct.nm256* %92, i32 %93)
  %95 = load %struct.nm256*, %struct.nm256** %6, align 8
  %96 = getelementptr inbounds %struct.nm256, %struct.nm256* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32, i8*, ...) @dev_dbg(i32 %99, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %101 = load %struct.nm256*, %struct.nm256** %6, align 8
  %102 = call i32 @snd_nm256_readb(%struct.nm256* %101, i32 1024)
  store i32 %102, i32* %8, align 4
  %103 = load %struct.nm256*, %struct.nm256** %6, align 8
  %104 = load i32, i32* %8, align 4
  %105 = and i32 %104, -3
  %106 = call i32 @snd_nm256_writeb(%struct.nm256* %103, i32 1024, i32 %105)
  br label %107

107:                                              ; preds = %87, %82
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %107
  %111 = load %struct.nm256*, %struct.nm256** %6, align 8
  %112 = getelementptr inbounds %struct.nm256, %struct.nm256* %111, i32 0, i32 1
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i32 (i32, i8*, ...) @dev_dbg(i32 %115, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %116)
  %118 = load %struct.nm256*, %struct.nm256** %6, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @NM_ACK_INT(%struct.nm256* %118, i32 %119)
  br label %121

121:                                              ; preds = %110, %107
  %122 = load %struct.nm256*, %struct.nm256** %6, align 8
  %123 = getelementptr inbounds %struct.nm256, %struct.nm256* %122, i32 0, i32 0
  %124 = call i32 @spin_unlock(i32* %123)
  %125 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %121, %16
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @snd_nm256_readw(%struct.nm256*, i32) #1

declare dso_local i32 @snd_nm256_intr_check(%struct.nm256*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @NM_ACK_INT(%struct.nm256*, i32) #1

declare dso_local i32 @snd_nm256_playback_update(%struct.nm256*) #1

declare dso_local i32 @snd_nm256_capture_update(%struct.nm256*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @snd_nm256_writew(%struct.nm256*, i32, i32) #1

declare dso_local i32 @snd_nm256_readb(%struct.nm256*, i32) #1

declare dso_local i32 @snd_nm256_writeb(%struct.nm256*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
