; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_prioq.c_snd_seq_prioq_cell_in.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_prioq.c_snd_seq_prioq_cell_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_prioq = type { i32, i32, %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell* }
%struct.snd_seq_event_cell = type { %struct.snd_seq_event_cell*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_SEQ_PRIORITY_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"ALSA: seq: cannot find a pointer.. infinite loop?\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_seq_prioq_cell_in(%struct.snd_seq_prioq* %0, %struct.snd_seq_event_cell* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_seq_prioq*, align 8
  %5 = alloca %struct.snd_seq_event_cell*, align 8
  %6 = alloca %struct.snd_seq_event_cell*, align 8
  %7 = alloca %struct.snd_seq_event_cell*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_seq_prioq* %0, %struct.snd_seq_prioq** %4, align 8
  store %struct.snd_seq_event_cell* %1, %struct.snd_seq_event_cell** %5, align 8
  %12 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %13 = icmp ne %struct.snd_seq_prioq* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %16 = icmp ne %struct.snd_seq_event_cell* %15, null
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %14, %2
  %19 = phi i1 [ true, %2 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @snd_BUG_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %150

26:                                               ; preds = %18
  %27 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %28 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SNDRV_SEQ_PRIORITY_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %34 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %33, i32 0, i32 0
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %38 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %37, i32 0, i32 2
  %39 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %38, align 8
  %40 = icmp ne %struct.snd_seq_event_cell* %39, null
  br i1 %40, label %41, label %73

41:                                               ; preds = %26
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %73, label %44

44:                                               ; preds = %41
  %45 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %46 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %45, i32 0, i32 1
  %47 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %48 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %47, i32 0, i32 2
  %49 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %48, align 8
  %50 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %49, i32 0, i32 1
  %51 = call i64 @compare_timestamp(%struct.TYPE_5__* %46, %struct.TYPE_5__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %44
  %54 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %55 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %56 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %55, i32 0, i32 2
  %57 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %56, align 8
  %58 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %57, i32 0, i32 0
  store %struct.snd_seq_event_cell* %54, %struct.snd_seq_event_cell** %58, align 8
  %59 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %60 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %61 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %60, i32 0, i32 2
  store %struct.snd_seq_event_cell* %59, %struct.snd_seq_event_cell** %61, align 8
  %62 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %63 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %62, i32 0, i32 0
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %63, align 8
  %64 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %65 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %69 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %68, i32 0, i32 0
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  store i32 0, i32* %3, align 4
  br label %150

72:                                               ; preds = %44
  br label %73

73:                                               ; preds = %72, %41, %26
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %7, align 8
  %74 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %75 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %74, i32 0, i32 3
  %76 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %75, align 8
  store %struct.snd_seq_event_cell* %76, %struct.snd_seq_event_cell** %6, align 8
  store i32 10000, i32* %9, align 4
  br label %77

77:                                               ; preds = %113, %73
  %78 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %6, align 8
  %79 = icmp ne %struct.snd_seq_event_cell* %78, null
  br i1 %79, label %80, label %114

80:                                               ; preds = %77
  %81 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %82 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %81, i32 0, i32 1
  %83 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %6, align 8
  %84 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %83, i32 0, i32 1
  %85 = call i32 @compare_timestamp_rel(%struct.TYPE_5__* %82, %struct.TYPE_5__* %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  br label %114

89:                                               ; preds = %80
  %90 = load i32, i32* %11, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %114

96:                                               ; preds = %92, %89
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %6, align 8
  store %struct.snd_seq_event_cell* %98, %struct.snd_seq_event_cell** %7, align 8
  %99 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %6, align 8
  %100 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %99, i32 0, i32 0
  %101 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %100, align 8
  store %struct.snd_seq_event_cell* %101, %struct.snd_seq_event_cell** %6, align 8
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %97
  %106 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %107 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %106, i32 0, i32 0
  %108 = load i64, i64* %8, align 8
  %109 = call i32 @spin_unlock_irqrestore(i32* %107, i64 %108)
  %110 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %150

113:                                              ; preds = %97
  br label %77

114:                                              ; preds = %95, %88, %77
  %115 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  %116 = icmp ne %struct.snd_seq_event_cell* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %119 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  %120 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %119, i32 0, i32 0
  store %struct.snd_seq_event_cell* %118, %struct.snd_seq_event_cell** %120, align 8
  br label %121

121:                                              ; preds = %117, %114
  %122 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %6, align 8
  %123 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %124 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %123, i32 0, i32 0
  store %struct.snd_seq_event_cell* %122, %struct.snd_seq_event_cell** %124, align 8
  %125 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %126 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %125, i32 0, i32 3
  %127 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %126, align 8
  %128 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %6, align 8
  %129 = icmp eq %struct.snd_seq_event_cell* %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %121
  %131 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %132 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %133 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %132, i32 0, i32 3
  store %struct.snd_seq_event_cell* %131, %struct.snd_seq_event_cell** %133, align 8
  br label %134

134:                                              ; preds = %130, %121
  %135 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %6, align 8
  %136 = icmp eq %struct.snd_seq_event_cell* %135, null
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %5, align 8
  %139 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %140 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %139, i32 0, i32 2
  store %struct.snd_seq_event_cell* %138, %struct.snd_seq_event_cell** %140, align 8
  br label %141

141:                                              ; preds = %137, %134
  %142 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %143 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  %146 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %147 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %146, i32 0, i32 0
  %148 = load i64, i64* %8, align 8
  %149 = call i32 @spin_unlock_irqrestore(i32* %147, i64 %148)
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %141, %105, %53, %23
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @compare_timestamp(%struct.TYPE_5__*, %struct.TYPE_5__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @compare_timestamp_rel(%struct.TYPE_5__*, %struct.TYPE_5__*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
