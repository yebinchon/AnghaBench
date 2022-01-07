; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_dir.c_jffs2_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_dir.c_jffs2_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.dentry = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.jffs2_sb_info = type { i32 }
%struct.jffs2_inode_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@DT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @jffs2_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.jffs2_sb_info*, align 8
  %9 = alloca %struct.jffs2_inode_info*, align 8
  %10 = alloca %struct.jffs2_inode_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32 %16)
  store %struct.jffs2_sb_info* %17, %struct.jffs2_sb_info** %8, align 8
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = call %struct.inode* @d_inode(%struct.dentry* %18)
  %20 = call %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode* %19)
  store %struct.jffs2_inode_info* %20, %struct.jffs2_inode_info** %9, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = call %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode* %21)
  store %struct.jffs2_inode_info* %22, %struct.jffs2_inode_info** %10, align 8
  %23 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %9, align 8
  %24 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %102

30:                                               ; preds = %3
  %31 = load %struct.dentry*, %struct.dentry** %5, align 8
  %32 = call i64 @d_is_dir(%struct.dentry* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EPERM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %102

37:                                               ; preds = %30
  %38 = load %struct.dentry*, %struct.dentry** %5, align 8
  %39 = call %struct.inode* @d_inode(%struct.dentry* %38)
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @S_IFMT, align 4
  %43 = and i32 %41, %42
  %44 = ashr i32 %43, 12
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* @DT_REG, align 4
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %47, %37
  %50 = call i32 (...) @JFFS2_NOW()
  store i32 %50, i32* %13, align 4
  %51 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %8, align 8
  %52 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %10, align 8
  %53 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %9, align 8
  %54 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.dentry*, %struct.dentry** %7, align 8
  %60 = getelementptr inbounds %struct.dentry, %struct.dentry* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.dentry*, %struct.dentry** %7, align 8
  %64 = getelementptr inbounds %struct.dentry, %struct.dentry* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @jffs2_do_link(%struct.jffs2_sb_info* %51, %struct.jffs2_inode_info* %52, i32 %57, i32 %58, i32 %62, i32 %66, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %100, label %71

71:                                               ; preds = %49
  %72 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %9, align 8
  %73 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %72, i32 0, i32 0
  %74 = call i32 @mutex_lock(i32* %73)
  %75 = load %struct.dentry*, %struct.dentry** %5, align 8
  %76 = call %struct.inode* @d_inode(%struct.dentry* %75)
  %77 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %9, align 8
  %78 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = call i32 @set_nlink(%struct.inode* %76, i32 %82)
  %84 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %9, align 8
  %85 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load %struct.dentry*, %struct.dentry** %7, align 8
  %88 = load %struct.dentry*, %struct.dentry** %5, align 8
  %89 = call %struct.inode* @d_inode(%struct.dentry* %88)
  %90 = call i32 @d_instantiate(%struct.dentry* %87, %struct.inode* %89)
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @ITIME(i32 %91)
  %93 = load %struct.inode*, %struct.inode** %6, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.inode*, %struct.inode** %6, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 2
  store i32 %92, i32* %96, align 4
  %97 = load %struct.dentry*, %struct.dentry** %5, align 8
  %98 = call %struct.inode* @d_inode(%struct.dentry* %97)
  %99 = call i32 @ihold(%struct.inode* %98)
  br label %100

100:                                              ; preds = %71, %49
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %100, %34, %27
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32) #1

declare dso_local %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i64 @d_is_dir(%struct.dentry*) #1

declare dso_local i32 @JFFS2_NOW(...) #1

declare dso_local i32 @jffs2_do_link(%struct.jffs2_sb_info*, %struct.jffs2_inode_info*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @ITIME(i32) #1

declare dso_local i32 @ihold(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
