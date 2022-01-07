; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_support.c_kdb_task_state_char.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_support.c_kdb_task_state_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.task_struct = type { i8, i32, i32 }

@TASK_UNINTERRUPTIBLE = common dso_local global i8 0, align 1
@TASK_STOPPED = common dso_local global i8 0, align 1
@TASK_TRACED = common dso_local global i8 0, align 1
@EXIT_ZOMBIE = common dso_local global i32 0, align 4
@EXIT_DEAD = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i8 0, align 1
@kgdb_info = common dso_local global %struct.TYPE_2__* null, align 8
@kdb_initial_cpu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @kdb_task_state_char(%struct.task_struct* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %8 = icmp ne %struct.task_struct* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %11 = bitcast %struct.task_struct* %10 to i8*
  %12 = call i64 @probe_kernel_read(i64* %6, i8* %11, i32 8)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %1
  store i8 69, i8* %2, align 1
  br label %138

15:                                               ; preds = %9
  %16 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %17 = call i32 @kdb_process_cpu(%struct.task_struct* %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 4
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %100

24:                                               ; preds = %15
  %25 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 0
  %27 = load i8, i8* %26, align 4
  %28 = sext i8 %27 to i32
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %98

31:                                               ; preds = %24
  %32 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %33 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i32 0, i32 0
  %34 = load i8, i8* %33, align 4
  %35 = sext i8 %34 to i32
  %36 = load i8, i8* @TASK_UNINTERRUPTIBLE, align 1
  %37 = sext i8 %36 to i32
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %96

41:                                               ; preds = %31
  %42 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %43 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %42, i32 0, i32 0
  %44 = load i8, i8* %43, align 4
  %45 = sext i8 %44 to i32
  %46 = load i8, i8* @TASK_STOPPED, align 1
  %47 = sext i8 %46 to i32
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %94

51:                                               ; preds = %41
  %52 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %53 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %52, i32 0, i32 0
  %54 = load i8, i8* %53, align 4
  %55 = sext i8 %54 to i32
  %56 = load i8, i8* @TASK_TRACED, align 1
  %57 = sext i8 %56 to i32
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %92

61:                                               ; preds = %51
  %62 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %63 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @EXIT_ZOMBIE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %90

69:                                               ; preds = %61
  %70 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %71 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @EXIT_DEAD, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %88

77:                                               ; preds = %69
  %78 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %79 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %78, i32 0, i32 0
  %80 = load i8, i8* %79, align 4
  %81 = sext i8 %80 to i32
  %82 = load i8, i8* @TASK_INTERRUPTIBLE, align 1
  %83 = sext i8 %82 to i32
  %84 = and i32 %81, %83
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 83, i32 63
  br label %88

88:                                               ; preds = %77, %76
  %89 = phi i32 [ 69, %76 ], [ %87, %77 ]
  br label %90

90:                                               ; preds = %88, %68
  %91 = phi i32 [ 90, %68 ], [ %89, %88 ]
  br label %92

92:                                               ; preds = %90, %60
  %93 = phi i32 [ 67, %60 ], [ %91, %90 ]
  br label %94

94:                                               ; preds = %92, %50
  %95 = phi i32 [ 84, %50 ], [ %93, %92 ]
  br label %96

96:                                               ; preds = %94, %40
  %97 = phi i32 [ 68, %40 ], [ %95, %94 ]
  br label %98

98:                                               ; preds = %96, %30
  %99 = phi i32 [ 85, %30 ], [ %97, %96 ]
  br label %100

100:                                              ; preds = %98, %23
  %101 = phi i32 [ 82, %23 ], [ %99, %98 ]
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %5, align 1
  %103 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %104 = call i64 @is_idle_task(%struct.task_struct* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %125

106:                                              ; preds = %100
  %107 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %108 = call i32 @kdb_task_has_cpu(%struct.task_struct* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %106
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kgdb_info, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %124

118:                                              ; preds = %110, %106
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @kdb_initial_cpu, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i8 73, i8* %5, align 1
  br label %123

123:                                              ; preds = %122, %118
  br label %124

124:                                              ; preds = %123, %110
  br label %136

125:                                              ; preds = %100
  %126 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %127 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = load i8, i8* %5, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 83
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  store i8 77, i8* %5, align 1
  br label %135

135:                                              ; preds = %134, %130, %125
  br label %136

136:                                              ; preds = %135, %124
  %137 = load i8, i8* %5, align 1
  store i8 %137, i8* %2, align 1
  br label %138

138:                                              ; preds = %136, %14
  %139 = load i8, i8* %2, align 1
  ret i8 %139
}

declare dso_local i64 @probe_kernel_read(i64*, i8*, i32) #1

declare dso_local i32 @kdb_process_cpu(%struct.task_struct*) #1

declare dso_local i64 @is_idle_task(%struct.task_struct*) #1

declare dso_local i32 @kdb_task_has_cpu(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
