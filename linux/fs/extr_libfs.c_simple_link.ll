; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_libfs.c_simple_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_libfs.c_simple_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @simple_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.dentry* %2, %struct.dentry** %6, align 8
  %8 = load %struct.dentry*, %struct.dentry** %4, align 8
  %9 = call %struct.inode* @d_inode(%struct.dentry* %8)
  store %struct.inode* %9, %struct.inode** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %7, align 8
  %11 = call i32 @current_time(%struct.inode* %10)
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  store i32 %11, i32* %15, align 4
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  store i32 %11, i32* %17, align 4
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = call i32 @inc_nlink(%struct.inode* %18)
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = call i32 @ihold(%struct.inode* %20)
  %22 = load %struct.dentry*, %struct.dentry** %6, align 8
  %23 = call i32 @dget(%struct.dentry* %22)
  %24 = load %struct.dentry*, %struct.dentry** %6, align 8
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = call i32 @d_instantiate(%struct.dentry* %24, %struct.inode* %25)
  ret i32 0
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
