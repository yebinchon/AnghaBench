; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_bpf_trace.c_bpf_get_probe_write_proto.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_bpf_trace.c_bpf_get_probe_write_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.bpf_func_proto = type { i32 }

@.str = private unnamed_addr constant [94 x i8] c"%s[%d] is installing a program with bpf_probe_write_user helper that may corrupt user memory!\00", align 1
@current = common dso_local global %struct.TYPE_3__* null, align 8
@bpf_probe_write_user_proto = common dso_local global %struct.bpf_func_proto zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_func_proto* ()* @bpf_get_probe_write_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_func_proto* @bpf_get_probe_write_proto() #0 {
  %1 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %2 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %3 = load i32, i32* %2, align 4
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %5 = call i32 @task_pid_nr(%struct.TYPE_3__* %4)
  %6 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %5)
  ret %struct.bpf_func_proto* @bpf_probe_write_user_proto
}

declare dso_local i32 @pr_warn_ratelimited(i8*, i32, i32) #1

declare dso_local i32 @task_pid_nr(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
