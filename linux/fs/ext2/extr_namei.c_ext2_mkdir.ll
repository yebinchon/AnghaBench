; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_namei.c_ext2_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_namei.c_ext2_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__*, i32, i32*, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.dentry = type { i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@ext2_dir_inode_operations = common dso_local global i32 0, align 4
@ext2_dir_operations = common dso_local global i32 0, align 4
@NOBH = common dso_local global i32 0, align 4
@ext2_nobh_aops = common dso_local global i32 0, align 4
@ext2_aops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @ext2_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = call i32 @dquot_initialize(%struct.inode* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %4, align 4
  br label %85

16:                                               ; preds = %3
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call i32 @inode_inc_link_count(%struct.inode* %17)
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = load i32, i32* @S_IFDIR, align 4
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = call %struct.inode* @ext2_new_inode(%struct.inode* %19, i32 %22, i32* %24)
  store %struct.inode* %25, %struct.inode** %8, align 8
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = call i32 @PTR_ERR(%struct.inode* %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = call i64 @IS_ERR(%struct.inode* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  br label %82

32:                                               ; preds = %16
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 3
  store i32* @ext2_dir_inode_operations, i32** %34, align 8
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 2
  store i32* @ext2_dir_operations, i32** %36, align 8
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @NOBH, align 4
  %41 = call i64 @test_opt(i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32* @ext2_nobh_aops, i32** %47, align 8
  br label %53

48:                                               ; preds = %32
  %49 = load %struct.inode*, %struct.inode** %8, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32* @ext2_aops, i32** %52, align 8
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = call i32 @inode_inc_link_count(%struct.inode* %54)
  %56 = load %struct.inode*, %struct.inode** %8, align 8
  %57 = load %struct.inode*, %struct.inode** %5, align 8
  %58 = call i32 @ext2_make_empty(%struct.inode* %56, %struct.inode* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %75

62:                                               ; preds = %53
  %63 = load %struct.dentry*, %struct.dentry** %6, align 8
  %64 = load %struct.inode*, %struct.inode** %8, align 8
  %65 = call i32 @ext2_add_link(%struct.dentry* %63, %struct.inode* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %75

69:                                               ; preds = %62
  %70 = load %struct.dentry*, %struct.dentry** %6, align 8
  %71 = load %struct.inode*, %struct.inode** %8, align 8
  %72 = call i32 @d_instantiate_new(%struct.dentry* %70, %struct.inode* %71)
  br label %73

73:                                               ; preds = %82, %69
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %4, align 4
  br label %85

75:                                               ; preds = %68, %61
  %76 = load %struct.inode*, %struct.inode** %8, align 8
  %77 = call i32 @inode_dec_link_count(%struct.inode* %76)
  %78 = load %struct.inode*, %struct.inode** %8, align 8
  %79 = call i32 @inode_dec_link_count(%struct.inode* %78)
  %80 = load %struct.inode*, %struct.inode** %8, align 8
  %81 = call i32 @discard_new_inode(%struct.inode* %80)
  br label %82

82:                                               ; preds = %75, %31
  %83 = load %struct.inode*, %struct.inode** %5, align 8
  %84 = call i32 @inode_dec_link_count(%struct.inode* %83)
  br label %73

85:                                               ; preds = %73, %14
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @inode_inc_link_count(%struct.inode*) #1

declare dso_local %struct.inode* @ext2_new_inode(%struct.inode*, i32, i32*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i64 @test_opt(i32, i32) #1

declare dso_local i32 @ext2_make_empty(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ext2_add_link(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @d_instantiate_new(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @discard_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
