; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_generic.c_proc_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_generic.c_proc_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.kstat = type { i32 }
%struct.inode = type { i32 }
%struct.proc_dir_entry = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, %struct.kstat*, i32, i32)* @proc_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_getattr(%struct.path* %0, %struct.kstat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.proc_dir_entry*, align 8
  store %struct.path* %0, %struct.path** %5, align 8
  store %struct.kstat* %1, %struct.kstat** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.path*, %struct.path** %5, align 8
  %12 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.inode* @d_inode(i32 %13)
  store %struct.inode* %14, %struct.inode** %9, align 8
  %15 = load %struct.inode*, %struct.inode** %9, align 8
  %16 = call %struct.proc_dir_entry* @PDE(%struct.inode* %15)
  store %struct.proc_dir_entry* %16, %struct.proc_dir_entry** %10, align 8
  %17 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %10, align 8
  %18 = icmp ne %struct.proc_dir_entry* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %4
  %20 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %10, align 8
  %21 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.inode*, %struct.inode** %9, align 8
  %26 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %10, align 8
  %27 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @set_nlink(%struct.inode* %25, i64 %28)
  br label %30

30:                                               ; preds = %24, %19, %4
  %31 = load %struct.inode*, %struct.inode** %9, align 8
  %32 = load %struct.kstat*, %struct.kstat** %6, align 8
  %33 = call i32 @generic_fillattr(%struct.inode* %31, %struct.kstat* %32)
  ret i32 0
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.proc_dir_entry* @PDE(%struct.inode*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i64) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
