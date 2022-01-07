; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_file.c_ovl_file_accessed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_file.c_ovl_file_accessed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32 }
%struct.inode = type { i32, i32 }

@O_NOATIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file*)* @ovl_file_accessed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ovl_file_accessed(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @O_NOATIME, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %49

12:                                               ; preds = %1
  %13 = load %struct.file*, %struct.file** %2, align 8
  %14 = call %struct.inode* @file_inode(%struct.file* %13)
  store %struct.inode* %14, %struct.inode** %3, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = call %struct.inode* @ovl_inode_upper(%struct.inode* %15)
  store %struct.inode* %16, %struct.inode** %4, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = icmp ne %struct.inode* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  br label %49

20:                                               ; preds = %12
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 1
  %25 = call i32 @timespec64_equal(i32* %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = call i32 @timespec64_equal(i32* %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %27, %20
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %34, %27
  %46 = load %struct.file*, %struct.file** %2, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 1
  %48 = call i32 @touch_atime(i32* %47)
  br label %49

49:                                               ; preds = %45, %19, %11
  ret void
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.inode* @ovl_inode_upper(%struct.inode*) #1

declare dso_local i32 @timespec64_equal(i32*, i32*) #1

declare dso_local i32 @touch_atime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
