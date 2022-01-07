; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_unregister_sysctl_table.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_unregister_sysctl_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_table_header = type { %struct.ctl_table_header* }
%struct.ctl_table = type { %struct.ctl_table* }

@sysctl_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unregister_sysctl_table(%struct.ctl_table_header* %0) #0 {
  %2 = alloca %struct.ctl_table_header*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctl_table_header**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ctl_table_header*, align 8
  %7 = alloca %struct.ctl_table*, align 8
  store %struct.ctl_table_header* %0, %struct.ctl_table_header** %2, align 8
  %8 = call i32 (...) @might_sleep()
  %9 = load %struct.ctl_table_header*, %struct.ctl_table_header** %2, align 8
  %10 = icmp eq %struct.ctl_table_header* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %56

12:                                               ; preds = %1
  %13 = load %struct.ctl_table_header*, %struct.ctl_table_header** %2, align 8
  %14 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %13, i32 0, i32 0
  %15 = load %struct.ctl_table_header*, %struct.ctl_table_header** %14, align 8
  %16 = call i32 @count_subheaders(%struct.ctl_table_header* %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp sgt i32 %17, 1
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %12
  %23 = load %struct.ctl_table_header*, %struct.ctl_table_header** %2, align 8
  %24 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %23, i64 1
  %25 = bitcast %struct.ctl_table_header* %24 to %struct.ctl_table_header**
  store %struct.ctl_table_header** %25, %struct.ctl_table_header*** %4, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %45, %22
  %29 = load i32, i32* %5, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = load %struct.ctl_table_header**, %struct.ctl_table_header*** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ctl_table_header*, %struct.ctl_table_header** %32, i64 %34
  %36 = load %struct.ctl_table_header*, %struct.ctl_table_header** %35, align 8
  store %struct.ctl_table_header* %36, %struct.ctl_table_header** %6, align 8
  %37 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  %38 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %37, i32 0, i32 0
  %39 = load %struct.ctl_table_header*, %struct.ctl_table_header** %38, align 8
  %40 = bitcast %struct.ctl_table_header* %39 to %struct.ctl_table*
  store %struct.ctl_table* %40, %struct.ctl_table** %7, align 8
  %41 = load %struct.ctl_table_header*, %struct.ctl_table_header** %6, align 8
  call void @unregister_sysctl_table(%struct.ctl_table_header* %41)
  %42 = load %struct.ctl_table*, %struct.ctl_table** %7, align 8
  %43 = bitcast %struct.ctl_table* %42 to %struct.ctl_table_header*
  %44 = call i32 @kfree(%struct.ctl_table_header* %43)
  br label %45

45:                                               ; preds = %31
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %5, align 4
  br label %28

48:                                               ; preds = %28
  %49 = load %struct.ctl_table_header*, %struct.ctl_table_header** %2, align 8
  %50 = call i32 @kfree(%struct.ctl_table_header* %49)
  br label %56

51:                                               ; preds = %12
  %52 = call i32 @spin_lock(i32* @sysctl_lock)
  %53 = load %struct.ctl_table_header*, %struct.ctl_table_header** %2, align 8
  %54 = call i32 @drop_sysctl_table(%struct.ctl_table_header* %53)
  %55 = call i32 @spin_unlock(i32* @sysctl_lock)
  br label %56

56:                                               ; preds = %51, %48, %11
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @count_subheaders(%struct.ctl_table_header*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(%struct.ctl_table_header*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @drop_sysctl_table(%struct.ctl_table_header*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
