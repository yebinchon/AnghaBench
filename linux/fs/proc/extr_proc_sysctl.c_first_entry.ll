; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_first_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_first_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_dir = type { i32 }
%struct.ctl_table_header = type { %struct.ctl_node*, %struct.ctl_table* }
%struct.ctl_node = type { %struct.ctl_table_header* }
%struct.ctl_table = type { i32 }

@sysctl_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_dir*, %struct.ctl_table_header**, %struct.ctl_table**)* @first_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @first_entry(%struct.ctl_dir* %0, %struct.ctl_table_header** %1, %struct.ctl_table** %2) #0 {
  %4 = alloca %struct.ctl_dir*, align 8
  %5 = alloca %struct.ctl_table_header**, align 8
  %6 = alloca %struct.ctl_table**, align 8
  %7 = alloca %struct.ctl_table_header*, align 8
  %8 = alloca %struct.ctl_table*, align 8
  %9 = alloca %struct.ctl_node*, align 8
  store %struct.ctl_dir* %0, %struct.ctl_dir** %4, align 8
  store %struct.ctl_table_header** %1, %struct.ctl_table_header*** %5, align 8
  store %struct.ctl_table** %2, %struct.ctl_table*** %6, align 8
  store %struct.ctl_table_header* null, %struct.ctl_table_header** %7, align 8
  store %struct.ctl_table* null, %struct.ctl_table** %8, align 8
  %10 = call i32 @spin_lock(i32* @sysctl_lock)
  %11 = load %struct.ctl_dir*, %struct.ctl_dir** %4, align 8
  %12 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %11, i32 0, i32 0
  %13 = call i32 @rb_first(i32* %12)
  %14 = call %struct.ctl_node* @first_usable_entry(i32 %13)
  store %struct.ctl_node* %14, %struct.ctl_node** %9, align 8
  %15 = call i32 @spin_unlock(i32* @sysctl_lock)
  %16 = load %struct.ctl_node*, %struct.ctl_node** %9, align 8
  %17 = icmp ne %struct.ctl_node* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %3
  %19 = load %struct.ctl_node*, %struct.ctl_node** %9, align 8
  %20 = getelementptr inbounds %struct.ctl_node, %struct.ctl_node* %19, i32 0, i32 0
  %21 = load %struct.ctl_table_header*, %struct.ctl_table_header** %20, align 8
  store %struct.ctl_table_header* %21, %struct.ctl_table_header** %7, align 8
  %22 = load %struct.ctl_table_header*, %struct.ctl_table_header** %7, align 8
  %23 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %22, i32 0, i32 1
  %24 = load %struct.ctl_table*, %struct.ctl_table** %23, align 8
  %25 = load %struct.ctl_node*, %struct.ctl_node** %9, align 8
  %26 = load %struct.ctl_table_header*, %struct.ctl_table_header** %7, align 8
  %27 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %26, i32 0, i32 0
  %28 = load %struct.ctl_node*, %struct.ctl_node** %27, align 8
  %29 = ptrtoint %struct.ctl_node* %25 to i64
  %30 = ptrtoint %struct.ctl_node* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 8
  %33 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %24, i64 %32
  store %struct.ctl_table* %33, %struct.ctl_table** %8, align 8
  br label %34

34:                                               ; preds = %18, %3
  %35 = load %struct.ctl_table_header*, %struct.ctl_table_header** %7, align 8
  %36 = load %struct.ctl_table_header**, %struct.ctl_table_header*** %5, align 8
  store %struct.ctl_table_header* %35, %struct.ctl_table_header** %36, align 8
  %37 = load %struct.ctl_table*, %struct.ctl_table** %8, align 8
  %38 = load %struct.ctl_table**, %struct.ctl_table*** %6, align 8
  store %struct.ctl_table* %37, %struct.ctl_table** %38, align 8
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.ctl_node* @first_usable_entry(i32) #1

declare dso_local i32 @rb_first(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
