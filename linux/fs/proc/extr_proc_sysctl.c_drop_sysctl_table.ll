; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_drop_sysctl_table.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_drop_sysctl_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_table_header = type { i32, i64, %struct.ctl_dir* }
%struct.ctl_dir = type { %struct.ctl_table_header }

@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_table_header*)* @drop_sysctl_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drop_sysctl_table(%struct.ctl_table_header* %0) #0 {
  %2 = alloca %struct.ctl_table_header*, align 8
  %3 = alloca %struct.ctl_dir*, align 8
  store %struct.ctl_table_header* %0, %struct.ctl_table_header** %2, align 8
  %4 = load %struct.ctl_table_header*, %struct.ctl_table_header** %2, align 8
  %5 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %4, i32 0, i32 2
  %6 = load %struct.ctl_dir*, %struct.ctl_dir** %5, align 8
  store %struct.ctl_dir* %6, %struct.ctl_dir** %3, align 8
  %7 = load %struct.ctl_table_header*, %struct.ctl_table_header** %2, align 8
  %8 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* %8, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.ctl_dir*, %struct.ctl_dir** %3, align 8
  %15 = icmp ne %struct.ctl_dir* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.ctl_table_header*, %struct.ctl_table_header** %2, align 8
  %18 = call i32 @put_links(%struct.ctl_table_header* %17)
  %19 = load %struct.ctl_table_header*, %struct.ctl_table_header** %2, align 8
  %20 = call i32 @start_unregistering(%struct.ctl_table_header* %19)
  br label %21

21:                                               ; preds = %16, %13
  %22 = load %struct.ctl_table_header*, %struct.ctl_table_header** %2, align 8
  %23 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %23, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load %struct.ctl_table_header*, %struct.ctl_table_header** %2, align 8
  %29 = load i32, i32* @rcu, align 4
  %30 = call i32 @kfree_rcu(%struct.ctl_table_header* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %21
  %32 = load %struct.ctl_dir*, %struct.ctl_dir** %3, align 8
  %33 = icmp ne %struct.ctl_dir* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.ctl_dir*, %struct.ctl_dir** %3, align 8
  %36 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %35, i32 0, i32 0
  call void @drop_sysctl_table(%struct.ctl_table_header* %36)
  br label %37

37:                                               ; preds = %12, %34, %31
  ret void
}

declare dso_local i32 @put_links(%struct.ctl_table_header*) #1

declare dso_local i32 @start_unregistering(%struct.ctl_table_header*) #1

declare dso_local i32 @kfree_rcu(%struct.ctl_table_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
