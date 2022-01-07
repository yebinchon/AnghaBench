; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit_tree.c_audit_tree_log_remove_rule.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit_tree.c_audit_tree_log_remove_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_context = type { i32 }
%struct.audit_krule = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.audit_buffer = type { i32 }

@audit_enabled = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AUDIT_CONFIG_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"op=remove_rule dir=\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" list=%d res=1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_context*, %struct.audit_krule*)* @audit_tree_log_remove_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_tree_log_remove_rule(%struct.audit_context* %0, %struct.audit_krule* %1) #0 {
  %3 = alloca %struct.audit_context*, align 8
  %4 = alloca %struct.audit_krule*, align 8
  %5 = alloca %struct.audit_buffer*, align 8
  store %struct.audit_context* %0, %struct.audit_context** %3, align 8
  store %struct.audit_krule* %1, %struct.audit_krule** %4, align 8
  %6 = load i32, i32* @audit_enabled, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %43

9:                                                ; preds = %2
  %10 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = load i32, i32* @AUDIT_CONFIG_CHANGE, align 4
  %13 = call %struct.audit_buffer* @audit_log_start(%struct.audit_context* %10, i32 %11, i32 %12)
  store %struct.audit_buffer* %13, %struct.audit_buffer** %5, align 8
  %14 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %15 = icmp ne %struct.audit_buffer* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  br label %43

21:                                               ; preds = %9
  %22 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %23 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %25 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %26 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @audit_log_untrustedstring(%struct.audit_buffer* %24, i32 %29)
  %31 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %32 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %33 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @audit_log_key(%struct.audit_buffer* %31, i32 %34)
  %36 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %37 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %38 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.audit_buffer*, %struct.audit_buffer** %5, align 8
  %42 = call i32 @audit_log_end(%struct.audit_buffer* %41)
  br label %43

43:                                               ; preds = %21, %20, %8
  ret void
}

declare dso_local %struct.audit_buffer* @audit_log_start(%struct.audit_context*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, ...) #1

declare dso_local i32 @audit_log_untrustedstring(%struct.audit_buffer*, i32) #1

declare dso_local i32 @audit_log_key(%struct.audit_buffer*, i32) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
