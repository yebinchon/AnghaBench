; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_options_init_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_trace_options_init_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.trace_array = type { %struct.dentry* }

@.str = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Could not create tracefs directory 'options'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.trace_array*)* @trace_options_init_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @trace_options_init_dentry(%struct.trace_array* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.trace_array*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.trace_array* %0, %struct.trace_array** %3, align 8
  %5 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %6 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %5, i32 0, i32 0
  %7 = load %struct.dentry*, %struct.dentry** %6, align 8
  %8 = icmp ne %struct.dentry* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %11 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %10, i32 0, i32 0
  %12 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %12, %struct.dentry** %2, align 8
  br label %35

13:                                               ; preds = %1
  %14 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %15 = call %struct.dentry* @tracing_get_dentry(%struct.trace_array* %14)
  store %struct.dentry* %15, %struct.dentry** %4, align 8
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = call i64 @IS_ERR(%struct.dentry* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store %struct.dentry* null, %struct.dentry** %2, align 8
  br label %35

20:                                               ; preds = %13
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = call %struct.dentry* @tracefs_create_dir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.dentry* %21)
  %23 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %24 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %23, i32 0, i32 0
  store %struct.dentry* %22, %struct.dentry** %24, align 8
  %25 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %26 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %25, i32 0, i32 0
  %27 = load %struct.dentry*, %struct.dentry** %26, align 8
  %28 = icmp ne %struct.dentry* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %20
  %30 = call i32 @pr_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store %struct.dentry* null, %struct.dentry** %2, align 8
  br label %35

31:                                               ; preds = %20
  %32 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %33 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %32, i32 0, i32 0
  %34 = load %struct.dentry*, %struct.dentry** %33, align 8
  store %struct.dentry* %34, %struct.dentry** %2, align 8
  br label %35

35:                                               ; preds = %31, %29, %19, %9
  %36 = load %struct.dentry*, %struct.dentry** %2, align 8
  ret %struct.dentry* %36
}

declare dso_local %struct.dentry* @tracing_get_dentry(%struct.trace_array*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local %struct.dentry* @tracefs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
