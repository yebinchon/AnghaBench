; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_synth.c_vortex_wt_SetReg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_synth.c_vortex_wt_SetReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@NR_WT = common dso_local global i32 0, align 4
@NR_WT_PB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"WT SetReg: bank out of range. reg=0x%x, wt=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"WT SetReg: voice out of range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8, i32, i32)* @vortex_wt_SetReg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vortex_wt_SetReg(%struct.TYPE_5__* %0, i8 zeroext %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8 %1, i8* %7, align 1
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i8, i8* %7, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %26, label %14

14:                                               ; preds = %4
  %15 = load i8, i8* %7, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp sge i32 %16, 7
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i8, i8* %7, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp sle i32 %20, 10
  br i1 %21, label %26, label %22

22:                                               ; preds = %18, %14
  %23 = load i8, i8* %7, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 12
  br i1 %25, label %26, label %42

26:                                               ; preds = %22, %18, %4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @NR_WT, align 4
  %29 = load i32, i32* @NR_WT_PB, align 4
  %30 = sdiv i32 %28, %29
  %31 = icmp sge i32 %27, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8, i8* %7, align 1
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @dev_warn(i32 %37, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8 zeroext %38, i32 %39)
  store i32 0, i32* %5, align 4
  br label %162

41:                                               ; preds = %26
  br label %54

42:                                               ; preds = %22
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @NR_WT, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %162

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %41
  %55 = load i8, i8* %7, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp sgt i32 %56, 12
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %162

59:                                               ; preds = %54
  %60 = load i8, i8* %7, align 1
  %61 = zext i8 %60 to i32
  switch i32 %61, label %154 [
    i32 0, label %62
    i32 1, label %70
    i32 2, label %78
    i32 3, label %86
    i32 4, label %94
    i32 6, label %102
    i32 11, label %110
    i32 5, label %139
    i32 8, label %142
    i32 9, label %145
    i32 10, label %148
    i32 12, label %151
  ]

62:                                               ; preds = %59
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @WT_RUN(i32 %66)
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @hwwrite(i32 %65, i32 %67, i32 %68)
  store i32 12, i32* %5, align 4
  br label %162

70:                                               ; preds = %59
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @WT_PARM(i32 %74, i32 0)
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @hwwrite(i32 %73, i32 %75, i32 %76)
  store i32 12, i32* %5, align 4
  br label %162

78:                                               ; preds = %59
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @WT_PARM(i32 %82, i32 1)
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @hwwrite(i32 %81, i32 %83, i32 %84)
  store i32 12, i32* %5, align 4
  br label %162

86:                                               ; preds = %59
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @WT_PARM(i32 %90, i32 2)
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @hwwrite(i32 %89, i32 %91, i32 %92)
  store i32 12, i32* %5, align 4
  br label %162

94:                                               ; preds = %59
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @WT_PARM(i32 %98, i32 3)
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @hwwrite(i32 %97, i32 %99, i32 %100)
  store i32 12, i32* %5, align 4
  br label %162

102:                                              ; preds = %59
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @WT_MUTE(i32 %106)
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @hwwrite(i32 %105, i32 %107, i32 %108)
  store i32 12, i32* %5, align 4
  br label %162

110:                                              ; preds = %59
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @WT_DELAY(i32 %114, i32 3)
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @hwwrite(i32 %113, i32 %115, i32 %116)
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @WT_DELAY(i32 %121, i32 2)
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @hwwrite(i32 %120, i32 %122, i32 %123)
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @WT_DELAY(i32 %128, i32 1)
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @hwwrite(i32 %127, i32 %129, i32 %130)
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @WT_DELAY(i32 %135, i32 0)
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @hwwrite(i32 %134, i32 %136, i32 %137)
  store i32 12, i32* %5, align 4
  br label %162

139:                                              ; preds = %59
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @WT_SRAMP(i32 %140)
  store i32 %141, i32* %10, align 4
  br label %155

142:                                              ; preds = %59
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @WT_ARAMP(i32 %143)
  store i32 %144, i32* %10, align 4
  br label %155

145:                                              ; preds = %59
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @WT_MRAMP(i32 %146)
  store i32 %147, i32* %10, align 4
  br label %155

148:                                              ; preds = %59
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @WT_CTRL(i32 %149)
  store i32 %150, i32* %10, align 4
  br label %155

151:                                              ; preds = %59
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @WT_DSREG(i32 %152)
  store i32 %153, i32* %10, align 4
  br label %155

154:                                              ; preds = %59
  store i32 0, i32* %5, align 4
  br label %162

155:                                              ; preds = %151, %148, %145, %142, %139
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @hwwrite(i32 %158, i32 %159, i32 %160)
  store i32 1, i32* %5, align 4
  br label %162

162:                                              ; preds = %155, %154, %110, %102, %94, %86, %78, %70, %62, %58, %46, %32
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @dev_warn(i32, i8*, i8 zeroext, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @hwwrite(i32, i32, i32) #1

declare dso_local i32 @WT_RUN(i32) #1

declare dso_local i32 @WT_PARM(i32, i32) #1

declare dso_local i32 @WT_MUTE(i32) #1

declare dso_local i32 @WT_DELAY(i32, i32) #1

declare dso_local i32 @WT_SRAMP(i32) #1

declare dso_local i32 @WT_ARAMP(i32) #1

declare dso_local i32 @WT_MRAMP(i32) #1

declare dso_local i32 @WT_CTRL(i32) #1

declare dso_local i32 @WT_DSREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
