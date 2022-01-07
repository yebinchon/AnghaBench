; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditsc.c_audit_signal_info_syscall.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditsc.c_audit_signal_info_syscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.audit_aux_data_pids = type { i64, i32*, i32*, i8**, i8**, i8**, i8**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.audit_context = type { i8*, i32, i32, i8*, i8*, i8*, i8* }

@audit_signals = common dso_local global i32 0, align 4
@TASK_COMM_LEN = common dso_local global i32 0, align 4
@AUDIT_AUX_PIDS = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AUDIT_OBJ_PID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audit_signal_info_syscall(%struct.task_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.audit_aux_data_pids*, align 8
  %5 = alloca %struct.audit_context*, align 8
  %6 = alloca i8*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %7 = call %struct.audit_context* (...) @audit_context()
  store %struct.audit_context* %7, %struct.audit_context** %5, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %9 = call i8* @task_uid(%struct.task_struct* %8)
  store i8* %9, i8** %6, align 8
  %10 = load i32, i32* @audit_signals, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = call i64 (...) @audit_dummy_context()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %154

16:                                               ; preds = %12
  %17 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  %18 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %17, i32 0, i32 6
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %49, label %21

21:                                               ; preds = %16
  %22 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %23 = call i8* @task_tgid_nr(%struct.task_struct* %22)
  %24 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  %25 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %24, i32 0, i32 6
  store i8* %23, i8** %25, align 8
  %26 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %27 = call i8* @audit_get_loginuid(%struct.task_struct* %26)
  %28 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  %29 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %28, i32 0, i32 5
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  %32 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %34 = call i8* @audit_get_sessionid(%struct.task_struct* %33)
  %35 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  %36 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %38 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  %39 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %38, i32 0, i32 2
  %40 = call i32 @security_task_getsecid(%struct.task_struct* %37, i32* %39)
  %41 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  %42 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %45 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @TASK_COMM_LEN, align 4
  %48 = call i32 @memcpy(i32 %43, i32 %46, i32 %47)
  store i32 0, i32* %2, align 4
  br label %154

49:                                               ; preds = %16
  %50 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  %51 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = bitcast i8* %52 to %struct.audit_aux_data_pids*
  store %struct.audit_aux_data_pids* %53, %struct.audit_aux_data_pids** %4, align 8
  %54 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %4, align 8
  %55 = icmp ne %struct.audit_aux_data_pids* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %4, align 8
  %58 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @AUDIT_AUX_PIDS, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %56, %49
  %63 = load i32, i32* @GFP_ATOMIC, align 4
  %64 = call %struct.audit_aux_data_pids* @kzalloc(i32 72, i32 %63)
  store %struct.audit_aux_data_pids* %64, %struct.audit_aux_data_pids** %4, align 8
  %65 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %4, align 8
  %66 = icmp ne %struct.audit_aux_data_pids* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %154

70:                                               ; preds = %62
  %71 = load i32, i32* @AUDIT_OBJ_PID, align 4
  %72 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %4, align 8
  %73 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %72, i32 0, i32 7
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 8
  %75 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  %76 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %4, align 8
  %79 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %78, i32 0, i32 7
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i8* %77, i8** %80, align 8
  %81 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %4, align 8
  %82 = bitcast %struct.audit_aux_data_pids* %81 to i8*
  %83 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  %84 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %70, %56
  %86 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %4, align 8
  %87 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @AUDIT_AUX_PIDS, align 8
  %90 = icmp uge i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @BUG_ON(i32 %91)
  %93 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %94 = call i8* @task_tgid_nr(%struct.task_struct* %93)
  %95 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %4, align 8
  %96 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %95, i32 0, i32 6
  %97 = load i8**, i8*** %96, align 8
  %98 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %4, align 8
  %99 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i8*, i8** %97, i64 %100
  store i8* %94, i8** %101, align 8
  %102 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %103 = call i8* @audit_get_loginuid(%struct.task_struct* %102)
  %104 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %4, align 8
  %105 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %104, i32 0, i32 5
  %106 = load i8**, i8*** %105, align 8
  %107 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %4, align 8
  %108 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i8*, i8** %106, i64 %109
  store i8* %103, i8** %110, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %4, align 8
  %113 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %112, i32 0, i32 4
  %114 = load i8**, i8*** %113, align 8
  %115 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %4, align 8
  %116 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i8*, i8** %114, i64 %117
  store i8* %111, i8** %118, align 8
  %119 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %120 = call i8* @audit_get_sessionid(%struct.task_struct* %119)
  %121 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %4, align 8
  %122 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %121, i32 0, i32 3
  %123 = load i8**, i8*** %122, align 8
  %124 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %4, align 8
  %125 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds i8*, i8** %123, i64 %126
  store i8* %120, i8** %127, align 8
  %128 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %129 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %4, align 8
  %130 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %4, align 8
  %133 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  %136 = call i32 @security_task_getsecid(%struct.task_struct* %128, i32* %135)
  %137 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %4, align 8
  %138 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %4, align 8
  %141 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %146 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @TASK_COMM_LEN, align 4
  %149 = call i32 @memcpy(i32 %144, i32 %147, i32 %148)
  %150 = load %struct.audit_aux_data_pids*, %struct.audit_aux_data_pids** %4, align 8
  %151 = getelementptr inbounds %struct.audit_aux_data_pids, %struct.audit_aux_data_pids* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %151, align 8
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %85, %67, %21, %15
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local %struct.audit_context* @audit_context(...) #1

declare dso_local i8* @task_uid(%struct.task_struct*) #1

declare dso_local i64 @audit_dummy_context(...) #1

declare dso_local i8* @task_tgid_nr(%struct.task_struct*) #1

declare dso_local i8* @audit_get_loginuid(%struct.task_struct*) #1

declare dso_local i8* @audit_get_sessionid(%struct.task_struct*) #1

declare dso_local i32 @security_task_getsecid(%struct.task_struct*, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.audit_aux_data_pids* @kzalloc(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
