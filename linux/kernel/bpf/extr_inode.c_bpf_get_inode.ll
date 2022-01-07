; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c_bpf_get_inode.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c_bpf_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32, i32, i32, i32 }

@S_IFMT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, %struct.inode*, i32)* @bpf_get_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @bpf_get_inode(%struct.super_block* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @S_IFMT, align 4
  %11 = and i32 %9, %10
  switch i32 %11, label %13 [
    i32 130, label %12
    i32 128, label %12
    i32 129, label %12
  ]

12:                                               ; preds = %3, %3, %3
  br label %17

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.inode* @ERR_PTR(i32 %15)
  store %struct.inode* %16, %struct.inode** %4, align 8
  br label %49

17:                                               ; preds = %12
  %18 = load %struct.super_block*, %struct.super_block** %5, align 8
  %19 = call %struct.inode* @new_inode(%struct.super_block* %18)
  store %struct.inode* %19, %struct.inode** %8, align 8
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = icmp ne %struct.inode* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOSPC, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.inode* @ERR_PTR(i32 %24)
  store %struct.inode* %25, %struct.inode** %4, align 8
  br label %49

26:                                               ; preds = %17
  %27 = call i32 (...) @get_next_ino()
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = call i32 @current_time(%struct.inode* %30)
  %32 = load %struct.inode*, %struct.inode** %8, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.inode*, %struct.inode** %8, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @inode_init_owner(%struct.inode* %44, %struct.inode* %45, i32 %46)
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %48, %struct.inode** %4, align 8
  br label %49

49:                                               ; preds = %26, %22, %13
  %50 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %50
}

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @get_next_ino(...) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @inode_init_owner(%struct.inode*, %struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
