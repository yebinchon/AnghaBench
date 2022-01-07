; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_loss_4state.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_loss_4state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netem_sched_data = type { %struct.clgstate }
%struct.clgstate = type { i32, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netem_sched_data*)* @loss_4state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loss_4state(%struct.netem_sched_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netem_sched_data*, align 8
  %4 = alloca %struct.clgstate*, align 8
  %5 = alloca i64, align 8
  store %struct.netem_sched_data* %0, %struct.netem_sched_data** %3, align 8
  %6 = load %struct.netem_sched_data*, %struct.netem_sched_data** %3, align 8
  %7 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %6, i32 0, i32 0
  store %struct.clgstate* %7, %struct.clgstate** %4, align 8
  %8 = call i64 (...) @prandom_u32()
  store i64 %8, i64* %5, align 8
  %9 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %10 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %116 [
    i32 128, label %12
    i32 129, label %56
    i32 130, label %69
    i32 131, label %113
  ]

12:                                               ; preds = %1
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %15 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %20 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %19, i32 0, i32 0
  store i32 131, i32* %20, align 8
  store i32 1, i32* %2, align 4
  br label %117

21:                                               ; preds = %12
  %22 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %23 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %30 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %33 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = icmp slt i64 %28, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %39 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %38, i32 0, i32 0
  store i32 130, i32* %39, align 8
  store i32 1, i32* %2, align 4
  br label %117

40:                                               ; preds = %27, %21
  %41 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %42 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %45 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load i64, i64* %5, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %52 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %51, i32 0, i32 0
  store i32 128, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %40
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54
  br label %116

56:                                               ; preds = %1
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %59 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %64 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %63, i32 0, i32 0
  store i32 130, i32* %64, align 8
  store i32 1, i32* %2, align 4
  br label %117

65:                                               ; preds = %56
  %66 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %67 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %66, i32 0, i32 0
  store i32 129, i32* %67, align 8
  br label %68

68:                                               ; preds = %65
  br label %116

69:                                               ; preds = %1
  %70 = load i64, i64* %5, align 8
  %71 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %72 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %70, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %77 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %76, i32 0, i32 0
  store i32 129, i32* %77, align 8
  br label %112

78:                                               ; preds = %69
  %79 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %80 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %78
  %85 = load i64, i64* %5, align 8
  %86 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %87 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %90 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %88, %91
  %93 = icmp slt i64 %85, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %96 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %95, i32 0, i32 0
  store i32 128, i32* %96, align 8
  br label %111

97:                                               ; preds = %84, %78
  %98 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %99 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %102 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %100, %103
  %105 = load i64, i64* %5, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %97
  %108 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %109 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %108, i32 0, i32 0
  store i32 130, i32* %109, align 8
  store i32 1, i32* %2, align 4
  br label %117

110:                                              ; preds = %97
  br label %111

111:                                              ; preds = %110, %94
  br label %112

112:                                              ; preds = %111, %75
  br label %116

113:                                              ; preds = %1
  %114 = load %struct.clgstate*, %struct.clgstate** %4, align 8
  %115 = getelementptr inbounds %struct.clgstate, %struct.clgstate* %114, i32 0, i32 0
  store i32 128, i32* %115, align 8
  br label %116

116:                                              ; preds = %1, %113, %112, %68, %55
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %116, %107, %62, %37, %18
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i64 @prandom_u32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
