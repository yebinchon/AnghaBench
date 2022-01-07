; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_tsacct.c_bacct_add_tsk.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_tsacct.c_bacct_add_tsk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_namespace = type { i32 }
%struct.pid_namespace = type { i32 }
%struct.taskstats = type { i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.task_struct = type { i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.cred = type { i32, i32 }

@TS_COMM_LEN = common dso_local global i64 0, align 8
@TASK_COMM_LEN = common dso_local global i64 0, align 8
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@PF_FORKNOEXEC = common dso_local global i32 0, align 4
@AFORK = common dso_local global i32 0, align 4
@PF_SUPERPRIV = common dso_local global i32 0, align 4
@ASU = common dso_local global i32 0, align 4
@PF_DUMPCORE = common dso_local global i32 0, align 4
@ACORE = common dso_local global i32 0, align 4
@PF_SIGNALED = common dso_local global i32 0, align 4
@AXSIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bacct_add_tsk(%struct.user_namespace* %0, %struct.pid_namespace* %1, %struct.taskstats* %2, %struct.task_struct* %3) #0 {
  %5 = alloca %struct.user_namespace*, align 8
  %6 = alloca %struct.pid_namespace*, align 8
  %7 = alloca %struct.taskstats*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.cred*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.user_namespace* %0, %struct.user_namespace** %5, align 8
  store %struct.pid_namespace* %1, %struct.pid_namespace** %6, align 8
  store %struct.taskstats* %2, %struct.taskstats** %7, align 8
  store %struct.task_struct* %3, %struct.task_struct** %8, align 8
  %15 = load i64, i64* @TS_COMM_LEN, align 8
  %16 = load i64, i64* @TASK_COMM_LEN, align 8
  %17 = icmp slt i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUILD_BUG_ON(i32 %18)
  %20 = call i8* (...) @ktime_get_ns()
  %21 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 7
  %23 = load i8*, i8** %22, align 8
  %24 = ptrtoint i8* %20 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %14, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = load i32, i32* @NSEC_PER_USEC, align 4
  %30 = call i32 @do_div(i8* %28, i32 %29)
  %31 = load i8*, i8** %14, align 8
  %32 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %33 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %32, i32 0, i32 16
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = load i32, i32* @USEC_PER_SEC, align 4
  %36 = call i32 @do_div(i8* %34, i32 %35)
  %37 = call i8* (...) @get_seconds()
  %38 = load i8*, i8** %14, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %44 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %43, i32 0, i32 15
  store i8* %42, i8** %44, align 8
  %45 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %46 = call i64 @thread_group_leader(%struct.task_struct* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %4
  %49 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %50 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %53 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %52, i32 0, i32 14
  store i32 %51, i32* %53, align 4
  %54 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %55 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @PF_FORKNOEXEC, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %48
  %61 = load i32, i32* @AFORK, align 4
  %62 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %63 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %62, i32 0, i32 13
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %60, %48
  br label %67

67:                                               ; preds = %66, %4
  %68 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %69 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @PF_SUPERPRIV, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load i32, i32* @ASU, align 4
  %76 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %77 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %76, i32 0, i32 13
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %74, %67
  %81 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %82 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @PF_DUMPCORE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load i32, i32* @ACORE, align 4
  %89 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %90 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %89, i32 0, i32 13
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %87, %80
  %94 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %95 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @PF_SIGNALED, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = load i32, i32* @AXSIG, align 4
  %102 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %103 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %102, i32 0, i32 13
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %100, %93
  %107 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %108 = call i32 @task_nice(%struct.task_struct* %107)
  %109 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %110 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %109, i32 0, i32 12
  store i32 %108, i32* %110, align 4
  %111 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %112 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %115 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %114, i32 0, i32 11
  store i32 %113, i32* %115, align 8
  %116 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %117 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %118 = call i32 @task_pid_nr_ns(%struct.task_struct* %116, %struct.pid_namespace* %117)
  %119 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %120 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %119, i32 0, i32 10
  store i32 %118, i32* %120, align 4
  %121 = call i32 (...) @rcu_read_lock()
  %122 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %123 = call %struct.cred* @__task_cred(%struct.task_struct* %122)
  store %struct.cred* %123, %struct.cred** %9, align 8
  %124 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %125 = load %struct.cred*, %struct.cred** %9, align 8
  %126 = getelementptr inbounds %struct.cred, %struct.cred* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @from_kuid_munged(%struct.user_namespace* %124, i32 %127)
  %129 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %130 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %129, i32 0, i32 9
  store i32 %128, i32* %130, align 8
  %131 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %132 = load %struct.cred*, %struct.cred** %9, align 8
  %133 = getelementptr inbounds %struct.cred, %struct.cred* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @from_kgid_munged(%struct.user_namespace* %131, i32 %134)
  %136 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %137 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %136, i32 0, i32 8
  store i32 %135, i32* %137, align 4
  %138 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %139 = call i64 @pid_alive(%struct.task_struct* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %106
  %142 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %143 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @rcu_dereference(i32 %144)
  %146 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %147 = call i32 @task_tgid_nr_ns(i32 %145, %struct.pid_namespace* %146)
  br label %149

148:                                              ; preds = %106
  br label %149

149:                                              ; preds = %148, %141
  %150 = phi i32 [ %147, %141 ], [ 0, %148 ]
  %151 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %152 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %151, i32 0, i32 7
  store i32 %150, i32* %152, align 8
  %153 = call i32 (...) @rcu_read_unlock()
  %154 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %155 = call i32 @task_cputime(%struct.task_struct* %154, i8** %10, i8** %11)
  %156 = load i8*, i8** %10, align 8
  %157 = load i32, i32* @NSEC_PER_USEC, align 4
  %158 = call i8* @div_u64(i8* %156, i32 %157)
  %159 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %160 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %159, i32 0, i32 6
  store i8* %158, i8** %160, align 8
  %161 = load i8*, i8** %11, align 8
  %162 = load i32, i32* @NSEC_PER_USEC, align 4
  %163 = call i8* @div_u64(i8* %161, i32 %162)
  %164 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %165 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %164, i32 0, i32 5
  store i8* %163, i8** %165, align 8
  %166 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %167 = call i32 @task_cputime_scaled(%struct.task_struct* %166, i8** %12, i8** %13)
  %168 = load i8*, i8** %12, align 8
  %169 = load i32, i32* @NSEC_PER_USEC, align 4
  %170 = call i8* @div_u64(i8* %168, i32 %169)
  %171 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %172 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %171, i32 0, i32 4
  store i8* %170, i8** %172, align 8
  %173 = load i8*, i8** %13, align 8
  %174 = load i32, i32* @NSEC_PER_USEC, align 4
  %175 = call i8* @div_u64(i8* %173, i32 %174)
  %176 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %177 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %176, i32 0, i32 3
  store i8* %175, i8** %177, align 8
  %178 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %179 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %182 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 8
  %183 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %184 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %187 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  %188 = load %struct.taskstats*, %struct.taskstats** %7, align 8
  %189 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %192 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @strncpy(i32 %190, i32 %193, i32 4)
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i8* @ktime_get_ns(...) #1

declare dso_local i32 @do_div(i8*, i32) #1

declare dso_local i8* @get_seconds(...) #1

declare dso_local i64 @thread_group_leader(%struct.task_struct*) #1

declare dso_local i32 @task_nice(%struct.task_struct*) #1

declare dso_local i32 @task_pid_nr_ns(%struct.task_struct*, %struct.pid_namespace*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cred* @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @from_kuid_munged(%struct.user_namespace*, i32) #1

declare dso_local i32 @from_kgid_munged(%struct.user_namespace*, i32) #1

declare dso_local i64 @pid_alive(%struct.task_struct*) #1

declare dso_local i32 @task_tgid_nr_ns(i32, %struct.pid_namespace*) #1

declare dso_local i32 @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @task_cputime(%struct.task_struct*, i8**, i8**) #1

declare dso_local i8* @div_u64(i8*, i32) #1

declare dso_local i32 @task_cputime_scaled(%struct.task_struct*, i8**, i8**) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
