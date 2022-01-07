; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_main.c_snd_emu10k1_done.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_main.c_snd_emu10k1_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i64, i64 }

@INTE = common dso_local global i64 0, align 8
@NUM_G = common dso_local global i32 0, align 4
@DCYSUSV = common dso_local global i32 0, align 4
@VTFT = common dso_local global i32 0, align 4
@CVCF = common dso_local global i32 0, align 4
@PTRX = common dso_local global i32 0, align 4
@CPF = common dso_local global i32 0, align 4
@MICBS = common dso_local global i32 0, align 4
@MICBA = common dso_local global i32 0, align 4
@FXBS = common dso_local global i32 0, align 4
@FXBA = common dso_local global i32 0, align 4
@FXWC = common dso_local global i32 0, align 4
@ADCBS = common dso_local global i32 0, align 4
@ADCBS_BUFSIZE_NONE = common dso_local global i32 0, align 4
@ADCBA = common dso_local global i32 0, align 4
@TCBS = common dso_local global i32 0, align 4
@TCBS_BUFFSIZE_16K = common dso_local global i32 0, align 4
@TCB = common dso_local global i32 0, align 4
@A_DBG = common dso_local global i32 0, align 4
@A_DBG_SINGLE_STEP = common dso_local global i32 0, align 4
@DBG = common dso_local global i32 0, align 4
@EMU10K1_DBG_SINGLE_STEP = common dso_local global i32 0, align 4
@CLIEL = common dso_local global i32 0, align 4
@CLIEH = common dso_local global i32 0, align 4
@SOLEL = common dso_local global i32 0, align 4
@SOLEH = common dso_local global i32 0, align 4
@HCFG_LOCKSOUNDCACHE = common dso_local global i32 0, align 4
@HCFG_LOCKTANKCACHE_MASK = common dso_local global i32 0, align 4
@HCFG_MUTEBUTTONENABLE = common dso_local global i32 0, align 4
@HCFG = common dso_local global i64 0, align 8
@PTB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu10k1_done(%struct.snd_emu10k1* %0) #0 {
  %2 = alloca %struct.snd_emu10k1*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %2, align 8
  %4 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %5 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @INTE, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @outl(i32 0, i64 %8)
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %19, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @NUM_G, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %16 = load i32, i32* @DCYSUSV, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %15, i32 %16, i32 %17, i32 0)
  br label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %10

22:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %44, %22
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @NUM_G, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %23
  %28 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %29 = load i32, i32* @VTFT, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %28, i32 %29, i32 %30, i32 0)
  %32 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %33 = load i32, i32* @CVCF, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %32, i32 %33, i32 %34, i32 0)
  %36 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %37 = load i32, i32* @PTRX, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %36, i32 %37, i32 %38, i32 0)
  %40 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %41 = load i32, i32* @CPF, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %40, i32 %41, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %27
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %23

47:                                               ; preds = %23
  %48 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %49 = load i32, i32* @MICBS, align 4
  %50 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %48, i32 %49, i32 0, i32 0)
  %51 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %52 = load i32, i32* @MICBA, align 4
  %53 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %51, i32 %52, i32 0, i32 0)
  %54 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %55 = load i32, i32* @FXBS, align 4
  %56 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %54, i32 %55, i32 0, i32 0)
  %57 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %58 = load i32, i32* @FXBA, align 4
  %59 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %57, i32 %58, i32 0, i32 0)
  %60 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %61 = load i32, i32* @FXWC, align 4
  %62 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %60, i32 %61, i32 0, i32 0)
  %63 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %64 = load i32, i32* @ADCBS, align 4
  %65 = load i32, i32* @ADCBS_BUFSIZE_NONE, align 4
  %66 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %63, i32 %64, i32 0, i32 %65)
  %67 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %68 = load i32, i32* @ADCBA, align 4
  %69 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %67, i32 %68, i32 0, i32 0)
  %70 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %71 = load i32, i32* @TCBS, align 4
  %72 = load i32, i32* @TCBS_BUFFSIZE_16K, align 4
  %73 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %70, i32 %71, i32 0, i32 %72)
  %74 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %75 = load i32, i32* @TCB, align 4
  %76 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %74, i32 %75, i32 0, i32 0)
  %77 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %78 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %47
  %82 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %83 = load i32, i32* @A_DBG, align 4
  %84 = load i32, i32* @A_DBG_SINGLE_STEP, align 4
  %85 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %82, i32 %83, i32 0, i32 %84)
  br label %91

86:                                               ; preds = %47
  %87 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %88 = load i32, i32* @DBG, align 4
  %89 = load i32, i32* @EMU10K1_DBG_SINGLE_STEP, align 4
  %90 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %87, i32 %88, i32 0, i32 %89)
  br label %91

91:                                               ; preds = %86, %81
  %92 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %93 = load i32, i32* @CLIEL, align 4
  %94 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %92, i32 %93, i32 0, i32 0)
  %95 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %96 = load i32, i32* @CLIEH, align 4
  %97 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %95, i32 %96, i32 0, i32 0)
  %98 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %99 = load i32, i32* @SOLEL, align 4
  %100 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %98, i32 %99, i32 0, i32 0)
  %101 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %102 = load i32, i32* @SOLEH, align 4
  %103 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %101, i32 %102, i32 0, i32 0)
  %104 = load i32, i32* @HCFG_LOCKSOUNDCACHE, align 4
  %105 = load i32, i32* @HCFG_LOCKTANKCACHE_MASK, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @HCFG_MUTEBUTTONENABLE, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %110 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @HCFG, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @outl(i32 %108, i64 %113)
  %115 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %2, align 8
  %116 = load i32, i32* @PTB, align 4
  %117 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %115, i32 %116, i32 0, i32 0)
  ret i32 0
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
