; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_dentry_percpu.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_tracing_dentry_percpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.trace_array = type { %struct.dentry* }

@.str = private unnamed_addr constant [8 x i8] c"per_cpu\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Could not create tracefs directory 'per_cpu/%d'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.trace_array*, i32)* @tracing_dentry_percpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @tracing_dentry_percpu(%struct.trace_array* %0, i32 %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.trace_array*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  store %struct.trace_array* %0, %struct.trace_array** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %8 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %7, i32 0, i32 0
  %9 = load %struct.dentry*, %struct.dentry** %8, align 8
  %10 = icmp ne %struct.dentry* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %13 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %12, i32 0, i32 0
  %14 = load %struct.dentry*, %struct.dentry** %13, align 8
  store %struct.dentry* %14, %struct.dentry** %3, align 8
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %17 = call %struct.dentry* @tracing_get_dentry(%struct.trace_array* %16)
  store %struct.dentry* %17, %struct.dentry** %6, align 8
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = call i64 @IS_ERR(%struct.dentry* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store %struct.dentry* null, %struct.dentry** %3, align 8
  br label %38

22:                                               ; preds = %15
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = call %struct.dentry* @tracefs_create_dir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.dentry* %23)
  %25 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %26 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %25, i32 0, i32 0
  store %struct.dentry* %24, %struct.dentry** %26, align 8
  %27 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %28 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %27, i32 0, i32 0
  %29 = load %struct.dentry*, %struct.dentry** %28, align 8
  %30 = icmp ne %struct.dentry* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @WARN_ONCE(i32 %32, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %36 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %35, i32 0, i32 0
  %37 = load %struct.dentry*, %struct.dentry** %36, align 8
  store %struct.dentry* %37, %struct.dentry** %3, align 8
  br label %38

38:                                               ; preds = %22, %21, %11
  %39 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %39
}

declare dso_local %struct.dentry* @tracing_get_dentry(%struct.trace_array*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local %struct.dentry* @tracefs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
