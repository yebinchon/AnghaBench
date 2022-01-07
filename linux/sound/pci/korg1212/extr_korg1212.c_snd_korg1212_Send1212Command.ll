; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/korg1212/extr_korg1212.c_snd_korg1212_Send1212Command.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/korg1212/extr_korg1212.c_snd_korg1212_Send1212Command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_korg1212 = type { i64, i32, i32, i32, i32, i32, i32 }

@K1212_CMDRET_Success = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"K1212_DEBUG: CardUninitialized\0A\00", align 1
@K1212_CMDRET_CardUninitialized = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"K1212_DEBUG: Card <- 0x%08x 0x%08x [%s]\0A\00", align 1
@stateName = common dso_local global i32* null, align 8
@MAX_COMMAND_RETRIES = common dso_local global i64 0, align 8
@K1212_DB_RebootCard = common dso_local global i32 0, align 4
@K1212_DB_BootFromDSPPage4 = common dso_local global i32 0, align 4
@K1212_DB_StartDSPDownload = common dso_local global i32 0, align 4
@COMMAND_ACK_DELAY = common dso_local global i32 0, align 4
@COMMAND_ACK_MASK = common dso_local global i32 0, align 4
@DOORBELL_VAL_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"K1212_DEBUG: Card <- Success\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"K1212_DEBUG: Card <- NoAckFromCard\0A\00", align 1
@K1212_CMDRET_NoAckFromCard = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_korg1212*, i32, i64, i64, i64, i64)* @snd_korg1212_Send1212Command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_korg1212_Send1212Command(%struct.snd_korg1212* %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_korg1212*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_korg1212* %0, %struct.snd_korg1212** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load i32, i32* @K1212_CMDRET_Success, align 4
  store i32 %17, i32* %16, align 4
  %18 = load %struct.snd_korg1212*, %struct.snd_korg1212** %8, align 8
  %19 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %6
  %23 = call i32 @K1212_DEBUG_PRINTK_VERBOSE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @K1212_CMDRET_CardUninitialized, align 4
  store i32 %24, i32* %7, align 4
  br label %125

25:                                               ; preds = %6
  %26 = load i32, i32* %9, align 4
  %27 = load i64, i64* %10, align 8
  %28 = load i32*, i32** @stateName, align 8
  %29 = load %struct.snd_korg1212*, %struct.snd_korg1212** %8, align 8
  %30 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @K1212_DEBUG_PRINTK(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %26, i64 %27, i32 %33)
  store i64 0, i64* %14, align 8
  br label %35

35:                                               ; preds = %106, %25
  %36 = load i64, i64* %14, align 8
  %37 = load i64, i64* @MAX_COMMAND_RETRIES, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %109

39:                                               ; preds = %35
  %40 = load i64, i64* %13, align 8
  %41 = trunc i64 %40 to i32
  %42 = load %struct.snd_korg1212*, %struct.snd_korg1212** %8, align 8
  %43 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @writel(i32 %41, i32 %44)
  %46 = load i64, i64* %12, align 8
  %47 = trunc i64 %46 to i32
  %48 = load %struct.snd_korg1212*, %struct.snd_korg1212** %8, align 8
  %49 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @writel(i32 %47, i32 %50)
  %52 = load i64, i64* %11, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.snd_korg1212*, %struct.snd_korg1212** %8, align 8
  %55 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @writel(i32 %53, i32 %56)
  %58 = load i64, i64* %10, align 8
  %59 = trunc i64 %58 to i32
  %60 = load %struct.snd_korg1212*, %struct.snd_korg1212** %8, align 8
  %61 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @writel(i32 %59, i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.snd_korg1212*, %struct.snd_korg1212** %8, align 8
  %66 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @writel(i32 %64, i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @K1212_DB_RebootCard, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %39
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @K1212_DB_BootFromDSPPage4, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @K1212_DB_StartDSPDownload, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76, %72, %39
  %81 = load i32, i32* @K1212_CMDRET_Success, align 4
  store i32 %81, i32* %16, align 4
  br label %109

82:                                               ; preds = %76
  %83 = load i32, i32* @COMMAND_ACK_DELAY, align 4
  %84 = call i32 @udelay(i32 %83)
  %85 = load %struct.snd_korg1212*, %struct.snd_korg1212** %8, align 8
  %86 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @readl(i32 %87)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* @COMMAND_ACK_MASK, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %82
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* @DOORBELL_VAL_MASK, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @DOORBELL_VAL_MASK, align 4
  %99 = and i32 %97, %98
  %100 = icmp eq i32 %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = call i32 @K1212_DEBUG_PRINTK_VERBOSE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i32, i32* @K1212_CMDRET_Success, align 4
  store i32 %103, i32* %16, align 4
  br label %109

104:                                              ; preds = %93
  br label %105

105:                                              ; preds = %104, %82
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %14, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %14, align 8
  br label %35

109:                                              ; preds = %101, %80, %35
  %110 = load i64, i64* %14, align 8
  %111 = load %struct.snd_korg1212*, %struct.snd_korg1212** %8, align 8
  %112 = getelementptr inbounds %struct.snd_korg1212, %struct.snd_korg1212* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %114, %110
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %112, align 8
  %117 = load i64, i64* %14, align 8
  %118 = load i64, i64* @MAX_COMMAND_RETRIES, align 8
  %119 = icmp sge i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %109
  %121 = call i32 @K1212_DEBUG_PRINTK_VERBOSE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %122 = load i32, i32* @K1212_CMDRET_NoAckFromCard, align 4
  store i32 %122, i32* %16, align 4
  br label %123

123:                                              ; preds = %120, %109
  %124 = load i32, i32* %16, align 4
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %123, %22
  %126 = load i32, i32* %7, align 4
  ret i32 %126
}

declare dso_local i32 @K1212_DEBUG_PRINTK_VERBOSE(i8*) #1

declare dso_local i32 @K1212_DEBUG_PRINTK(i8*, i32, i64, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
