; ModuleID = '/home/carl/AnghaBench/linux/fs/minix/extr_namei.c_minix_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/minix/extr_namei.c_minix_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @minix_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minix_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
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
  %15 = call %struct.inode* @minix_new_inode(%struct.inode* %11, i32 %14, i32* %8)
  store %struct.inode* %15, %struct.inode** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %7, align 8
  %17 = icmp ne %struct.inode* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %50

19:                                               ; preds = %3
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = call i32 @minix_set_inode(%struct.inode* %20, i32 0)
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = call i32 @inode_inc_link_count(%struct.inode* %22)
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = call i32 @minix_make_empty(%struct.inode* %24, %struct.inode* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %43

30:                                               ; preds = %19
  %31 = load %struct.dentry*, %struct.dentry** %5, align 8
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = call i32 @minix_add_link(%struct.dentry* %31, %struct.inode* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %43

37:                                               ; preds = %30
  %38 = load %struct.dentry*, %struct.dentry** %5, align 8
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = call i32 @d_instantiate(%struct.dentry* %38, %struct.inode* %39)
  br label %41

41:                                               ; preds = %50, %37
  %42 = load i32, i32* %8, align 4
  ret i32 %42

43:                                               ; preds = %36, %29
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = call i32 @inode_dec_link_count(%struct.inode* %44)
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = call i32 @inode_dec_link_count(%struct.inode* %46)
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = call i32 @iput(%struct.inode* %48)
  br label %50

50:                                               ; preds = %43, %18
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = call i32 @inode_dec_link_count(%struct.inode* %51)
  br label %41
}

declare dso_local i32 @inode_inc_link_count(%struct.inode*) #1

declare dso_local %struct.inode* @minix_new_inode(%struct.inode*, i32, i32*) #1

declare dso_local i32 @minix_set_inode(%struct.inode*, i32) #1

declare dso_local i32 @minix_make_empty(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @minix_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
