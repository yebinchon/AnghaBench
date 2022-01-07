; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_threaded_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_threaded_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { i32, i32, i32, i32, i32, %struct.snd_pcxhr**, %struct.TYPE_2__*, i32 }
%struct.snd_pcxhr = type { i32, i32, i32*, i32* }
%struct.TYPE_2__ = type { i32 }

@PCXHR_IRQ_TIMER = common dso_local global i32 0, align 4
@PCXHR_PLX_MBOX4 = common dso_local global i32 0, align 4
@PCXHR_DSP_TIME_MASK = common dso_local global i32 0, align 4
@PCXHR_DSP_TIME_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"WARNING DSP timestamp old(%d) new(%d)\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"-> timestamp wraparound OK: diff=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"-> resynchronize all streams\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcxhr_threaded_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pcxhr_mgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_pcxhr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.pcxhr_mgr*
  store %struct.pcxhr_mgr* %13, %struct.pcxhr_mgr** %5, align 8
  %14 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %15 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %14, i32 0, i32 4
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %18 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PCXHR_IRQ_TIMER, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %164

23:                                               ; preds = %2
  %24 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %25 = load i32, i32* @PCXHR_PLX_MBOX4, align 4
  %26 = call i32 @PCXHR_INPL(%struct.pcxhr_mgr* %24, i32 %25)
  %27 = load i32, i32* @PCXHR_DSP_TIME_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %31 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %29, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %84

36:                                               ; preds = %23
  %37 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %38 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PCXHR_DSP_TIME_INVALID, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %84

42:                                               ; preds = %36
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @PCXHR_DSP_TIME_MASK, align 4
  %45 = add nsw i32 %43, %44
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  %47 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %48 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %47, i32 0, i32 6
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %52 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load i32, i32* %11, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %42
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %61 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 2, %62
  %64 = icmp sle i32 %59, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %67 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %66, i32 0, i32 6
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %11, align 4
  %71 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %10, align 4
  br label %83

73:                                               ; preds = %58, %42
  %74 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %75 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %74, i32 0, i32 6
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %77, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %79 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %80 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %73, %65
  br label %84

84:                                               ; preds = %83, %36, %23
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %87 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %122, %84
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %91 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %125

94:                                               ; preds = %88
  %95 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %96 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %95, i32 0, i32 5
  %97 = load %struct.snd_pcxhr**, %struct.snd_pcxhr*** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.snd_pcxhr*, %struct.snd_pcxhr** %97, i64 %99
  %101 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %100, align 8
  store %struct.snd_pcxhr* %101, %struct.snd_pcxhr** %8, align 8
  store i32 0, i32* %7, align 4
  br label %102

102:                                              ; preds = %118, %94
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %8, align 8
  %105 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %102
  %109 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %110 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %8, align 8
  %111 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @pcxhr_update_timer_pos(%struct.pcxhr_mgr* %109, i32* %115, i32 %116)
  br label %118

118:                                              ; preds = %108
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %102

121:                                              ; preds = %102
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %88

125:                                              ; preds = %88
  store i32 0, i32* %6, align 4
  br label %126

126:                                              ; preds = %160, %125
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %129 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %163

132:                                              ; preds = %126
  %133 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %134 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %133, i32 0, i32 5
  %135 = load %struct.snd_pcxhr**, %struct.snd_pcxhr*** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.snd_pcxhr*, %struct.snd_pcxhr** %135, i64 %137
  %139 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %138, align 8
  store %struct.snd_pcxhr* %139, %struct.snd_pcxhr** %8, align 8
  store i32 0, i32* %7, align 4
  br label %140

140:                                              ; preds = %156, %132
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %8, align 8
  %143 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %159

146:                                              ; preds = %140
  %147 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %148 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %8, align 8
  %149 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @pcxhr_update_timer_pos(%struct.pcxhr_mgr* %147, i32* %153, i32 %154)
  br label %156

156:                                              ; preds = %146
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %7, align 4
  br label %140

159:                                              ; preds = %140
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %6, align 4
  br label %126

163:                                              ; preds = %126
  br label %164

164:                                              ; preds = %163, %2
  %165 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %166 = call i32 @pcxhr_msg_thread(%struct.pcxhr_mgr* %165)
  %167 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %168 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %167, i32 0, i32 4
  %169 = call i32 @mutex_unlock(i32* %168)
  %170 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %170
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @PCXHR_INPL(%struct.pcxhr_mgr*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @pcxhr_update_timer_pos(%struct.pcxhr_mgr*, i32*, i32) #1

declare dso_local i32 @pcxhr_msg_thread(%struct.pcxhr_mgr*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
