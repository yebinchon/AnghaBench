; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_array.c_task_state.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_array.c_task_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.pid_namespace = type { i32 }
%struct.pid = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.pid_namespace* }
%struct.task_struct = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.user_namespace = type { i32 }
%struct.group_info = type { i32, i32* }
%struct.cred = type { %struct.group_info*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"Umask:\09%#04o\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"State:\09\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"\0ATgid:\09\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"\0ANgid:\09\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"\0APid:\09\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"\0APPid:\09\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"\0ATracerPid:\09\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"\0AUid:\09\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"\0AGid:\09\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"\0AFDSize:\09\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"\0AGroups:\09\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.pid_namespace*, %struct.pid*, %struct.task_struct*)* @task_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @task_state(%struct.seq_file* %0, %struct.pid_namespace* %1, %struct.pid* %2, %struct.task_struct* %3) #0 {
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.pid_namespace*, align 8
  %7 = alloca %struct.pid*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.user_namespace*, align 8
  %10 = alloca %struct.group_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.task_struct*, align 8
  %14 = alloca %struct.cred*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %5, align 8
  store %struct.pid_namespace* %1, %struct.pid_namespace** %6, align 8
  store %struct.pid* %2, %struct.pid** %7, align 8
  store %struct.task_struct* %3, %struct.task_struct** %8, align 8
  %20 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %21 = call %struct.user_namespace* @seq_user_ns(%struct.seq_file* %20)
  store %struct.user_namespace* %21, %struct.user_namespace** %9, align 8
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %22 = call i32 (...) @rcu_read_lock()
  %23 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %24 = call i64 @pid_alive(%struct.task_struct* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %4
  %27 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %28 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.task_struct* @rcu_dereference(i32 %29)
  %31 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %32 = call i32 @task_tgid_nr_ns(%struct.task_struct* %30, %struct.pid_namespace* %31)
  br label %34

33:                                               ; preds = %4
  br label %34

34:                                               ; preds = %33, %26
  %35 = phi i32 [ %32, %26 ], [ 0, %33 ]
  store i32 %35, i32* %15, align 4
  %36 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %37 = call %struct.task_struct* @ptrace_parent(%struct.task_struct* %36)
  store %struct.task_struct* %37, %struct.task_struct** %13, align 8
  %38 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %39 = icmp ne %struct.task_struct* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %42 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %43 = call i32 @task_pid_nr_ns(%struct.task_struct* %41, %struct.pid_namespace* %42)
  store i32 %43, i32* %16, align 4
  br label %44

44:                                               ; preds = %40, %34
  %45 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %46 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %47 = call i32 @task_tgid_nr_ns(%struct.task_struct* %45, %struct.pid_namespace* %46)
  store i32 %47, i32* %17, align 4
  %48 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %49 = call i32 @task_numa_group_id(%struct.task_struct* %48)
  store i32 %49, i32* %18, align 4
  %50 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %51 = call %struct.cred* @get_task_cred(%struct.task_struct* %50)
  store %struct.cred* %51, %struct.cred** %14, align 8
  %52 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %53 = call i32 @task_lock(%struct.task_struct* %52)
  %54 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %55 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = icmp ne %struct.TYPE_4__* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %44
  %59 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %60 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %58, %44
  %65 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %66 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %71 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call %struct.TYPE_6__* @files_fdtable(i64 %72)
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %19, align 4
  br label %76

76:                                               ; preds = %69, %64
  %77 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %78 = call i32 @task_unlock(%struct.task_struct* %77)
  %79 = call i32 (...) @rcu_read_unlock()
  %80 = load i32, i32* %12, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @seq_printf(%struct.seq_file* %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %82, %76
  %87 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %88 = call i32 @seq_puts(%struct.seq_file* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %89 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %90 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %91 = call i8* @get_task_state(%struct.task_struct* %90)
  %92 = call i32 @seq_puts(%struct.seq_file* %89, i8* %91)
  %93 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %94 = load i32, i32* %17, align 4
  %95 = call i32 @seq_put_decimal_ull(%struct.seq_file* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %97 = load i32, i32* %18, align 4
  %98 = call i32 @seq_put_decimal_ull(%struct.seq_file* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  %99 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %100 = load %struct.pid*, %struct.pid** %7, align 8
  %101 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %102 = call i32 @pid_nr_ns(%struct.pid* %100, %struct.pid_namespace* %101)
  %103 = call i32 @seq_put_decimal_ull(%struct.seq_file* %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  %104 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @seq_put_decimal_ull(%struct.seq_file* %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  %107 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %108 = load i32, i32* %16, align 4
  %109 = call i32 @seq_put_decimal_ull(%struct.seq_file* %107, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %108)
  %110 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %111 = load %struct.user_namespace*, %struct.user_namespace** %9, align 8
  %112 = load %struct.cred*, %struct.cred** %14, align 8
  %113 = getelementptr inbounds %struct.cred, %struct.cred* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @from_kuid_munged(%struct.user_namespace* %111, i32 %114)
  %116 = call i32 @seq_put_decimal_ull(%struct.seq_file* %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %115)
  %117 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %118 = load %struct.user_namespace*, %struct.user_namespace** %9, align 8
  %119 = load %struct.cred*, %struct.cred** %14, align 8
  %120 = getelementptr inbounds %struct.cred, %struct.cred* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @from_kuid_munged(%struct.user_namespace* %118, i32 %121)
  %123 = call i32 @seq_put_decimal_ull(%struct.seq_file* %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 %122)
  %124 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %125 = load %struct.user_namespace*, %struct.user_namespace** %9, align 8
  %126 = load %struct.cred*, %struct.cred** %14, align 8
  %127 = getelementptr inbounds %struct.cred, %struct.cred* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @from_kuid_munged(%struct.user_namespace* %125, i32 %128)
  %130 = call i32 @seq_put_decimal_ull(%struct.seq_file* %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 %129)
  %131 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %132 = load %struct.user_namespace*, %struct.user_namespace** %9, align 8
  %133 = load %struct.cred*, %struct.cred** %14, align 8
  %134 = getelementptr inbounds %struct.cred, %struct.cred* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @from_kuid_munged(%struct.user_namespace* %132, i32 %135)
  %137 = call i32 @seq_put_decimal_ull(%struct.seq_file* %131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 %136)
  %138 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %139 = load %struct.user_namespace*, %struct.user_namespace** %9, align 8
  %140 = load %struct.cred*, %struct.cred** %14, align 8
  %141 = getelementptr inbounds %struct.cred, %struct.cred* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @from_kgid_munged(%struct.user_namespace* %139, i32 %142)
  %144 = call i32 @seq_put_decimal_ull(%struct.seq_file* %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %143)
  %145 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %146 = load %struct.user_namespace*, %struct.user_namespace** %9, align 8
  %147 = load %struct.cred*, %struct.cred** %14, align 8
  %148 = getelementptr inbounds %struct.cred, %struct.cred* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @from_kgid_munged(%struct.user_namespace* %146, i32 %149)
  %151 = call i32 @seq_put_decimal_ull(%struct.seq_file* %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 %150)
  %152 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %153 = load %struct.user_namespace*, %struct.user_namespace** %9, align 8
  %154 = load %struct.cred*, %struct.cred** %14, align 8
  %155 = getelementptr inbounds %struct.cred, %struct.cred* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @from_kgid_munged(%struct.user_namespace* %153, i32 %156)
  %158 = call i32 @seq_put_decimal_ull(%struct.seq_file* %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 %157)
  %159 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %160 = load %struct.user_namespace*, %struct.user_namespace** %9, align 8
  %161 = load %struct.cred*, %struct.cred** %14, align 8
  %162 = getelementptr inbounds %struct.cred, %struct.cred* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @from_kgid_munged(%struct.user_namespace* %160, i32 %163)
  %165 = call i32 @seq_put_decimal_ull(%struct.seq_file* %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 %164)
  %166 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %167 = load i32, i32* %19, align 4
  %168 = call i32 @seq_put_decimal_ull(%struct.seq_file* %166, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %167)
  %169 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %170 = call i32 @seq_puts(%struct.seq_file* %169, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %171 = load %struct.cred*, %struct.cred** %14, align 8
  %172 = getelementptr inbounds %struct.cred, %struct.cred* %171, i32 0, i32 0
  %173 = load %struct.group_info*, %struct.group_info** %172, align 8
  store %struct.group_info* %173, %struct.group_info** %10, align 8
  store i32 0, i32* %11, align 4
  br label %174

174:                                              ; preds = %196, %86
  %175 = load i32, i32* %11, align 4
  %176 = load %struct.group_info*, %struct.group_info** %10, align 8
  %177 = getelementptr inbounds %struct.group_info, %struct.group_info* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %199

180:                                              ; preds = %174
  %181 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %182 = load i32, i32* %11, align 4
  %183 = icmp ne i32 %182, 0
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)
  %186 = load %struct.user_namespace*, %struct.user_namespace** %9, align 8
  %187 = load %struct.group_info*, %struct.group_info** %10, align 8
  %188 = getelementptr inbounds %struct.group_info, %struct.group_info* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @from_kgid_munged(%struct.user_namespace* %186, i32 %193)
  %195 = call i32 @seq_put_decimal_ull(%struct.seq_file* %181, i8* %185, i32 %194)
  br label %196

196:                                              ; preds = %180
  %197 = load i32, i32* %11, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %11, align 4
  br label %174

199:                                              ; preds = %174
  %200 = load %struct.cred*, %struct.cred** %14, align 8
  %201 = call i32 @put_cred(%struct.cred* %200)
  %202 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %203 = call i32 @seq_putc(%struct.seq_file* %202, i8 signext 32)
  %204 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %205 = call i32 @seq_putc(%struct.seq_file* %204, i8 signext 10)
  ret void
}

declare dso_local %struct.user_namespace* @seq_user_ns(%struct.seq_file*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @pid_alive(%struct.task_struct*) #1

declare dso_local i32 @task_tgid_nr_ns(%struct.task_struct*, %struct.pid_namespace*) #1

declare dso_local %struct.task_struct* @rcu_dereference(i32) #1

declare dso_local %struct.task_struct* @ptrace_parent(%struct.task_struct*) #1

declare dso_local i32 @task_pid_nr_ns(%struct.task_struct*, %struct.pid_namespace*) #1

declare dso_local i32 @task_numa_group_id(%struct.task_struct*) #1

declare dso_local %struct.cred* @get_task_cred(%struct.task_struct*) #1

declare dso_local i32 @task_lock(%struct.task_struct*) #1

declare dso_local %struct.TYPE_6__* @files_fdtable(i64) #1

declare dso_local i32 @task_unlock(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i8* @get_task_state(%struct.task_struct*) #1

declare dso_local i32 @seq_put_decimal_ull(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @pid_nr_ns(%struct.pid*, %struct.pid_namespace*) #1

declare dso_local i32 @from_kuid_munged(%struct.user_namespace*, i32) #1

declare dso_local i32 @from_kgid_munged(%struct.user_namespace*, i32) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
