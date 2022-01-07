; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_generic.c_proc_seq_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_generic.c_proc_seq_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.proc_dir_entry = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @proc_seq_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_seq_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.proc_dir_entry*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = call %struct.proc_dir_entry* @PDE(%struct.inode* %7)
  store %struct.proc_dir_entry* %8, %struct.proc_dir_entry** %6, align 8
  %9 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %10 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %16 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %19 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @seq_open_private(%struct.file* %14, i32 %17, i64 %20)
  store i32 %21, i32* %3, align 4
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %25 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @seq_open(%struct.file* %23, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %22, %13
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.proc_dir_entry* @PDE(%struct.inode*) #1

declare dso_local i32 @seq_open_private(%struct.file*, i32, i64) #1

declare dso_local i32 @seq_open(%struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
