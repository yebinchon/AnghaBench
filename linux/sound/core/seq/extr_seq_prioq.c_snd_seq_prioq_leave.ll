; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_prioq.c_snd_seq_prioq_leave.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_prioq.c_snd_seq_prioq_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_prioq = type { i32, i32, %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell* }
%struct.snd_seq_event_cell = type { %struct.snd_seq_event_cell*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_seq_prioq_leave(%struct.snd_seq_prioq* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_seq_prioq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_seq_event_cell*, align 8
  %8 = alloca %struct.snd_seq_event_cell*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.snd_seq_event_cell*, align 8
  %11 = alloca %struct.snd_seq_event_cell*, align 8
  %12 = alloca %struct.snd_seq_event_cell*, align 8
  %13 = alloca %struct.snd_seq_event_cell*, align 8
  store %struct.snd_seq_prioq* %0, %struct.snd_seq_prioq** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %10, align 8
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %11, align 8
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %12, align 8
  %14 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %15 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %14, i32 0, i32 0
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %19 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %18, i32 0, i32 3
  %20 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %19, align 8
  store %struct.snd_seq_event_cell* %20, %struct.snd_seq_event_cell** %7, align 8
  br label %21

21:                                               ; preds = %82, %3
  %22 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  %23 = icmp ne %struct.snd_seq_event_cell* %22, null
  br i1 %23, label %24, label %84

24:                                               ; preds = %21
  %25 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  %26 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %25, i32 0, i32 0
  %27 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %26, align 8
  store %struct.snd_seq_event_cell* %27, %struct.snd_seq_event_cell** %8, align 8
  %28 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @prioq_match(%struct.snd_seq_event_cell* %28, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %80

33:                                               ; preds = %24
  %34 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  %35 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %36 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %35, i32 0, i32 3
  %37 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %36, align 8
  %38 = icmp eq %struct.snd_seq_event_cell* %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  %41 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %40, i32 0, i32 0
  %42 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %41, align 8
  %43 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %44 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %43, i32 0, i32 3
  store %struct.snd_seq_event_cell* %42, %struct.snd_seq_event_cell** %44, align 8
  br label %51

45:                                               ; preds = %33
  %46 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  %47 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %46, i32 0, i32 0
  %48 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %47, align 8
  %49 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %10, align 8
  %50 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %49, i32 0, i32 0
  store %struct.snd_seq_event_cell* %48, %struct.snd_seq_event_cell** %50, align 8
  br label %51

51:                                               ; preds = %45, %39
  %52 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  %53 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %54 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %53, i32 0, i32 2
  %55 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %54, align 8
  %56 = icmp eq %struct.snd_seq_event_cell* %52, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  %59 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %58, i32 0, i32 0
  %60 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %59, align 8
  %61 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %62 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %61, i32 0, i32 2
  store %struct.snd_seq_event_cell* %60, %struct.snd_seq_event_cell** %62, align 8
  br label %63

63:                                               ; preds = %57, %51
  %64 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %65 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  %69 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %68, i32 0, i32 0
  store %struct.snd_seq_event_cell* null, %struct.snd_seq_event_cell** %69, align 8
  %70 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %11, align 8
  %71 = icmp eq %struct.snd_seq_event_cell* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  store %struct.snd_seq_event_cell* %73, %struct.snd_seq_event_cell** %11, align 8
  br label %78

74:                                               ; preds = %63
  %75 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  %76 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %12, align 8
  %77 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %76, i32 0, i32 0
  store %struct.snd_seq_event_cell* %75, %struct.snd_seq_event_cell** %77, align 8
  br label %78

78:                                               ; preds = %74, %72
  %79 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  store %struct.snd_seq_event_cell* %79, %struct.snd_seq_event_cell** %12, align 8
  br label %82

80:                                               ; preds = %24
  %81 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %7, align 8
  store %struct.snd_seq_event_cell* %81, %struct.snd_seq_event_cell** %10, align 8
  br label %82

82:                                               ; preds = %80, %78
  %83 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %8, align 8
  store %struct.snd_seq_event_cell* %83, %struct.snd_seq_event_cell** %7, align 8
  br label %21

84:                                               ; preds = %21
  %85 = load %struct.snd_seq_prioq*, %struct.snd_seq_prioq** %4, align 8
  %86 = getelementptr inbounds %struct.snd_seq_prioq, %struct.snd_seq_prioq* %85, i32 0, i32 0
  %87 = load i64, i64* %9, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  br label %89

89:                                               ; preds = %92, %84
  %90 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %11, align 8
  %91 = icmp ne %struct.snd_seq_event_cell* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %11, align 8
  %94 = getelementptr inbounds %struct.snd_seq_event_cell, %struct.snd_seq_event_cell* %93, i32 0, i32 0
  %95 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %94, align 8
  store %struct.snd_seq_event_cell* %95, %struct.snd_seq_event_cell** %13, align 8
  %96 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %11, align 8
  %97 = call i32 @snd_seq_cell_free(%struct.snd_seq_event_cell* %96)
  %98 = load %struct.snd_seq_event_cell*, %struct.snd_seq_event_cell** %13, align 8
  store %struct.snd_seq_event_cell* %98, %struct.snd_seq_event_cell** %11, align 8
  br label %89

99:                                               ; preds = %89
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @prioq_match(%struct.snd_seq_event_cell*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_seq_cell_free(%struct.snd_seq_event_cell*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
