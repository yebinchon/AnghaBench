; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kcov.c_kcov_ioctl_locked.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kcov.c_kcov_ioctl_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64, %struct.kcov*, i32, i32 }
%struct.kcov = type { i8*, i64, %struct.task_struct*, i32 }

@KCOV_MODE_DISABLED = common dso_local global i8* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KCOV_MODE_INIT = common dso_local global i8* null, align 8
@current = common dso_local global %struct.task_struct* null, align 8
@KCOV_TRACE_PC = common dso_local global i64 0, align 8
@KCOV_MODE_TRACE_PC = common dso_local global i8* null, align 8
@KCOV_TRACE_CMP = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@KCOV_MODE_TRACE_CMP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kcov*, i32, i64)* @kcov_ioctl_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcov_ioctl_locked(%struct.kcov* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kcov*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.kcov* %0, %struct.kcov** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %152 [
    i32 128, label %12
    i32 129, label %41
    i32 130, label %116
  ]

12:                                               ; preds = %3
  %13 = load %struct.kcov*, %struct.kcov** %5, align 8
  %14 = getelementptr inbounds %struct.kcov, %struct.kcov* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i8*, i8** @KCOV_MODE_DISABLED, align 8
  %17 = icmp ne i8* %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %155

21:                                               ; preds = %12
  %22 = load i64, i64* %7, align 8
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ult i64 %23, 2
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %9, align 8
  %27 = load i32, i32* @INT_MAX, align 4
  %28 = sext i32 %27 to i64
  %29 = udiv i64 %28, 8
  %30 = icmp ugt i64 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %21
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %155

34:                                               ; preds = %25
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.kcov*, %struct.kcov** %5, align 8
  %37 = getelementptr inbounds %struct.kcov, %struct.kcov* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load i8*, i8** @KCOV_MODE_INIT, align 8
  %39 = load %struct.kcov*, %struct.kcov** %5, align 8
  %40 = getelementptr inbounds %struct.kcov, %struct.kcov* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  store i32 0, i32* %4, align 4
  br label %155

41:                                               ; preds = %3
  %42 = load %struct.kcov*, %struct.kcov** %5, align 8
  %43 = getelementptr inbounds %struct.kcov, %struct.kcov* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** @KCOV_MODE_INIT, align 8
  %46 = icmp ne i8* %44, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = load %struct.kcov*, %struct.kcov** %5, align 8
  %49 = getelementptr inbounds %struct.kcov, %struct.kcov* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47, %41
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %155

55:                                               ; preds = %47
  %56 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %56, %struct.task_struct** %8, align 8
  %57 = load %struct.kcov*, %struct.kcov** %5, align 8
  %58 = getelementptr inbounds %struct.kcov, %struct.kcov* %57, i32 0, i32 2
  %59 = load %struct.task_struct*, %struct.task_struct** %58, align 8
  %60 = icmp ne %struct.task_struct* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %55
  %62 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %63 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %62, i32 0, i32 1
  %64 = load %struct.kcov*, %struct.kcov** %63, align 8
  %65 = icmp ne %struct.kcov* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61, %55
  %67 = load i32, i32* @EBUSY, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %155

69:                                               ; preds = %61
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* @KCOV_TRACE_PC, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i8*, i8** @KCOV_MODE_TRACE_PC, align 8
  %75 = load %struct.kcov*, %struct.kcov** %5, align 8
  %76 = getelementptr inbounds %struct.kcov, %struct.kcov* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  br label %87

77:                                               ; preds = %69
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* @KCOV_TRACE_CMP, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* @ENOTSUPP, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %155

84:                                               ; preds = %77
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %155

87:                                               ; preds = %73
  %88 = load %struct.kcov*, %struct.kcov** %5, align 8
  %89 = call i32 @kcov_fault_in_area(%struct.kcov* %88)
  %90 = load %struct.kcov*, %struct.kcov** %5, align 8
  %91 = getelementptr inbounds %struct.kcov, %struct.kcov* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %94 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.kcov*, %struct.kcov** %5, align 8
  %96 = getelementptr inbounds %struct.kcov, %struct.kcov* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %99 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = call i32 (...) @barrier()
  %101 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %102 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.kcov*, %struct.kcov** %5, align 8
  %105 = getelementptr inbounds %struct.kcov, %struct.kcov* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @WRITE_ONCE(i32 %103, i8* %106)
  %108 = load %struct.kcov*, %struct.kcov** %5, align 8
  %109 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %110 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %109, i32 0, i32 1
  store %struct.kcov* %108, %struct.kcov** %110, align 8
  %111 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %112 = load %struct.kcov*, %struct.kcov** %5, align 8
  %113 = getelementptr inbounds %struct.kcov, %struct.kcov* %112, i32 0, i32 2
  store %struct.task_struct* %111, %struct.task_struct** %113, align 8
  %114 = load %struct.kcov*, %struct.kcov** %5, align 8
  %115 = call i32 @kcov_get(%struct.kcov* %114)
  store i32 0, i32* %4, align 4
  br label %155

116:                                              ; preds = %3
  %117 = load i64, i64* %7, align 8
  store i64 %117, i64* %10, align 8
  %118 = load i64, i64* %10, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %116
  %121 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %122 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %121, i32 0, i32 1
  %123 = load %struct.kcov*, %struct.kcov** %122, align 8
  %124 = load %struct.kcov*, %struct.kcov** %5, align 8
  %125 = icmp ne %struct.kcov* %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %120, %116
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %155

129:                                              ; preds = %120
  %130 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %130, %struct.task_struct** %8, align 8
  %131 = load %struct.kcov*, %struct.kcov** %5, align 8
  %132 = getelementptr inbounds %struct.kcov, %struct.kcov* %131, i32 0, i32 2
  %133 = load %struct.task_struct*, %struct.task_struct** %132, align 8
  %134 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %135 = icmp ne %struct.task_struct* %133, %134
  %136 = zext i1 %135 to i32
  %137 = call i32 @WARN_ON(i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %129
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %4, align 4
  br label %155

142:                                              ; preds = %129
  %143 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %144 = call i32 @kcov_task_init(%struct.task_struct* %143)
  %145 = load %struct.kcov*, %struct.kcov** %5, align 8
  %146 = getelementptr inbounds %struct.kcov, %struct.kcov* %145, i32 0, i32 2
  store %struct.task_struct* null, %struct.task_struct** %146, align 8
  %147 = load i8*, i8** @KCOV_MODE_INIT, align 8
  %148 = load %struct.kcov*, %struct.kcov** %5, align 8
  %149 = getelementptr inbounds %struct.kcov, %struct.kcov* %148, i32 0, i32 0
  store i8* %147, i8** %149, align 8
  %150 = load %struct.kcov*, %struct.kcov** %5, align 8
  %151 = call i32 @kcov_put(%struct.kcov* %150)
  store i32 0, i32* %4, align 4
  br label %155

152:                                              ; preds = %3
  %153 = load i32, i32* @ENOTTY, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %152, %142, %139, %126, %87, %84, %81, %66, %52, %34, %31, %18
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @kcov_fault_in_area(%struct.kcov*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @WRITE_ONCE(i32, i8*) #1

declare dso_local i32 @kcov_get(%struct.kcov*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kcov_task_init(%struct.task_struct*) #1

declare dso_local i32 @kcov_put(%struct.kcov*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
