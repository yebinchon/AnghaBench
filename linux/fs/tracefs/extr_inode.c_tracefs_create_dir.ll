; ModuleID = '/home/carl/AnghaBench/linux/fs/tracefs/extr_inode.c_tracefs_create_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/tracefs/extr_inode.c_tracefs_create_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@simple_dir_inode_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @tracefs_create_dir(i8* %0, %struct.dentry* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dentry*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load %struct.dentry*, %struct.dentry** %4, align 8
  %7 = call %struct.dentry* @__create_dir(i8* %5, %struct.dentry* %6, i32* @simple_dir_inode_operations)
  ret %struct.dentry* %7
}

declare dso_local %struct.dentry* @__create_dir(i8*, %struct.dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
