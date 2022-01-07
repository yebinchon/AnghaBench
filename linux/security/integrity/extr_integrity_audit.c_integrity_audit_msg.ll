; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/extr_integrity_audit.c_integrity_audit_msg.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/extr_integrity_audit.c_integrity_audit_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.audit_buffer = type { i32 }
%struct.TYPE_4__ = type { i32 }

@TASK_COMM_LEN = common dso_local global i32 0, align 4
@integrity_audit_info = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"pid=%d uid=%u auid=%u ses=%u\00", align 1
@current = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c" op=%s cause=%s comm=\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" name=\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" dev=\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" ino=%lu\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c" res=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @integrity_audit_msg(i32 %0, %struct.inode* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.audit_buffer*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.inode* %1, %struct.inode** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %19 = load i32, i32* @TASK_COMM_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %16, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %17, align 8
  %23 = load i32, i32* @integrity_audit_info, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %7
  %26 = load i32, i32* %14, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 1, i32* %18, align 4
  br label %92

29:                                               ; preds = %25, %7
  %30 = call i32 (...) @audit_context()
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call %struct.audit_buffer* @audit_log_start(i32 %30, i32 %31, i32 %32)
  store %struct.audit_buffer* %33, %struct.audit_buffer** %15, align 8
  %34 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %35 = load i32, i32* @current, align 4
  %36 = call i32 @task_pid_nr(i32 %35)
  %37 = call %struct.TYPE_4__* (...) @current_cred()
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @from_kuid(i32* @init_user_ns, i32 %39)
  %41 = load i32, i32* @current, align 4
  %42 = call i32 @audit_get_loginuid(i32 %41)
  %43 = call i32 @from_kuid(i32* @init_user_ns, i32 %42)
  %44 = load i32, i32* @current, align 4
  %45 = call i32 @audit_get_sessionid(i32 %44)
  %46 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %40, i32 %43, i32 %45)
  %47 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %48 = call i32 @audit_log_task_context(%struct.audit_buffer* %47)
  %49 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %50, i8* %51)
  %53 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %54 = load i32, i32* @current, align 4
  %55 = call i8* @get_task_comm(i8* %22, i32 %54)
  %56 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %53, i8* %55)
  %57 = load i8*, i8** %10, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %29
  %60 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %61 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %62, i8* %63)
  br label %65

65:                                               ; preds = %59, %29
  %66 = load %struct.inode*, %struct.inode** %9, align 8
  %67 = icmp ne %struct.inode* %66, null
  br i1 %67, label %68, label %83

68:                                               ; preds = %65
  %69 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %70 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %71 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %72 = load %struct.inode*, %struct.inode** %9, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %71, i8* %76)
  %78 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %79 = load %struct.inode*, %struct.inode** %9, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %68, %65
  %84 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %88)
  %90 = load %struct.audit_buffer*, %struct.audit_buffer** %15, align 8
  %91 = call i32 @audit_log_end(%struct.audit_buffer* %90)
  store i32 0, i32* %18, align 4
  br label %92

92:                                               ; preds = %83, %28
  %93 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %18, align 4
  switch i32 %94, label %96 [
    i32 0, label %95
    i32 1, label %95
  ]

95:                                               ; preds = %92, %92
  ret void

96:                                               ; preds = %92
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.audit_buffer* @audit_log_start(i32, i32, i32) #2

declare dso_local i32 @audit_context(...) #2

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, ...) #2

declare dso_local i32 @task_pid_nr(i32) #2

declare dso_local i32 @from_kuid(i32*, i32) #2

declare dso_local %struct.TYPE_4__* @current_cred(...) #2

declare dso_local i32 @audit_get_loginuid(i32) #2

declare dso_local i32 @audit_get_sessionid(i32) #2

declare dso_local i32 @audit_log_task_context(%struct.audit_buffer*) #2

declare dso_local i32 @audit_log_untrustedstring(%struct.audit_buffer*, i8*) #2

declare dso_local i8* @get_task_comm(i8*, i32) #2

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
