; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_task_mmu.c_proc_maps_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_task_mmu.c_proc_maps_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.seq_operations = type { i32 }
%struct.proc_maps_private = type { i32, %struct.inode* }

@ENOMEM = common dso_local global i32 0, align 4
@PTRACE_MODE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, %struct.seq_operations*, i32)* @proc_maps_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_maps_open(%struct.inode* %0, %struct.file* %1, %struct.seq_operations* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.seq_operations*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.proc_maps_private*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store %struct.seq_operations* %2, %struct.seq_operations** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.file*, %struct.file** %7, align 8
  %13 = load %struct.seq_operations*, %struct.seq_operations** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call %struct.proc_maps_private* @__seq_open_private(%struct.file* %12, %struct.seq_operations* %13, i32 %14)
  store %struct.proc_maps_private* %15, %struct.proc_maps_private** %10, align 8
  %16 = load %struct.proc_maps_private*, %struct.proc_maps_private** %10, align 8
  %17 = icmp ne %struct.proc_maps_private* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %45

21:                                               ; preds = %4
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = load %struct.proc_maps_private*, %struct.proc_maps_private** %10, align 8
  %24 = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %23, i32 0, i32 1
  store %struct.inode* %22, %struct.inode** %24, align 8
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = load i32, i32* @PTRACE_MODE_READ, align 4
  %27 = call i32 @proc_mem_open(%struct.inode* %25, i32 %26)
  %28 = load %struct.proc_maps_private*, %struct.proc_maps_private** %10, align 8
  %29 = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.proc_maps_private*, %struct.proc_maps_private** %10, align 8
  %31 = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %21
  %36 = load %struct.proc_maps_private*, %struct.proc_maps_private** %10, align 8
  %37 = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @PTR_ERR(i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = load %struct.file*, %struct.file** %7, align 8
  %42 = call i32 @seq_release_private(%struct.inode* %40, %struct.file* %41)
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %5, align 4
  br label %45

44:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %35, %18
  %46 = load i32, i32* %5, align 4
  ret i32 %46
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
