; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_alloc_sr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm5100.c_wm5100_alloc_sr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.wm5100_priv = type { i32, i32, i32* }

@wm5100_sr_code = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Unsupported sample rate: %dHz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@wm5100_sr_regs = common dso_local global i32* null, align 8
@WM5100_SAMPLE_RATE_1_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"SR %dHz, slot %d, ref %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"All SR slots already in use\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Allocating SR slot %d for %dHz\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"SR %dHz incompatible with %dHz SYSCLK and %dHz ASYNCCLK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @wm5100_alloc_sr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm5100_alloc_sr(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm5100_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %11 = call %struct.wm5100_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.wm5100_priv* %11, %struct.wm5100_priv** %6, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %27, %2
  %13 = load i32, i32* %9, align 4
  %14 = load i32*, i32** @wm5100_sr_code, align 8
  %15 = call i32 @ARRAY_SIZE(i32* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load i32*, i32** @wm5100_sr_code, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %30

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  br label %12

30:                                               ; preds = %25, %12
  %31 = load i32, i32* %9, align 4
  %32 = load i32*, i32** @wm5100_sr_code, align 8
  %33 = call i32 @ARRAY_SIZE(i32* %32)
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %37 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (i32, i8*, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %165

43:                                               ; preds = %30
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %7, align 4
  %45 = load %struct.wm5100_priv*, %struct.wm5100_priv** %6, align 8
  %46 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = srem i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %151

51:                                               ; preds = %43
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %85, %51
  %53 = load i32, i32* %9, align 4
  %54 = load i32*, i32** @wm5100_sr_regs, align 8
  %55 = call i32 @ARRAY_SIZE(i32* %54)
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %88

57:                                               ; preds = %52
  %58 = load %struct.wm5100_priv*, %struct.wm5100_priv** %6, align 8
  %59 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %8, align 4
  br label %85

71:                                               ; preds = %66, %57
  %72 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %73 = load i32*, i32** @wm5100_sr_regs, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %72, i32 %77)
  %79 = load i32, i32* @WM5100_SAMPLE_RATE_1_MASK, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  br label %88

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84, %69
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %52

88:                                               ; preds = %83, %52
  %89 = load i32, i32* %9, align 4
  %90 = load i32*, i32** @wm5100_sr_regs, align 8
  %91 = call i32 @ARRAY_SIZE(i32* %90)
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %116

93:                                               ; preds = %88
  %94 = load %struct.wm5100_priv*, %struct.wm5100_priv** %6, align 8
  %95 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %103 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.wm5100_priv*, %struct.wm5100_priv** %6, align 8
  %108 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %105, i32 %106, i32 %113)
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %3, align 4
  br label %165

116:                                              ; preds = %88
  %117 = load i32, i32* %8, align 4
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %121 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i32, i8*, ...) @dev_err(i32 %122, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %124 = load i32, i32* @EBUSY, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %165

126:                                              ; preds = %116
  %127 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %128 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %129, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %130, i32 %131)
  %133 = load %struct.wm5100_priv*, %struct.wm5100_priv** %6, align 8
  %134 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  %141 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %142 = load i32*, i32** @wm5100_sr_regs, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @WM5100_SAMPLE_RATE_1_MASK, align 4
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %141, i32 %146, i32 %147, i32 %148)
  %150 = load i32, i32* %8, align 4
  store i32 %150, i32* %3, align 4
  br label %165

151:                                              ; preds = %43
  %152 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %153 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %5, align 4
  %156 = load %struct.wm5100_priv*, %struct.wm5100_priv** %6, align 8
  %157 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.wm5100_priv*, %struct.wm5100_priv** %6, align 8
  %160 = getelementptr inbounds %struct.wm5100_priv, %struct.wm5100_priv* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i32, i8*, ...) @dev_err(i32 %154, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %155, i32 %158, i32 %161)
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %151, %126, %119, %93, %35
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local %struct.wm5100_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
