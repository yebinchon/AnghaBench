; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_unuse_table.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_unuse_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_table_header = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_table_header*)* @unuse_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unuse_table(%struct.ctl_table_header* %0) #0 {
  %2 = alloca %struct.ctl_table_header*, align 8
  store %struct.ctl_table_header* %0, %struct.ctl_table_header** %2, align 8
  %3 = load %struct.ctl_table_header*, %struct.ctl_table_header** %2, align 8
  %4 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = load %struct.ctl_table_header*, %struct.ctl_table_header** %2, align 8
  %10 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load %struct.ctl_table_header*, %struct.ctl_table_header** %2, align 8
  %16 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @complete(i32 %17)
  br label %19

19:                                               ; preds = %14, %8
  br label %20

20:                                               ; preds = %19, %1
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @complete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
