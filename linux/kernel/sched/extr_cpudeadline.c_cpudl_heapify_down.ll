; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_cpudeadline.c_cpudl_heapify_down.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_cpudeadline.c_cpudl_heapify_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpudl = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpudl*, i32)* @cpudl_heapify_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpudl_heapify_down(%struct.cpudl* %0, i32 %1) #0 {
  %3 = alloca %struct.cpudl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cpudl* %0, %struct.cpudl** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %12 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %20 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @left_child(i32 %27)
  %29 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %30 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %173

34:                                               ; preds = %2
  br label %35

35:                                               ; preds = %34, %94
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @left_child(i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @right_child(i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %44 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %35
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %50 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @dl_time_before(i32 %48, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %47
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %7, align 4
  %61 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %62 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %59, %47, %35
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %72 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %69
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %78 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @dl_time_before(i32 %76, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %75
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %87, %75, %69
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %141

94:                                               ; preds = %89
  %95 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %96 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %95, i32 0, i32 1
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %104 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i32 %102, i32* %109, align 4
  %110 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %111 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %119 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %118, i32 0, i32 1
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  store i32 %117, i32* %124, align 4
  %125 = load i32, i32* %4, align 4
  %126 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %127 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %126, i32 0, i32 1
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %130 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %129, i32 0, i32 1
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  store i32 %125, i32* %139, align 4
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %4, align 4
  br label %35

141:                                              ; preds = %93
  %142 = load i32, i32* %8, align 4
  %143 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %144 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %143, i32 0, i32 1
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = load i32, i32* %4, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  store i32 %142, i32* %149, align 4
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %152 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %151, i32 0, i32 1
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 2
  store i32 %150, i32* %157, align 4
  %158 = load i32, i32* %4, align 4
  %159 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %160 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %159, i32 0, i32 1
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = load %struct.cpudl*, %struct.cpudl** %3, align 8
  %163 = getelementptr inbounds %struct.cpudl, %struct.cpudl* %162, i32 0, i32 1
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = load i32, i32* %4, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  store i32 %158, i32* %172, align 4
  br label %173

173:                                              ; preds = %141, %33
  ret void
}

declare dso_local i32 @left_child(i32) #1

declare dso_local i32 @right_child(i32) #1

declare dso_local i64 @dl_time_before(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
