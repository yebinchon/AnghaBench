; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_inode.c_proc_get_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_inode.c_proc_get_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.delayed_call = type { i32 }
%struct.proc_dir_entry = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@proc_put_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* @proc_get_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @proc_get_link(%struct.dentry* %0, %struct.inode* %1, %struct.delayed_call* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.delayed_call*, align 8
  %8 = alloca %struct.proc_dir_entry*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.delayed_call* %2, %struct.delayed_call** %7, align 8
  %9 = load %struct.inode*, %struct.inode** %6, align 8
  %10 = call %struct.proc_dir_entry* @PDE(%struct.inode* %9)
  store %struct.proc_dir_entry* %10, %struct.proc_dir_entry** %8, align 8
  %11 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %8, align 8
  %12 = call i32 @use_pde(%struct.proc_dir_entry* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = call i8* @ERR_PTR(i32 %16)
  store i8* %17, i8** %4, align 8
  br label %26

18:                                               ; preds = %3
  %19 = load %struct.delayed_call*, %struct.delayed_call** %7, align 8
  %20 = load i32, i32* @proc_put_link, align 4
  %21 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %8, align 8
  %22 = call i32 @set_delayed_call(%struct.delayed_call* %19, i32 %20, %struct.proc_dir_entry* %21)
  %23 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %8, align 8
  %24 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %4, align 8
  br label %26

26:                                               ; preds = %18, %14
  %27 = load i8*, i8** %4, align 8
  ret i8* %27
}

declare dso_local %struct.proc_dir_entry* @PDE(%struct.inode*) #1

declare dso_local i32 @use_pde(%struct.proc_dir_entry*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @set_delayed_call(%struct.delayed_call*, i32, %struct.proc_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
