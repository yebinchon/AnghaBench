; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi_dbg.c_fsl_ssi_stats_show.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_ssi_dbg.c_fsl_ssi_stats_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.fsl_ssi_dbg* }
%struct.fsl_ssi_dbg = type { i32 }

@RFRC_EN = common dso_local global i32 0, align 4
@rfrc = common dso_local global i32 0, align 4
@TFRC_EN = common dso_local global i32 0, align 4
@tfrc = common dso_local global i32 0, align 4
@CMDAU_EN = common dso_local global i32 0, align 4
@cmdau = common dso_local global i32 0, align 4
@CMDDU_EN = common dso_local global i32 0, align 4
@cmddu = common dso_local global i32 0, align 4
@RXT_EN = common dso_local global i32 0, align 4
@rxt = common dso_local global i32 0, align 4
@RDR1_EN = common dso_local global i32 0, align 4
@rdr1 = common dso_local global i32 0, align 4
@RDR0_EN = common dso_local global i32 0, align 4
@rdr0 = common dso_local global i32 0, align 4
@TDE1_EN = common dso_local global i32 0, align 4
@tde1 = common dso_local global i32 0, align 4
@TDE0_EN = common dso_local global i32 0, align 4
@tde0 = common dso_local global i32 0, align 4
@ROE1_EN = common dso_local global i32 0, align 4
@roe1 = common dso_local global i32 0, align 4
@ROE0_EN = common dso_local global i32 0, align 4
@roe0 = common dso_local global i32 0, align 4
@TUE1_EN = common dso_local global i32 0, align 4
@tue1 = common dso_local global i32 0, align 4
@TUE0_EN = common dso_local global i32 0, align 4
@tue0 = common dso_local global i32 0, align 4
@TFS_EN = common dso_local global i32 0, align 4
@tfs = common dso_local global i32 0, align 4
@RFS_EN = common dso_local global i32 0, align 4
@rfs = common dso_local global i32 0, align 4
@TLS_EN = common dso_local global i32 0, align 4
@tls = common dso_local global i32 0, align 4
@RLS_EN = common dso_local global i32 0, align 4
@rls = common dso_local global i32 0, align 4
@RFF1_EN = common dso_local global i32 0, align 4
@rff1 = common dso_local global i32 0, align 4
@RFF0_EN = common dso_local global i32 0, align 4
@rff0 = common dso_local global i32 0, align 4
@TFE1_EN = common dso_local global i32 0, align 4
@tfe1 = common dso_local global i32 0, align 4
@TFE0_EN = common dso_local global i32 0, align 4
@tfe0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @fsl_ssi_stats_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_ssi_stats_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fsl_ssi_dbg*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i32 0, i32 0
  %8 = load %struct.fsl_ssi_dbg*, %struct.fsl_ssi_dbg** %7, align 8
  store %struct.fsl_ssi_dbg* %8, %struct.fsl_ssi_dbg** %5, align 8
  %9 = load i32, i32* @RFRC_EN, align 4
  %10 = load i32, i32* @rfrc, align 4
  %11 = call i32 @SIER_SHOW(i32 %9, i32 %10)
  %12 = load i32, i32* @TFRC_EN, align 4
  %13 = load i32, i32* @tfrc, align 4
  %14 = call i32 @SIER_SHOW(i32 %12, i32 %13)
  %15 = load i32, i32* @CMDAU_EN, align 4
  %16 = load i32, i32* @cmdau, align 4
  %17 = call i32 @SIER_SHOW(i32 %15, i32 %16)
  %18 = load i32, i32* @CMDDU_EN, align 4
  %19 = load i32, i32* @cmddu, align 4
  %20 = call i32 @SIER_SHOW(i32 %18, i32 %19)
  %21 = load i32, i32* @RXT_EN, align 4
  %22 = load i32, i32* @rxt, align 4
  %23 = call i32 @SIER_SHOW(i32 %21, i32 %22)
  %24 = load i32, i32* @RDR1_EN, align 4
  %25 = load i32, i32* @rdr1, align 4
  %26 = call i32 @SIER_SHOW(i32 %24, i32 %25)
  %27 = load i32, i32* @RDR0_EN, align 4
  %28 = load i32, i32* @rdr0, align 4
  %29 = call i32 @SIER_SHOW(i32 %27, i32 %28)
  %30 = load i32, i32* @TDE1_EN, align 4
  %31 = load i32, i32* @tde1, align 4
  %32 = call i32 @SIER_SHOW(i32 %30, i32 %31)
  %33 = load i32, i32* @TDE0_EN, align 4
  %34 = load i32, i32* @tde0, align 4
  %35 = call i32 @SIER_SHOW(i32 %33, i32 %34)
  %36 = load i32, i32* @ROE1_EN, align 4
  %37 = load i32, i32* @roe1, align 4
  %38 = call i32 @SIER_SHOW(i32 %36, i32 %37)
  %39 = load i32, i32* @ROE0_EN, align 4
  %40 = load i32, i32* @roe0, align 4
  %41 = call i32 @SIER_SHOW(i32 %39, i32 %40)
  %42 = load i32, i32* @TUE1_EN, align 4
  %43 = load i32, i32* @tue1, align 4
  %44 = call i32 @SIER_SHOW(i32 %42, i32 %43)
  %45 = load i32, i32* @TUE0_EN, align 4
  %46 = load i32, i32* @tue0, align 4
  %47 = call i32 @SIER_SHOW(i32 %45, i32 %46)
  %48 = load i32, i32* @TFS_EN, align 4
  %49 = load i32, i32* @tfs, align 4
  %50 = call i32 @SIER_SHOW(i32 %48, i32 %49)
  %51 = load i32, i32* @RFS_EN, align 4
  %52 = load i32, i32* @rfs, align 4
  %53 = call i32 @SIER_SHOW(i32 %51, i32 %52)
  %54 = load i32, i32* @TLS_EN, align 4
  %55 = load i32, i32* @tls, align 4
  %56 = call i32 @SIER_SHOW(i32 %54, i32 %55)
  %57 = load i32, i32* @RLS_EN, align 4
  %58 = load i32, i32* @rls, align 4
  %59 = call i32 @SIER_SHOW(i32 %57, i32 %58)
  %60 = load i32, i32* @RFF1_EN, align 4
  %61 = load i32, i32* @rff1, align 4
  %62 = call i32 @SIER_SHOW(i32 %60, i32 %61)
  %63 = load i32, i32* @RFF0_EN, align 4
  %64 = load i32, i32* @rff0, align 4
  %65 = call i32 @SIER_SHOW(i32 %63, i32 %64)
  %66 = load i32, i32* @TFE1_EN, align 4
  %67 = load i32, i32* @tfe1, align 4
  %68 = call i32 @SIER_SHOW(i32 %66, i32 %67)
  %69 = load i32, i32* @TFE0_EN, align 4
  %70 = load i32, i32* @tfe0, align 4
  %71 = call i32 @SIER_SHOW(i32 %69, i32 %70)
  ret i32 0
}

declare dso_local i32 @SIER_SHOW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
