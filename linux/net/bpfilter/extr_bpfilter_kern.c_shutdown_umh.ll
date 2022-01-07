; ModuleID = '/home/carl/AnghaBench/linux/net/bpfilter/extr_bpfilter_kern.c_shutdown_umh.c'
source_filename = "/home/carl/AnghaBench/linux/net/bpfilter/extr_bpfilter_kern.c_shutdown_umh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.task_struct = type { i32 }

@bpfilter_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PIDTYPE_PID = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @shutdown_umh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shutdown_umh() #0 {
  %1 = alloca %struct.task_struct*, align 8
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bpfilter_ops, i32 0, i32 1), align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %18

5:                                                ; preds = %0
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @bpfilter_ops, i32 0, i32 0, i32 0), align 8
  %7 = call i32 @find_vpid(i32 %6)
  %8 = load i32, i32* @PIDTYPE_PID, align 4
  %9 = call %struct.task_struct* @get_pid_task(i32 %7, i32 %8)
  store %struct.task_struct* %9, %struct.task_struct** %1, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %11 = icmp ne %struct.task_struct* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = load i32, i32* @SIGKILL, align 4
  %14 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %15 = call i32 @send_sig(i32 %13, %struct.task_struct* %14, i32 1)
  %16 = load %struct.task_struct*, %struct.task_struct** %1, align 8
  %17 = call i32 @put_task_struct(%struct.task_struct* %16)
  br label %18

18:                                               ; preds = %4, %12, %5
  ret void
}

declare dso_local %struct.task_struct* @get_pid_task(i32, i32) #1

declare dso_local i32 @find_vpid(i32) #1

declare dso_local i32 @send_sig(i32, %struct.task_struct*, i32) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
