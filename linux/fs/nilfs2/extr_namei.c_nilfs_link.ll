; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_namei.c_nilfs_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_namei.c_nilfs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { i32 }
%struct.nilfs_transaction_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @nilfs_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.nilfs_transaction_info, align 4
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = call %struct.inode* @d_inode(%struct.dentry* %11)
  store %struct.inode* %12, %struct.inode** %8, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @nilfs_transaction_begin(i32 %15, %struct.nilfs_transaction_info* %9, i32 1)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %54

21:                                               ; preds = %3
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = call i32 @current_time(%struct.inode* %22)
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = call i32 @inode_inc_link_count(%struct.inode* %26)
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = call i32 @ihold(%struct.inode* %28)
  %30 = load %struct.dentry*, %struct.dentry** %7, align 8
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = call i32 @nilfs_add_link(%struct.dentry* %30, %struct.inode* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %21
  %36 = load %struct.dentry*, %struct.dentry** %7, align 8
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = call i32 @d_instantiate(%struct.dentry* %36, %struct.inode* %37)
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @nilfs_transaction_commit(i32 %41)
  store i32 %42, i32* %10, align 4
  br label %52

43:                                               ; preds = %21
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = call i32 @inode_dec_link_count(%struct.inode* %44)
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = call i32 @iput(%struct.inode* %46)
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @nilfs_transaction_abort(i32 %50)
  br label %52

52:                                               ; preds = %43, %35
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %19
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @nilfs_transaction_begin(i32, %struct.nilfs_transaction_info*, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @inode_inc_link_count(%struct.inode*) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i32 @nilfs_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @nilfs_transaction_commit(i32) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @nilfs_transaction_abort(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
