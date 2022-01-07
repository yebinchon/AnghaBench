; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_erase_header.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_erase_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_table_header = type { %struct.ctl_table* }
%struct.ctl_table = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_table_header*)* @erase_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @erase_header(%struct.ctl_table_header* %0) #0 {
  %2 = alloca %struct.ctl_table_header*, align 8
  %3 = alloca %struct.ctl_table*, align 8
  store %struct.ctl_table_header* %0, %struct.ctl_table_header** %2, align 8
  %4 = load %struct.ctl_table_header*, %struct.ctl_table_header** %2, align 8
  %5 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %4, i32 0, i32 0
  %6 = load %struct.ctl_table*, %struct.ctl_table** %5, align 8
  store %struct.ctl_table* %6, %struct.ctl_table** %3, align 8
  br label %7

7:                                                ; preds = %16, %1
  %8 = load %struct.ctl_table*, %struct.ctl_table** %3, align 8
  %9 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = load %struct.ctl_table_header*, %struct.ctl_table_header** %2, align 8
  %14 = load %struct.ctl_table*, %struct.ctl_table** %3, align 8
  %15 = call i32 @erase_entry(%struct.ctl_table_header* %13, %struct.ctl_table* %14)
  br label %16

16:                                               ; preds = %12
  %17 = load %struct.ctl_table*, %struct.ctl_table** %3, align 8
  %18 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %17, i32 1
  store %struct.ctl_table* %18, %struct.ctl_table** %3, align 8
  br label %7

19:                                               ; preds = %7
  ret void
}

declare dso_local i32 @erase_entry(%struct.ctl_table_header*, %struct.ctl_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
