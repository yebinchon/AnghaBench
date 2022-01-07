; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_detect_spdif_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_detect_spdif_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ali = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ALI_SPDIF_CTRL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"ali_detect_spdif_rate: timeout!\0A\00", align 1
@ALI_SPDIF_CS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ali*)* @snd_ali_detect_spdif_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ali_detect_spdif_rate(%struct.snd_ali* %0) #0 {
  %2 = alloca %struct.snd_ali*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_ali* %0, %struct.snd_ali** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %9 = load i64, i64* @ALI_SPDIF_CTRL, align 8
  %10 = add nsw i64 %9, 1
  %11 = call i32 @ALI_REG(%struct.snd_ali* %8, i64 %10)
  %12 = call i32 @inb(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, 31
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %17 = load i64, i64* @ALI_SPDIF_CTRL, align 8
  %18 = add nsw i64 %17, 1
  %19 = call i32 @ALI_REG(%struct.snd_ali* %16, i64 %18)
  %20 = call i32 @outb(i32 %15, i32 %19)
  br label %21

21:                                               ; preds = %35, %1
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 11
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 14
  br i1 %26, label %27, label %33

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 18
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = icmp sle i32 %31, 50000
  br label %33

33:                                               ; preds = %30, %27, %24
  %34 = phi i1 [ false, %27 ], [ false, %24 ], [ %32, %30 ]
  br i1 %34, label %35, label %47

35:                                               ; preds = %33
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  %38 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %39 = call i32 @snd_ali_delay(%struct.snd_ali* %38, i32 6)
  %40 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %41 = load i64, i64* @ALI_SPDIF_CTRL, align 8
  %42 = add nsw i64 %41, 1
  %43 = call i32 @ALI_REG(%struct.snd_ali* %40, i64 %42)
  %44 = call i32 @inb(i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, 31
  store i32 %46, i32* %6, align 4
  br label %21

47:                                               ; preds = %33
  %48 = load i32, i32* %4, align 4
  %49 = icmp sgt i32 %48, 50000
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %52 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %159

57:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %78, %57
  %59 = load i32, i32* %4, align 4
  %60 = icmp sle i32 %59, 50000
  br i1 %60, label %61, label %81

61:                                               ; preds = %58
  %62 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %63 = call i32 @snd_ali_delay(%struct.snd_ali* %62, i32 6)
  %64 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %65 = load i64, i64* @ALI_SPDIF_CTRL, align 8
  %66 = add nsw i64 %65, 1
  %67 = call i32 @ALI_REG(%struct.snd_ali* %64, i64 %66)
  %68 = call i32 @inb(i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = and i32 %69, 31
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %61
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %6, align 4
  br label %77

76:                                               ; preds = %61
  br label %81

77:                                               ; preds = %74
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %58

81:                                               ; preds = %76, %58
  %82 = load i32, i32* %4, align 4
  %83 = icmp sgt i32 %82, 50000
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %86 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_err(i32 %89, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %159

91:                                               ; preds = %81
  %92 = load i32, i32* %7, align 4
  %93 = icmp sge i32 %92, 11
  br i1 %93, label %94, label %126

94:                                               ; preds = %91
  %95 = load i32, i32* %7, align 4
  %96 = icmp sle i32 %95, 14
  br i1 %96, label %97, label %126

97:                                               ; preds = %94
  %98 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %99 = load i64, i64* @ALI_SPDIF_CTRL, align 8
  %100 = add nsw i64 %99, 2
  %101 = call i32 @ALI_REG(%struct.snd_ali* %98, i64 %100)
  %102 = call i32 @inw(i32 %101)
  store i32 %102, i32* %3, align 4
  %103 = load i32, i32* %3, align 4
  %104 = and i32 %103, 57584
  store i32 %104, i32* %3, align 4
  %105 = load i32, i32* %3, align 4
  %106 = or i32 %105, 2309
  store i32 %106, i32* %3, align 4
  %107 = load i32, i32* %3, align 4
  %108 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %109 = load i64, i64* @ALI_SPDIF_CTRL, align 8
  %110 = add nsw i64 %109, 2
  %111 = call i32 @ALI_REG(%struct.snd_ali* %108, i64 %110)
  %112 = call i32 @outw(i32 %107, i32 %111)
  %113 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %114 = load i64, i64* @ALI_SPDIF_CS, align 8
  %115 = add nsw i64 %114, 3
  %116 = call i32 @ALI_REG(%struct.snd_ali* %113, i64 %115)
  %117 = call i32 @inb(i32 %116)
  %118 = and i32 %117, 240
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = or i32 %119, 2
  %121 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %122 = load i64, i64* @ALI_SPDIF_CS, align 8
  %123 = add nsw i64 %122, 3
  %124 = call i32 @ALI_REG(%struct.snd_ali* %121, i64 %123)
  %125 = call i32 @outb(i32 %120, i32 %124)
  br label %159

126:                                              ; preds = %94, %91
  %127 = load i32, i32* %7, align 4
  %128 = icmp eq i32 %127, 18
  br i1 %128, label %129, label %158

129:                                              ; preds = %126
  %130 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %131 = load i64, i64* @ALI_SPDIF_CTRL, align 8
  %132 = add nsw i64 %131, 2
  %133 = call i32 @ALI_REG(%struct.snd_ali* %130, i64 %132)
  %134 = call i32 @inw(i32 %133)
  store i32 %134, i32* %3, align 4
  %135 = load i32, i32* %3, align 4
  %136 = and i32 %135, 57584
  store i32 %136, i32* %3, align 4
  %137 = load i32, i32* %3, align 4
  %138 = or i32 %137, 3592
  store i32 %138, i32* %3, align 4
  %139 = load i32, i32* %3, align 4
  %140 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %141 = load i64, i64* @ALI_SPDIF_CTRL, align 8
  %142 = add nsw i64 %141, 2
  %143 = call i32 @ALI_REG(%struct.snd_ali* %140, i64 %142)
  %144 = call i32 @outw(i32 %139, i32 %143)
  %145 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %146 = load i64, i64* @ALI_SPDIF_CS, align 8
  %147 = add nsw i64 %146, 3
  %148 = call i32 @ALI_REG(%struct.snd_ali* %145, i64 %147)
  %149 = call i32 @inb(i32 %148)
  %150 = and i32 %149, 240
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %5, align 4
  %152 = or i32 %151, 3
  %153 = load %struct.snd_ali*, %struct.snd_ali** %2, align 8
  %154 = load i64, i64* @ALI_SPDIF_CS, align 8
  %155 = add nsw i64 %154, 3
  %156 = call i32 @ALI_REG(%struct.snd_ali* %153, i64 %155)
  %157 = call i32 @outb(i32 %152, i32 %156)
  br label %158

158:                                              ; preds = %129, %126
  br label %159

159:                                              ; preds = %50, %84, %158, %97
  ret void
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @ALI_REG(%struct.snd_ali*, i64) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @snd_ali_delay(%struct.snd_ali*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @outw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
