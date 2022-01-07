; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_sys.c_do_prlimit.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_sys.c_do_prlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.rlimit* }
%struct.rlimit = type { i64, i64 }

@RLIM_NLIMITS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RLIMIT_NOFILE = common dso_local global i32 0, align 4
@sysctl_nr_open = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@CAP_SYS_RESOURCE = common dso_local global i32 0, align 4
@RLIMIT_CPU = common dso_local global i32 0, align 4
@RLIM_INFINITY = common dso_local global i64 0, align 8
@CONFIG_POSIX_TIMERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_prlimit(%struct.task_struct* %0, i32 %1, %struct.rlimit* %2, %struct.rlimit* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rlimit*, align 8
  %9 = alloca %struct.rlimit*, align 8
  %10 = alloca %struct.rlimit*, align 8
  %11 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.rlimit* %2, %struct.rlimit** %8, align 8
  store %struct.rlimit* %3, %struct.rlimit** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @RLIM_NLIMITS, align 4
  %14 = icmp uge i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %148

18:                                               ; preds = %4
  %19 = load %struct.rlimit*, %struct.rlimit** %8, align 8
  %20 = icmp ne %struct.rlimit* %19, null
  br i1 %20, label %21, label %46

21:                                               ; preds = %18
  %22 = load %struct.rlimit*, %struct.rlimit** %8, align 8
  %23 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.rlimit*, %struct.rlimit** %8, align 8
  %26 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %148

32:                                               ; preds = %21
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @RLIMIT_NOFILE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load %struct.rlimit*, %struct.rlimit** %8, align 8
  %38 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @sysctl_nr_open, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EPERM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %148

45:                                               ; preds = %36, %32
  br label %46

46:                                               ; preds = %45, %18
  %47 = call i32 @read_lock(i32* @tasklist_lock)
  %48 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %49 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @ESRCH, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %11, align 4
  br label %145

55:                                               ; preds = %46
  %56 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %57 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.rlimit*, %struct.rlimit** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %60, i64 %62
  store %struct.rlimit* %63, %struct.rlimit** %10, align 8
  %64 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %65 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @task_lock(i32 %66)
  %68 = load %struct.rlimit*, %struct.rlimit** %8, align 8
  %69 = icmp ne %struct.rlimit* %68, null
  br i1 %69, label %70, label %94

70:                                               ; preds = %55
  %71 = load %struct.rlimit*, %struct.rlimit** %8, align 8
  %72 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.rlimit*, %struct.rlimit** %10, align 8
  %75 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %73, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %70
  %79 = load i32, i32* @CAP_SYS_RESOURCE, align 4
  %80 = call i32 @capable(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @EPERM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %82, %78, %70
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.rlimit*, %struct.rlimit** %8, align 8
  %92 = call i32 @security_task_setrlimit(%struct.task_struct* %89, i32 %90, %struct.rlimit* %91)
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %88, %85
  br label %94

94:                                               ; preds = %93, %55
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %114, label %97

97:                                               ; preds = %94
  %98 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %99 = icmp ne %struct.rlimit* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %102 = load %struct.rlimit*, %struct.rlimit** %10, align 8
  %103 = bitcast %struct.rlimit* %101 to i8*
  %104 = bitcast %struct.rlimit* %102 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %103, i8* align 8 %104, i64 16, i1 false)
  br label %105

105:                                              ; preds = %100, %97
  %106 = load %struct.rlimit*, %struct.rlimit** %8, align 8
  %107 = icmp ne %struct.rlimit* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load %struct.rlimit*, %struct.rlimit** %10, align 8
  %110 = load %struct.rlimit*, %struct.rlimit** %8, align 8
  %111 = bitcast %struct.rlimit* %109 to i8*
  %112 = bitcast %struct.rlimit* %110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 8 %112, i64 16, i1 false)
  br label %113

113:                                              ; preds = %108, %105
  br label %114

114:                                              ; preds = %113, %94
  %115 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %116 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @task_unlock(i32 %117)
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %144, label %121

121:                                              ; preds = %114
  %122 = load %struct.rlimit*, %struct.rlimit** %8, align 8
  %123 = icmp ne %struct.rlimit* %122, null
  br i1 %123, label %124, label %144

124:                                              ; preds = %121
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @RLIMIT_CPU, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %144

128:                                              ; preds = %124
  %129 = load %struct.rlimit*, %struct.rlimit** %8, align 8
  %130 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @RLIM_INFINITY, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %128
  %135 = load i32, i32* @CONFIG_POSIX_TIMERS, align 4
  %136 = call i64 @IS_ENABLED(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %134
  %139 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %140 = load %struct.rlimit*, %struct.rlimit** %8, align 8
  %141 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @update_rlimit_cpu(%struct.task_struct* %139, i64 %142)
  br label %144

144:                                              ; preds = %138, %134, %128, %124, %121, %114
  br label %145

145:                                              ; preds = %144, %52
  %146 = call i32 @read_unlock(i32* @tasklist_lock)
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %145, %42, %29, %15
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @task_lock(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @security_task_setrlimit(%struct.task_struct*, i32, %struct.rlimit*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @task_unlock(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @update_rlimit_cpu(%struct.task_struct*, i64) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
