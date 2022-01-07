; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_route.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADB_MASK = common dso_local global i8 0, align 1
@ADB_SHIFT = common dso_local global i8 0, align 1
@OFFSET_SRCOUT = common dso_local global i8 0, align 1
@NR_SRC = common dso_local global i8 0, align 1
@OFFSET_MIXOUT = common dso_local global i8 0, align 1
@NR_MIXOUT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8, i8, i8)* @vortex_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_route(i32* %0, i32 %1, i8 zeroext %2, i8 zeroext %3, i8 zeroext %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  store i8 %4, i8* %10, align 1
  %12 = load i8, i8* %9, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, i8* @ADB_MASK, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %13, %15
  %17 = load i8, i8* @ADB_SHIFT, align 1
  %18 = zext i8 %17 to i32
  %19 = shl i32 %16, %18
  %20 = load i8, i8* %10, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @ADB_MASK, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %21, %23
  %25 = or i32 %19, %24
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %11, align 1
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %84

29:                                               ; preds = %5
  %30 = load i32*, i32** %6, align 8
  %31 = load i8, i8* %8, align 1
  %32 = call i32 @vortex_adb_addroutes(i32* %30, i8 zeroext %31, i8* %11, i32 1)
  %33 = load i8, i8* %9, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* @OFFSET_SRCOUT, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* @NR_SRC, align 1
  %38 = zext i8 %37 to i32
  %39 = add nsw i32 %36, %38
  %40 = icmp slt i32 %34, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %29
  %42 = load i8, i8* %9, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, i8* @OFFSET_SRCOUT, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp sge i32 %43, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load i32*, i32** %6, align 8
  %49 = load i8, i8* %9, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* @OFFSET_SRCOUT, align 1
  %52 = zext i8 %51 to i32
  %53 = sub nsw i32 %50, %52
  %54 = trunc i32 %53 to i8
  %55 = load i8, i8* %8, align 1
  %56 = call i32 @vortex_src_addWTD(i32* %48, i8 zeroext %54, i8 zeroext %55)
  br label %83

57:                                               ; preds = %41, %29
  %58 = load i8, i8* %9, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8, i8* @OFFSET_MIXOUT, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* @NR_MIXOUT, align 1
  %63 = zext i8 %62 to i32
  %64 = add nsw i32 %61, %63
  %65 = icmp slt i32 %59, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %57
  %67 = load i8, i8* %9, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8, i8* @OFFSET_MIXOUT, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp sge i32 %68, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = load i32*, i32** %6, align 8
  %74 = load i8, i8* %9, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8, i8* @OFFSET_MIXOUT, align 1
  %77 = zext i8 %76 to i32
  %78 = sub nsw i32 %75, %77
  %79 = trunc i32 %78 to i8
  %80 = load i8, i8* %8, align 1
  %81 = call i32 @vortex_mixer_addWTD(i32* %73, i8 zeroext %79, i8 zeroext %80)
  br label %82

82:                                               ; preds = %72, %66, %57
  br label %83

83:                                               ; preds = %82, %47
  br label %141

84:                                               ; preds = %5
  %85 = load i32*, i32** %6, align 8
  %86 = load i8, i8* %8, align 1
  %87 = load i8, i8* %11, align 1
  %88 = load i8, i8* %11, align 1
  %89 = call i32 @vortex_adb_delroutes(i32* %85, i8 zeroext %86, i8 zeroext %87, i8 zeroext %88)
  %90 = load i8, i8* %9, align 1
  %91 = zext i8 %90 to i32
  %92 = load i8, i8* @OFFSET_SRCOUT, align 1
  %93 = zext i8 %92 to i32
  %94 = load i8, i8* @NR_SRC, align 1
  %95 = zext i8 %94 to i32
  %96 = add nsw i32 %93, %95
  %97 = icmp slt i32 %91, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %84
  %99 = load i8, i8* %9, align 1
  %100 = zext i8 %99 to i32
  %101 = load i8, i8* @OFFSET_SRCOUT, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp sge i32 %100, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %98
  %105 = load i32*, i32** %6, align 8
  %106 = load i8, i8* %9, align 1
  %107 = zext i8 %106 to i32
  %108 = load i8, i8* @OFFSET_SRCOUT, align 1
  %109 = zext i8 %108 to i32
  %110 = sub nsw i32 %107, %109
  %111 = trunc i32 %110 to i8
  %112 = load i8, i8* %8, align 1
  %113 = call i32 @vortex_src_delWTD(i32* %105, i8 zeroext %111, i8 zeroext %112)
  br label %140

114:                                              ; preds = %98, %84
  %115 = load i8, i8* %9, align 1
  %116 = zext i8 %115 to i32
  %117 = load i8, i8* @OFFSET_MIXOUT, align 1
  %118 = zext i8 %117 to i32
  %119 = load i8, i8* @NR_MIXOUT, align 1
  %120 = zext i8 %119 to i32
  %121 = add nsw i32 %118, %120
  %122 = icmp slt i32 %116, %121
  br i1 %122, label %123, label %139

123:                                              ; preds = %114
  %124 = load i8, i8* %9, align 1
  %125 = zext i8 %124 to i32
  %126 = load i8, i8* @OFFSET_MIXOUT, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp sge i32 %125, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %123
  %130 = load i32*, i32** %6, align 8
  %131 = load i8, i8* %9, align 1
  %132 = zext i8 %131 to i32
  %133 = load i8, i8* @OFFSET_MIXOUT, align 1
  %134 = zext i8 %133 to i32
  %135 = sub nsw i32 %132, %134
  %136 = trunc i32 %135 to i8
  %137 = load i8, i8* %8, align 1
  %138 = call i32 @vortex_mixer_delWTD(i32* %130, i8 zeroext %136, i8 zeroext %137)
  br label %139

139:                                              ; preds = %129, %123, %114
  br label %140

140:                                              ; preds = %139, %104
  br label %141

141:                                              ; preds = %140, %83
  ret void
}

declare dso_local i32 @vortex_adb_addroutes(i32*, i8 zeroext, i8*, i32) #1

declare dso_local i32 @vortex_src_addWTD(i32*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @vortex_mixer_addWTD(i32*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @vortex_adb_delroutes(i32*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @vortex_src_delWTD(i32*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @vortex_mixer_delWTD(i32*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
