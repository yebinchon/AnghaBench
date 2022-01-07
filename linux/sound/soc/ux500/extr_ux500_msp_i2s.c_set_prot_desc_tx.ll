; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ux500/extr_ux500_msp_i2s.c_set_prot_desc_tx.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ux500/extr_ux500_msp_i2s.c_set_prot_desc_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ux500_msp = type { i64, i64 }
%struct.msp_protdesc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MSP_TCF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ux500_msp*, %struct.msp_protdesc*, i32)* @set_prot_desc_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_prot_desc_tx(%struct.ux500_msp* %0, %struct.msp_protdesc* %1, i32 %2) #0 {
  %4 = alloca %struct.ux500_msp*, align 8
  %5 = alloca %struct.msp_protdesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ux500_msp* %0, %struct.ux500_msp** %4, align 8
  store %struct.msp_protdesc* %1, %struct.msp_protdesc** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.msp_protdesc*, %struct.msp_protdesc** %5, align 8
  %9 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %8, i32 0, i32 11
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @MSP_P2_ENABLE_BIT(i32 %10)
  %12 = load i32, i32* %7, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %7, align 4
  %14 = load %struct.msp_protdesc*, %struct.msp_protdesc** %5, align 8
  %15 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %14, i32 0, i32 10
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @MSP_P2_START_MODE_BIT(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load %struct.msp_protdesc*, %struct.msp_protdesc** %5, align 8
  %21 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @MSP_P1_FRAME_LEN_BITS(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load %struct.msp_protdesc*, %struct.msp_protdesc** %5, align 8
  %27 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @MSP_P2_FRAME_LEN_BITS(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load %struct.ux500_msp*, %struct.ux500_msp** %4, align 8
  %33 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %3
  %37 = load %struct.msp_protdesc*, %struct.msp_protdesc** %5, align 8
  %38 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @MSP_P1_ELEM_LEN_BITS(i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load %struct.msp_protdesc*, %struct.msp_protdesc** %5, align 8
  %44 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @MSP_P2_ELEM_LEN_BITS(i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %58

49:                                               ; preds = %3
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @MSP_P1_ELEM_LEN_BITS(i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @MSP_P2_ELEM_LEN_BITS(i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %49, %36
  %59 = load %struct.msp_protdesc*, %struct.msp_protdesc** %5, align 8
  %60 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @MSP_DATA_DELAY_BITS(i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load %struct.msp_protdesc*, %struct.msp_protdesc** %5, align 8
  %66 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @MSP_SET_ENDIANNES_BIT(i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load %struct.msp_protdesc*, %struct.msp_protdesc** %5, align 8
  %72 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @MSP_FSYNC_POL(i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load %struct.msp_protdesc*, %struct.msp_protdesc** %5, align 8
  %78 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @MSP_DATA_WORD_SWAP(i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %7, align 4
  %83 = load %struct.msp_protdesc*, %struct.msp_protdesc** %5, align 8
  %84 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @MSP_SET_COMPANDING_MODE(i32 %85)
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %7, align 4
  %89 = load %struct.msp_protdesc*, %struct.msp_protdesc** %5, align 8
  %90 = getelementptr inbounds %struct.msp_protdesc, %struct.msp_protdesc* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @MSP_SET_FSYNC_IGNORE(i32 %91)
  %93 = load i32, i32* %7, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.ux500_msp*, %struct.ux500_msp** %4, align 8
  %97 = getelementptr inbounds %struct.ux500_msp, %struct.ux500_msp* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @MSP_TCF, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writel(i32 %95, i64 %100)
  ret void
}

declare dso_local i32 @MSP_P2_ENABLE_BIT(i32) #1

declare dso_local i32 @MSP_P2_START_MODE_BIT(i32) #1

declare dso_local i32 @MSP_P1_FRAME_LEN_BITS(i32) #1

declare dso_local i32 @MSP_P2_FRAME_LEN_BITS(i32) #1

declare dso_local i32 @MSP_P1_ELEM_LEN_BITS(i32) #1

declare dso_local i32 @MSP_P2_ELEM_LEN_BITS(i32) #1

declare dso_local i32 @MSP_DATA_DELAY_BITS(i32) #1

declare dso_local i32 @MSP_SET_ENDIANNES_BIT(i32) #1

declare dso_local i32 @MSP_FSYNC_POL(i32) #1

declare dso_local i32 @MSP_DATA_WORD_SWAP(i32) #1

declare dso_local i32 @MSP_SET_COMPANDING_MODE(i32) #1

declare dso_local i32 @MSP_SET_FSYNC_IGNORE(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
