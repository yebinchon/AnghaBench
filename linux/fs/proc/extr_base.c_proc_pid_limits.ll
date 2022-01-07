; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_pid_limits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_base.c_proc_pid_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }
%struct.seq_file = type { i32 }
%struct.pid_namespace = type { i32 }
%struct.pid = type { i32 }
%struct.task_struct = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rlimit = type { i8*, i8* }

@RLIM_NLIMITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"Limit                     Soft Limit           Hard Limit           Units     \0A\00", align 1
@RLIM_INFINITY = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"%-25s %-20s \00", align 1
@lnames = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"unlimited\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%-25s %-20lu \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%-20s \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%-20lu \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%-10s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* @proc_pid_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_pid_limits(%struct.seq_file* %0, %struct.pid_namespace* %1, %struct.pid* %2, %struct.task_struct* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.seq_file*, align 8
  %7 = alloca %struct.pid_namespace*, align 8
  %8 = alloca %struct.pid*, align 8
  %9 = alloca %struct.task_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %6, align 8
  store %struct.pid_namespace* %1, %struct.pid_namespace** %7, align 8
  store %struct.pid* %2, %struct.pid** %8, align 8
  store %struct.task_struct* %3, %struct.task_struct** %9, align 8
  %15 = load i32, i32* @RLIM_NLIMITS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca %struct.rlimit, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %20 = call i32 @lock_task_sighand(%struct.task_struct* %19, i64* %11)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %121

23:                                               ; preds = %4
  %24 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @RLIM_NLIMITS, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 16, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @memcpy(%struct.rlimit* %18, i32 %28, i32 %32)
  %34 = load %struct.task_struct*, %struct.task_struct** %9, align 8
  %35 = call i32 @unlock_task_sighand(%struct.task_struct* %34, i64* %11)
  %36 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %37 = call i32 @seq_puts(%struct.seq_file* %36, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %117, %23
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @RLIM_NLIMITS, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %120

42:                                               ; preds = %38
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %18, i64 %44
  %46 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 16
  %48 = load i8*, i8** @RLIM_INFINITY, align 8
  %49 = icmp eq i8* %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %42
  %51 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lnames, align 8
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %77

61:                                               ; preds = %42
  %62 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lnames, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = load i32, i32* %10, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %18, i64 %72
  %74 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 16
  %76 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %70, i8* %75)
  br label %77

77:                                               ; preds = %61, %50
  %78 = load i32, i32* %10, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %18, i64 %79
  %81 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load i8*, i8** @RLIM_INFINITY, align 8
  %84 = icmp eq i8* %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %87 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %96

88:                                               ; preds = %77
  %89 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %90 = load i32, i32* %10, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %18, i64 %91
  %93 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %88, %85
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lnames, align 8
  %98 = load i32, i32* %10, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %113

104:                                              ; preds = %96
  %105 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @lnames, align 8
  %107 = load i32, i32* %10, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %111)
  br label %116

113:                                              ; preds = %96
  %114 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %115 = call i32 @seq_putc(%struct.seq_file* %114, i8 signext 10)
  br label %116

116:                                              ; preds = %113, %104
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %10, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %10, align 4
  br label %38

120:                                              ; preds = %38
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %121

121:                                              ; preds = %120, %22
  %122 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lock_task_sighand(%struct.task_struct*, i64*) #2

declare dso_local i32 @memcpy(%struct.rlimit*, i32, i32) #2

declare dso_local i32 @unlock_task_sighand(%struct.task_struct*, i64*) #2

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #2

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, ...) #2

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
