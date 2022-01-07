; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_cred.c_set_create_files_as.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_cred.c_set_create_files_as.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32, i32 }
%struct.inode = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_create_files_as(%struct.cred* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cred*, align 8
  %5 = alloca %struct.inode*, align 8
  store %struct.cred* %0, %struct.cred** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %6 = load %struct.inode*, %struct.inode** %5, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @uid_valid(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @gid_valid(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11, %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %34

20:                                               ; preds = %11
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cred*, %struct.cred** %4, align 8
  %25 = getelementptr inbounds %struct.cred, %struct.cred* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.inode*, %struct.inode** %5, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cred*, %struct.cred** %4, align 8
  %30 = getelementptr inbounds %struct.cred, %struct.cred* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.cred*, %struct.cred** %4, align 8
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = call i32 @security_kernel_create_files_as(%struct.cred* %31, %struct.inode* %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %20, %17
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @uid_valid(i32) #1

declare dso_local i32 @gid_valid(i32) #1

declare dso_local i32 @security_kernel_create_files_as(%struct.cred*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
