; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_next_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_next_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_table_header = type { %struct.ctl_node*, %struct.ctl_table* }
%struct.ctl_node = type { %struct.ctl_table_header*, i32 }
%struct.ctl_table = type { i32 }

@sysctl_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_table_header**, %struct.ctl_table**)* @next_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @next_entry(%struct.ctl_table_header** %0, %struct.ctl_table** %1) #0 {
  %3 = alloca %struct.ctl_table_header**, align 8
  %4 = alloca %struct.ctl_table**, align 8
  %5 = alloca %struct.ctl_table_header*, align 8
  %6 = alloca %struct.ctl_table*, align 8
  %7 = alloca %struct.ctl_node*, align 8
  store %struct.ctl_table_header** %0, %struct.ctl_table_header*** %3, align 8
  store %struct.ctl_table** %1, %struct.ctl_table*** %4, align 8
  %8 = load %struct.ctl_table_header**, %struct.ctl_table_header*** %3, align 8
  %9 = load %struct.ctl_table_header*, %struct.ctl_table_header** %8, align 8
  store %struct.ctl_table_header* %9, %struct.ctl_table_header** %5, align 8
  %10 = load %struct.ctl_table**, %struct.ctl_table*** %4, align 8
  %11 = load %struct.ctl_table*, %struct.ctl_table** %10, align 8
  store %struct.ctl_table* %11, %struct.ctl_table** %6, align 8
  %12 = load %struct.ctl_table_header*, %struct.ctl_table_header** %5, align 8
  %13 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %12, i32 0, i32 0
  %14 = load %struct.ctl_node*, %struct.ctl_node** %13, align 8
  %15 = load %struct.ctl_table*, %struct.ctl_table** %6, align 8
  %16 = load %struct.ctl_table_header*, %struct.ctl_table_header** %5, align 8
  %17 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %16, i32 0, i32 1
  %18 = load %struct.ctl_table*, %struct.ctl_table** %17, align 8
  %19 = ptrtoint %struct.ctl_table* %15 to i64
  %20 = ptrtoint %struct.ctl_table* %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 4
  %23 = getelementptr inbounds %struct.ctl_node, %struct.ctl_node* %14, i64 %22
  store %struct.ctl_node* %23, %struct.ctl_node** %7, align 8
  %24 = call i32 @spin_lock(i32* @sysctl_lock)
  %25 = load %struct.ctl_table_header*, %struct.ctl_table_header** %5, align 8
  %26 = call i32 @unuse_table(%struct.ctl_table_header* %25)
  %27 = load %struct.ctl_node*, %struct.ctl_node** %7, align 8
  %28 = getelementptr inbounds %struct.ctl_node, %struct.ctl_node* %27, i32 0, i32 1
  %29 = call i32 @rb_next(i32* %28)
  %30 = call %struct.ctl_node* @first_usable_entry(i32 %29)
  store %struct.ctl_node* %30, %struct.ctl_node** %7, align 8
  %31 = call i32 @spin_unlock(i32* @sysctl_lock)
  store %struct.ctl_table_header* null, %struct.ctl_table_header** %5, align 8
  %32 = load %struct.ctl_node*, %struct.ctl_node** %7, align 8
  %33 = icmp ne %struct.ctl_node* %32, null
  br i1 %33, label %34, label %50

34:                                               ; preds = %2
  %35 = load %struct.ctl_node*, %struct.ctl_node** %7, align 8
  %36 = getelementptr inbounds %struct.ctl_node, %struct.ctl_node* %35, i32 0, i32 0
  %37 = load %struct.ctl_table_header*, %struct.ctl_table_header** %36, align 8
  store %struct.ctl_table_header* %37, %struct.ctl_table_header** %5, align 8
  %38 = load %struct.ctl_table_header*, %struct.ctl_table_header** %5, align 8
  %39 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %38, i32 0, i32 1
  %40 = load %struct.ctl_table*, %struct.ctl_table** %39, align 8
  %41 = load %struct.ctl_node*, %struct.ctl_node** %7, align 8
  %42 = load %struct.ctl_table_header*, %struct.ctl_table_header** %5, align 8
  %43 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %42, i32 0, i32 0
  %44 = load %struct.ctl_node*, %struct.ctl_node** %43, align 8
  %45 = ptrtoint %struct.ctl_node* %41 to i64
  %46 = ptrtoint %struct.ctl_node* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 16
  %49 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %40, i64 %48
  store %struct.ctl_table* %49, %struct.ctl_table** %6, align 8
  br label %50

50:                                               ; preds = %34, %2
  %51 = load %struct.ctl_table_header*, %struct.ctl_table_header** %5, align 8
  %52 = load %struct.ctl_table_header**, %struct.ctl_table_header*** %3, align 8
  store %struct.ctl_table_header* %51, %struct.ctl_table_header** %52, align 8
  %53 = load %struct.ctl_table*, %struct.ctl_table** %6, align 8
  %54 = load %struct.ctl_table**, %struct.ctl_table*** %4, align 8
  store %struct.ctl_table* %53, %struct.ctl_table** %54, align 8
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @unuse_table(%struct.ctl_table_header*) #1

declare dso_local %struct.ctl_node* @first_usable_entry(i32) #1

declare dso_local i32 @rb_next(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
