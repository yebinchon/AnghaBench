; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit_fsnotify.c_audit_mark_log_rule_change.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit_fsnotify.c_audit_mark_log_rule_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_fsnotify_mark = type { i32, %struct.audit_krule* }
%struct.audit_krule = type { i8*, i32 }
%struct.audit_buffer = type { i32 }

@audit_enabled = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@AUDIT_CONFIG_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c" op=%s path=\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" list=%d res=1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_fsnotify_mark*, i8*)* @audit_mark_log_rule_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_mark_log_rule_change(%struct.audit_fsnotify_mark* %0, i8* %1) #0 {
  %3 = alloca %struct.audit_fsnotify_mark*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.audit_buffer*, align 8
  %6 = alloca %struct.audit_krule*, align 8
  store %struct.audit_fsnotify_mark* %0, %struct.audit_fsnotify_mark** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.audit_fsnotify_mark*, %struct.audit_fsnotify_mark** %3, align 8
  %8 = getelementptr inbounds %struct.audit_fsnotify_mark, %struct.audit_fsnotify_mark* %7, i32 0, i32 1
  %9 = load %struct.audit_krule*, %struct.audit_krule** %8, align 8
  store %struct.audit_krule* %9, %struct.audit_krule** %6, align 8
  %10 = load i32, i32* @audit_enabled, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %48

13:                                               ; preds = %2
  %14 = call i32 (...) @audit_context()
  %15 = load i32, i32* @GFP_NOFS, align 4
  %16 = load i32, i32* @AUDIT_CONFIG_CHANGE, align 4
  %17 = call %struct.audit_buffer* @audit_log_start(i32 %14, i32 %15, i32 %16)
  store %struct.audit_buffer* %17, %struct.audit_buffer** %5, align 8
  %18 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %19 = icmp ne %struct.audit_buffer* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %48

25:                                               ; preds = %13
  %26 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %27 = call i32 @audit_log_session_info(%struct.audit_buffer* %26)
  %28 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @audit_log_format(%struct.audit_buffer* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %32 = load %struct.audit_fsnotify_mark*, %struct.audit_fsnotify_mark** %3, align 8
  %33 = getelementptr inbounds %struct.audit_fsnotify_mark, %struct.audit_fsnotify_mark* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %31, i32 %34)
  %36 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %37 = load %struct.audit_krule*, %struct.audit_krule** %6, align 8
  %38 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @audit_log_key(%struct.audit_buffer* %36, i32 %39)
  %41 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %42 = load %struct.audit_krule*, %struct.audit_krule** %6, align 8
  %43 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @audit_log_format(%struct.audit_buffer* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  %46 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %47 = call i32 @audit_log_end(%struct.audit_buffer* %46)
  br label %48

48:                                               ; preds = %25, %24, %12
  ret void
}

declare dso_local %struct.audit_buffer* @audit_log_start(i32, i32, i32) #1

declare dso_local i32 @audit_context(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @audit_log_session_info(%struct.audit_buffer*) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, i8*) #1

declare dso_local i32 @audit_log_untrustedstring(%struct.audit_buffer*, i32) #1

declare dso_local i32 @audit_log_key(%struct.audit_buffer*, i32) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
