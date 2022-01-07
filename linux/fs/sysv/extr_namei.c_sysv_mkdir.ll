; ModuleID = '/home/carl/AnghaBench/linux/fs/sysv/extr_namei.c_sysv_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysv/extr_namei.c_sysv_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @sysv_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysv_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @inode_inc_link_count(%struct.inode* %9)
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = load i32, i32* @S_IFDIR, align 4
  %13 = load i32, i32* %6, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.inode* @sysv_new_inode(%struct.inode* %11, i32 %14)
  store %struct.inode* %15, %struct.inode** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = call i32 @PTR_ERR(%struct.inode* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.inode*, %struct.inode** %7, align 8
  %19 = call i64 @IS_ERR(%struct.inode* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %53

22:                                               ; preds = %3
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = call i32 @sysv_set_inode(%struct.inode* %23, i32 0)
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = call i32 @inode_inc_link_count(%struct.inode* %25)
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = call i32 @sysv_make_empty(%struct.inode* %27, %struct.inode* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  br label %46

33:                                               ; preds = %22
  %34 = load %struct.dentry*, %struct.dentry** %5, align 8
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = call i32 @sysv_add_link(%struct.dentry* %34, %struct.inode* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %46

40:                                               ; preds = %33
  %41 = load %struct.dentry*, %struct.dentry** %5, align 8
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = call i32 @d_instantiate(%struct.dentry* %41, %struct.inode* %42)
  br label %44

44:                                               ; preds = %53, %40
  %45 = load i32, i32* %8, align 4
  ret i32 %45

46:                                               ; preds = %39, %32
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = call i32 @inode_dec_link_count(%struct.inode* %47)
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = call i32 @inode_dec_link_count(%struct.inode* %49)
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = call i32 @iput(%struct.inode* %51)
  br label %53

53:                                               ; preds = %46, %21
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = call i32 @inode_dec_link_count(%struct.inode* %54)
  br label %44
}

declare dso_local i32 @inode_inc_link_count(%struct.inode*) #1

declare dso_local %struct.inode* @sysv_new_inode(%struct.inode*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @sysv_set_inode(%struct.inode*, i32) #1

declare dso_local i32 @sysv_make_empty(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @sysv_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
