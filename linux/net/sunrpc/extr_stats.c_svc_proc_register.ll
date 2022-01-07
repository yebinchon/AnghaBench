; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_stats.c_svc_proc_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_stats.c_svc_proc_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i32 }
%struct.net = type { i32 }
%struct.svc_stat = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.file_operations = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.proc_dir_entry* @svc_proc_register(%struct.net* %0, %struct.svc_stat* %1, %struct.file_operations* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.svc_stat*, align 8
  %6 = alloca %struct.file_operations*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.svc_stat* %1, %struct.svc_stat** %5, align 8
  store %struct.file_operations* %2, %struct.file_operations** %6, align 8
  %7 = load %struct.net*, %struct.net** %4, align 8
  %8 = load %struct.svc_stat*, %struct.svc_stat** %5, align 8
  %9 = getelementptr inbounds %struct.svc_stat, %struct.svc_stat* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.svc_stat*, %struct.svc_stat** %5, align 8
  %14 = load %struct.file_operations*, %struct.file_operations** %6, align 8
  %15 = call %struct.proc_dir_entry* @do_register(%struct.net* %7, i32 %12, %struct.svc_stat* %13, %struct.file_operations* %14)
  ret %struct.proc_dir_entry* %15
}

declare dso_local %struct.proc_dir_entry* @do_register(%struct.net*, i32, %struct.svc_stat*, %struct.file_operations*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
