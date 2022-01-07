; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_query_chip.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_cmipci.c_query_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmipci = type { i32, i32, i32, i32, i32, i32, i32 }

@CM_REG_INT_HLDCLR = common dso_local global i32 0, align 4
@CM_CHIP_MASK2 = common dso_local global i32 0, align 4
@CM_REG_CHFORMAT = common dso_local global i32 0, align 4
@CM_CHIP_MASK1 = common dso_local global i32 0, align 4
@CM_CHIP_039 = common dso_local global i32 0, align 4
@CM_CHIP_039_6CH = common dso_local global i32 0, align 4
@CM_CHIP_8768 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmipci*)* @query_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @query_chip(%struct.cmipci* %0) #0 {
  %2 = alloca %struct.cmipci*, align 8
  %3 = alloca i32, align 4
  store %struct.cmipci* %0, %struct.cmipci** %2, align 8
  %4 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %5 = load i32, i32* @CM_REG_INT_HLDCLR, align 4
  %6 = call i32 @snd_cmipci_read(%struct.cmipci* %4, i32 %5)
  %7 = load i32, i32* @CM_CHIP_MASK2, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %45, label %11

11:                                               ; preds = %1
  %12 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %13 = load i32, i32* @CM_REG_CHFORMAT, align 4
  %14 = call i32 @snd_cmipci_read(%struct.cmipci* %12, i32 %13)
  %15 = load i32, i32* @CM_CHIP_MASK1, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  switch i32 %17, label %37 [
    i32 0, label %18
    i32 128, label %32
  ]

18:                                               ; preds = %11
  %19 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %20 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %19, i32 0, i32 0
  store i32 33, i32* %20, align 4
  %21 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %22 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %27 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  br label %31

28:                                               ; preds = %18
  %29 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %30 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %29, i32 0, i32 2
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %25
  br label %42

32:                                               ; preds = %11
  %33 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %34 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %33, i32 0, i32 0
  store i32 37, i32* %34, align 4
  %35 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %36 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %35, i32 0, i32 2
  store i32 1, i32* %36, align 4
  br label %42

37:                                               ; preds = %11
  %38 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %39 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %38, i32 0, i32 0
  store i32 39, i32* %39, align 4
  %40 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %41 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %40, i32 0, i32 2
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %32, %31
  %43 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %44 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %43, i32 0, i32 3
  store i32 2, i32* %44, align 4
  br label %89

45:                                               ; preds = %1
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @CM_CHIP_039, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %45
  %51 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %52 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %51, i32 0, i32 0
  store i32 39, i32* %52, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @CM_CHIP_039_6CH, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %59 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %58, i32 0, i32 3
  store i32 6, i32* %59, align 4
  br label %63

60:                                               ; preds = %50
  %61 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %62 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %61, i32 0, i32 3
  store i32 4, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %57
  br label %84

64:                                               ; preds = %45
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @CM_CHIP_8768, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %71 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %70, i32 0, i32 0
  store i32 68, i32* %71, align 4
  %72 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %73 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %72, i32 0, i32 3
  store i32 8, i32* %73, align 4
  %74 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %75 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %74, i32 0, i32 4
  store i32 1, i32* %75, align 4
  br label %83

76:                                               ; preds = %64
  %77 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %78 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %77, i32 0, i32 0
  store i32 55, i32* %78, align 4
  %79 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %80 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %79, i32 0, i32 3
  store i32 6, i32* %80, align 4
  %81 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %82 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %81, i32 0, i32 4
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %76, %69
  br label %84

84:                                               ; preds = %83, %63
  %85 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %86 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %85, i32 0, i32 2
  store i32 1, i32* %86, align 4
  %87 = load %struct.cmipci*, %struct.cmipci** %2, align 8
  %88 = getelementptr inbounds %struct.cmipci, %struct.cmipci* %87, i32 0, i32 5
  store i32 1, i32* %88, align 4
  br label %89

89:                                               ; preds = %84, %42
  ret void
}

declare dso_local i32 @snd_cmipci_read(%struct.cmipci*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
