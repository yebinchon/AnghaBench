; ModuleID = '/home/carl/AnghaBench/linux/net/ax25/extr_sysctl_net_ax25.c_ax25_unregister_dev_sysctl.c'
source_filename = "/home/carl/AnghaBench/linux/net/ax25/extr_sysctl_net_ax25.c_ax25_unregister_dev_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.ctl_table_header* }
%struct.ctl_table_header = type { %struct.ctl_table* }
%struct.ctl_table = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ax25_unregister_dev_sysctl(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.ctl_table_header*, align 8
  %4 = alloca %struct.ctl_table*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  store %struct.ctl_table_header* %7, %struct.ctl_table_header** %3, align 8
  %8 = load %struct.ctl_table_header*, %struct.ctl_table_header** %3, align 8
  %9 = icmp ne %struct.ctl_table_header* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.ctl_table_header* null, %struct.ctl_table_header** %12, align 8
  %13 = load %struct.ctl_table_header*, %struct.ctl_table_header** %3, align 8
  %14 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %13, i32 0, i32 0
  %15 = load %struct.ctl_table*, %struct.ctl_table** %14, align 8
  store %struct.ctl_table* %15, %struct.ctl_table** %4, align 8
  %16 = load %struct.ctl_table_header*, %struct.ctl_table_header** %3, align 8
  %17 = call i32 @unregister_net_sysctl_table(%struct.ctl_table_header* %16)
  %18 = load %struct.ctl_table*, %struct.ctl_table** %4, align 8
  %19 = call i32 @kfree(%struct.ctl_table* %18)
  br label %20

20:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @unregister_net_sysctl_table(%struct.ctl_table_header*) #1

declare dso_local i32 @kfree(%struct.ctl_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
