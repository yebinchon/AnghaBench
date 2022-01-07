; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_exit.c_wait_consider_task.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_exit.c_wait_consider_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wait_opts = type { i32, i64 }
%struct.task_struct = type { i32, i32 }

@EXIT_DEAD = common dso_local global i32 0, align 4
@EXIT_TRACE = common dso_local global i32 0, align 4
@EXIT_ZOMBIE = common dso_local global i32 0, align 4
@WCONTINUED = common dso_local global i32 0, align 4
@WEXITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wait_opts*, i32, %struct.task_struct*)* @wait_consider_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_consider_task(%struct.wait_opts* %0, i32 %1, %struct.task_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wait_opts*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wait_opts* %0, %struct.wait_opts** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.task_struct* %2, %struct.task_struct** %7, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @READ_ONCE(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @EXIT_DEAD, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %129

21:                                               ; preds = %3
  %22 = load %struct.wait_opts*, %struct.wait_opts** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %25 = call i32 @eligible_child(%struct.wait_opts* %22, i32 %23, %struct.task_struct* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %129

30:                                               ; preds = %21
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @EXIT_TRACE, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @likely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.wait_opts*, %struct.wait_opts** %5, align 8
  %46 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %44, %37
  store i32 0, i32* %4, align 4
  br label %129

48:                                               ; preds = %30
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @likely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %48
  %56 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %57 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %63 = call i32 @ptrace_reparented(%struct.task_struct* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  store i32 1, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %61
  br label %67

67:                                               ; preds = %66, %55, %48
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @EXIT_ZOMBIE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %113

71:                                               ; preds = %67
  %72 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %73 = call i32 @delay_group_leader(%struct.task_struct* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %93, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %75
  %80 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %81 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i64 @likely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %79, %75
  %89 = load %struct.wait_opts*, %struct.wait_opts** %5, align 8
  %90 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %91 = call i32 @wait_task_zombie(%struct.wait_opts* %89, %struct.task_struct* %90)
  store i32 %91, i32* %4, align 4
  br label %129

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92, %71
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i64 @likely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %93
  %101 = load %struct.wait_opts*, %struct.wait_opts** %5, align 8
  %102 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @WCONTINUED, align 4
  %105 = load i32, i32* @WEXITED, align 4
  %106 = or i32 %104, %105
  %107 = and i32 %103, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %100, %93
  %110 = load %struct.wait_opts*, %struct.wait_opts** %5, align 8
  %111 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %110, i32 0, i32 1
  store i64 0, i64* %111, align 8
  br label %112

112:                                              ; preds = %109, %100
  br label %116

113:                                              ; preds = %67
  %114 = load %struct.wait_opts*, %struct.wait_opts** %5, align 8
  %115 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %114, i32 0, i32 1
  store i64 0, i64* %115, align 8
  br label %116

116:                                              ; preds = %113, %112
  %117 = load %struct.wait_opts*, %struct.wait_opts** %5, align 8
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %120 = call i32 @wait_task_stopped(%struct.wait_opts* %117, i32 %118, %struct.task_struct* %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %116
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %4, align 4
  br label %129

125:                                              ; preds = %116
  %126 = load %struct.wait_opts*, %struct.wait_opts** %5, align 8
  %127 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %128 = call i32 @wait_task_continued(%struct.wait_opts* %126, %struct.task_struct* %127)
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %125, %123, %88, %47, %28, %20
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @eligible_child(%struct.wait_opts*, i32, %struct.task_struct*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ptrace_reparented(%struct.task_struct*) #1

declare dso_local i32 @delay_group_leader(%struct.task_struct*) #1

declare dso_local i32 @wait_task_zombie(%struct.wait_opts*, %struct.task_struct*) #1

declare dso_local i32 @wait_task_stopped(%struct.wait_opts*, i32, %struct.task_struct*) #1

declare dso_local i32 @wait_task_continued(%struct.wait_opts*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
