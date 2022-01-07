; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_register_sysctl_table.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_register_sysctl_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_path = type { i32 }
%struct.ctl_table_header = type { i32 }
%struct.ctl_table = type { i32 }

@register_sysctl_table.null_path = internal constant [1 x %struct.ctl_path] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ctl_table_header* @register_sysctl_table(%struct.ctl_table* %0) #0 {
  %2 = alloca %struct.ctl_table*, align 8
  store %struct.ctl_table* %0, %struct.ctl_table** %2, align 8
  %3 = load %struct.ctl_table*, %struct.ctl_table** %2, align 8
  %4 = call %struct.ctl_table_header* @register_sysctl_paths(%struct.ctl_path* getelementptr inbounds ([1 x %struct.ctl_path], [1 x %struct.ctl_path]* @register_sysctl_table.null_path, i64 0, i64 0), %struct.ctl_table* %3)
  ret %struct.ctl_table_header* %4
}

declare dso_local %struct.ctl_table_header* @register_sysctl_paths(%struct.ctl_path*, %struct.ctl_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
