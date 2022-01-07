; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_icode_poke.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emufx.c_snd_emu10k1_icode_poke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.snd_emu10k1_fx8010_code = type { i32 }

@A_DBG = common dso_local global i32 0, align 4
@A_DBG_SINGLE_STEP = common dso_local global i32 0, align 4
@DBG = common dso_local global i32 0, align 4
@EMU10K1_DBG_SINGLE_STEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_emu10k1*, %struct.snd_emu10k1_fx8010_code*, i32)* @snd_emu10k1_icode_poke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_icode_poke(%struct.snd_emu10k1* %0, %struct.snd_emu10k1_fx8010_code* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_emu10k1*, align 8
  %5 = alloca %struct.snd_emu10k1_fx8010_code*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %4, align 8
  store %struct.snd_emu10k1_fx8010_code* %1, %struct.snd_emu10k1_fx8010_code** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %9 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %13 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @snd_emu10k1_verify_controls(%struct.snd_emu10k1* %12, %struct.snd_emu10k1_fx8010_code* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %114

19:                                               ; preds = %3
  %20 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %21 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %5, align 8
  %25 = getelementptr inbounds %struct.snd_emu10k1_fx8010_code, %struct.snd_emu10k1_fx8010_code* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strlcpy(i32 %23, i32 %26, i32 4)
  %28 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %29 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %19
  %33 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %34 = load i32, i32* @A_DBG, align 4
  %35 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %36 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @A_DBG_SINGLE_STEP, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %33, i32 %34, i32 0, i32 %40)
  br label %52

42:                                               ; preds = %19
  %43 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %44 = load i32, i32* @DBG, align 4
  %45 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %46 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @EMU10K1_DBG_SINGLE_STEP, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %43, i32 %44, i32 0, i32 %50)
  br label %52

52:                                               ; preds = %42, %32
  %53 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %54 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @snd_emu10k1_del_controls(%struct.snd_emu10k1* %53, %struct.snd_emu10k1_fx8010_code* %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %114

60:                                               ; preds = %52
  %61 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %62 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @snd_emu10k1_gpr_poke(%struct.snd_emu10k1* %61, %struct.snd_emu10k1_fx8010_code* %62, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %114

68:                                               ; preds = %60
  %69 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %70 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @snd_emu10k1_tram_poke(%struct.snd_emu10k1* %69, %struct.snd_emu10k1_fx8010_code* %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %114

76:                                               ; preds = %68
  %77 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %78 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @snd_emu10k1_code_poke(%struct.snd_emu10k1* %77, %struct.snd_emu10k1_fx8010_code* %78, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %114

84:                                               ; preds = %76
  %85 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %86 = load %struct.snd_emu10k1_fx8010_code*, %struct.snd_emu10k1_fx8010_code** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @snd_emu10k1_add_controls(%struct.snd_emu10k1* %85, %struct.snd_emu10k1_fx8010_code* %86, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %114

92:                                               ; preds = %84
  %93 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %94 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %99 = load i32, i32* @A_DBG, align 4
  %100 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %101 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %98, i32 %99, i32 0, i32 %103)
  br label %113

105:                                              ; preds = %92
  %106 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %107 = load i32, i32* @DBG, align 4
  %108 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %109 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %106, i32 %107, i32 0, i32 %111)
  br label %113

113:                                              ; preds = %105, %97
  br label %114

114:                                              ; preds = %113, %91, %83, %75, %67, %59, %18
  %115 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %4, align 8
  %116 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_emu10k1_verify_controls(%struct.snd_emu10k1*, %struct.snd_emu10k1_fx8010_code*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i32, i32, i32) #1

declare dso_local i32 @snd_emu10k1_del_controls(%struct.snd_emu10k1*, %struct.snd_emu10k1_fx8010_code*, i32) #1

declare dso_local i32 @snd_emu10k1_gpr_poke(%struct.snd_emu10k1*, %struct.snd_emu10k1_fx8010_code*, i32) #1

declare dso_local i32 @snd_emu10k1_tram_poke(%struct.snd_emu10k1*, %struct.snd_emu10k1_fx8010_code*, i32) #1

declare dso_local i32 @snd_emu10k1_code_poke(%struct.snd_emu10k1*, %struct.snd_emu10k1_fx8010_code*, i32) #1

declare dso_local i32 @snd_emu10k1_add_controls(%struct.snd_emu10k1*, %struct.snd_emu10k1_fx8010_code*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
