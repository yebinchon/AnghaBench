; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota.c_copy_from_if_dqblk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota.c_copy_from_if_dqblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qc_dqblk = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.if_dqblk = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@QIF_BLIMITS = common dso_local global i32 0, align 4
@QC_SPC_SOFT = common dso_local global i32 0, align 4
@QC_SPC_HARD = common dso_local global i32 0, align 4
@QIF_SPACE = common dso_local global i32 0, align 4
@QC_SPACE = common dso_local global i32 0, align 4
@QIF_ILIMITS = common dso_local global i32 0, align 4
@QC_INO_SOFT = common dso_local global i32 0, align 4
@QC_INO_HARD = common dso_local global i32 0, align 4
@QIF_INODES = common dso_local global i32 0, align 4
@QC_INO_COUNT = common dso_local global i32 0, align 4
@QIF_BTIME = common dso_local global i32 0, align 4
@QC_SPC_TIMER = common dso_local global i32 0, align 4
@QIF_ITIME = common dso_local global i32 0, align 4
@QC_INO_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qc_dqblk*, %struct.if_dqblk*)* @copy_from_if_dqblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_from_if_dqblk(%struct.qc_dqblk* %0, %struct.if_dqblk* %1) #0 {
  %3 = alloca %struct.qc_dqblk*, align 8
  %4 = alloca %struct.if_dqblk*, align 8
  store %struct.qc_dqblk* %0, %struct.qc_dqblk** %3, align 8
  store %struct.if_dqblk* %1, %struct.if_dqblk** %4, align 8
  %5 = load %struct.if_dqblk*, %struct.if_dqblk** %4, align 8
  %6 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %5, i32 0, i32 8
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @qbtos(i32 %7)
  %9 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %10 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %9, i32 0, i32 8
  store i8* %8, i8** %10, align 8
  %11 = load %struct.if_dqblk*, %struct.if_dqblk** %4, align 8
  %12 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @qbtos(i32 %13)
  %15 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %16 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %15, i32 0, i32 7
  store i8* %14, i8** %16, align 8
  %17 = load %struct.if_dqblk*, %struct.if_dqblk** %4, align 8
  %18 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %21 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 8
  %22 = load %struct.if_dqblk*, %struct.if_dqblk** %4, align 8
  %23 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %26 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.if_dqblk*, %struct.if_dqblk** %4, align 8
  %28 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %31 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load %struct.if_dqblk*, %struct.if_dqblk** %4, align 8
  %33 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %36 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.if_dqblk*, %struct.if_dqblk** %4, align 8
  %38 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %41 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.if_dqblk*, %struct.if_dqblk** %4, align 8
  %43 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %46 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %48 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.if_dqblk*, %struct.if_dqblk** %4, align 8
  %50 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @QIF_BLIMITS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %2
  %56 = load i32, i32* @QC_SPC_SOFT, align 4
  %57 = load i32, i32* @QC_SPC_HARD, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %60 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %55, %2
  %64 = load %struct.if_dqblk*, %struct.if_dqblk** %4, align 8
  %65 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @QIF_SPACE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load i32, i32* @QC_SPACE, align 4
  %72 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %73 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %63
  %77 = load %struct.if_dqblk*, %struct.if_dqblk** %4, align 8
  %78 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @QIF_ILIMITS, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load i32, i32* @QC_INO_SOFT, align 4
  %85 = load i32, i32* @QC_INO_HARD, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %88 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %83, %76
  %92 = load %struct.if_dqblk*, %struct.if_dqblk** %4, align 8
  %93 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @QIF_INODES, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load i32, i32* @QC_INO_COUNT, align 4
  %100 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %101 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %98, %91
  %105 = load %struct.if_dqblk*, %struct.if_dqblk** %4, align 8
  %106 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @QIF_BTIME, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %104
  %112 = load i32, i32* @QC_SPC_TIMER, align 4
  %113 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %114 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %111, %104
  %118 = load %struct.if_dqblk*, %struct.if_dqblk** %4, align 8
  %119 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @QIF_ITIME, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load i32, i32* @QC_INO_TIMER, align 4
  %126 = load %struct.qc_dqblk*, %struct.qc_dqblk** %3, align 8
  %127 = getelementptr inbounds %struct.qc_dqblk, %struct.qc_dqblk* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %124, %117
  ret void
}

declare dso_local i8* @qbtos(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
