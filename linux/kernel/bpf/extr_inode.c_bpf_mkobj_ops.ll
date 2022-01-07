; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c_bpf_mkobj_ops.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_inode.c_bpf_mkobj_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i8*, %struct.file_operations*, %struct.inode_operations*, i32 }
%struct.inode_operations = type { i32 }
%struct.file_operations = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32, i8*, %struct.inode_operations*, %struct.file_operations*)* @bpf_mkobj_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_mkobj_ops(%struct.dentry* %0, i32 %1, i8* %2, %struct.inode_operations* %3, %struct.file_operations* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.inode_operations*, align 8
  %11 = alloca %struct.file_operations*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store %struct.inode_operations* %3, %struct.inode_operations** %10, align 8
  store %struct.file_operations* %4, %struct.file_operations** %11, align 8
  %14 = load %struct.dentry*, %struct.dentry** %7, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %12, align 8
  %19 = load %struct.inode*, %struct.inode** %12, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.inode*, %struct.inode** %12, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.inode* @bpf_get_inode(i32 %21, %struct.inode* %22, i32 %23)
  store %struct.inode* %24, %struct.inode** %13, align 8
  %25 = load %struct.inode*, %struct.inode** %13, align 8
  %26 = call i64 @IS_ERR(%struct.inode* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load %struct.inode*, %struct.inode** %13, align 8
  %30 = call i32 @PTR_ERR(%struct.inode* %29)
  store i32 %30, i32* %6, align 4
  br label %45

31:                                               ; preds = %5
  %32 = load %struct.inode_operations*, %struct.inode_operations** %10, align 8
  %33 = load %struct.inode*, %struct.inode** %13, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 2
  store %struct.inode_operations* %32, %struct.inode_operations** %34, align 8
  %35 = load %struct.file_operations*, %struct.file_operations** %11, align 8
  %36 = load %struct.inode*, %struct.inode** %13, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  store %struct.file_operations* %35, %struct.file_operations** %37, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load %struct.inode*, %struct.inode** %13, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load %struct.dentry*, %struct.dentry** %7, align 8
  %42 = load %struct.inode*, %struct.inode** %13, align 8
  %43 = load %struct.inode*, %struct.inode** %12, align 8
  %44 = call i32 @bpf_dentry_finalize(%struct.dentry* %41, %struct.inode* %42, %struct.inode* %43)
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %31, %28
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local %struct.inode* @bpf_get_inode(i32, %struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @bpf_dentry_finalize(%struct.dentry*, %struct.inode*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
