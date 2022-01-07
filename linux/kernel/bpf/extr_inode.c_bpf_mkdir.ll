; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c_bpf_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c_bpf_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32*, i32*, i32 }
%struct.dentry = type { i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@bpf_dir_iops = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @bpf_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @S_IFDIR, align 4
  %15 = or i32 %13, %14
  %16 = call %struct.inode* @bpf_get_inode(i32 %11, %struct.inode* %12, i32 %15)
  store %struct.inode* %16, %struct.inode** %8, align 8
  %17 = load %struct.inode*, %struct.inode** %8, align 8
  %18 = call i64 @IS_ERR(%struct.inode* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = call i32 @PTR_ERR(%struct.inode* %21)
  store i32 %22, i32* %4, align 4
  br label %36

23:                                               ; preds = %3
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 1
  store i32* @bpf_dir_iops, i32** %25, align 8
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  store i32* @simple_dir_operations, i32** %27, align 8
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = call i32 @inc_nlink(%struct.inode* %28)
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = call i32 @inc_nlink(%struct.inode* %30)
  %32 = load %struct.dentry*, %struct.dentry** %6, align 8
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = call i32 @bpf_dentry_finalize(%struct.dentry* %32, %struct.inode* %33, %struct.inode* %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %23, %20
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.inode* @bpf_get_inode(i32, %struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @bpf_dentry_finalize(%struct.dentry*, %struct.inode*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
