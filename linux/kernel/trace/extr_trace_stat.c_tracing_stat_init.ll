; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_stat.c_tracing_stat_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_stat.c_tracing_stat_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"trace_stat\00", align 1
@stat_dir = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Could not create tracefs 'trace_stat' entry\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @tracing_stat_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracing_stat_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.dentry*, align 8
  %3 = call %struct.dentry* (...) @tracing_init_dentry()
  store %struct.dentry* %3, %struct.dentry** %2, align 8
  %4 = load %struct.dentry*, %struct.dentry** %2, align 8
  %5 = call i64 @IS_ERR(%struct.dentry* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %16

8:                                                ; preds = %0
  %9 = load %struct.dentry*, %struct.dentry** %2, align 8
  %10 = call i32 @tracefs_create_dir(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.dentry* %9)
  store i32 %10, i32* @stat_dir, align 4
  %11 = load i32, i32* @stat_dir, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = call i32 @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %8
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %15, %7
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local %struct.dentry* @tracing_init_dentry(...) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @tracefs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
