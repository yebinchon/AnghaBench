; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_task_nommu.c_maps_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_task_nommu.c_maps_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.seq_operations = type { i32 }
%struct.proc_maps_private = type { i32, %struct.inode* }

@ENOMEM = common dso_local global i32 0, align 4
@PTRACE_MODE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, %struct.seq_operations*)* @maps_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maps_open(%struct.inode* %0, %struct.file* %1, %struct.seq_operations* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.seq_operations*, align 8
  %8 = alloca %struct.proc_maps_private*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store %struct.seq_operations* %2, %struct.seq_operations** %7, align 8
  %10 = load %struct.file*, %struct.file** %6, align 8
  %11 = load %struct.seq_operations*, %struct.seq_operations** %7, align 8
  %12 = call %struct.proc_maps_private* @__seq_open_private(%struct.file* %10, %struct.seq_operations* %11, i32 16)
  store %struct.proc_maps_private* %12, %struct.proc_maps_private** %8, align 8
  %13 = load %struct.proc_maps_private*, %struct.proc_maps_private** %8, align 8
  %14 = icmp ne %struct.proc_maps_private* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %42

18:                                               ; preds = %3
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = load %struct.proc_maps_private*, %struct.proc_maps_private** %8, align 8
  %21 = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %20, i32 0, i32 1
  store %struct.inode* %19, %struct.inode** %21, align 8
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = load i32, i32* @PTRACE_MODE_READ, align 4
  %24 = call i32 @proc_mem_open(%struct.inode* %22, i32 %23)
  %25 = load %struct.proc_maps_private*, %struct.proc_maps_private** %8, align 8
  %26 = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.proc_maps_private*, %struct.proc_maps_private** %8, align 8
  %28 = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @IS_ERR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %18
  %33 = load %struct.proc_maps_private*, %struct.proc_maps_private** %8, align 8
  %34 = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = load %struct.file*, %struct.file** %6, align 8
  %39 = call i32 @seq_release_private(%struct.inode* %37, %struct.file* %38)
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %42

41:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %32, %15
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.proc_maps_private* @__seq_open_private(%struct.file*, %struct.seq_operations*, i32) #1

declare dso_local i32 @proc_mem_open(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @seq_release_private(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
