; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_aa_mk_null_file.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_aa_mk_null_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.dentry = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.vfsmount = type { i32 }
%struct.inode = type { i32, i32, i32, i32, i32 }

@NULL_FILE_NAME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUGO = common dso_local global i32 0, align 4
@MEM_MAJOR = common dso_local global i32 0, align 4
@aa_null = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*)* @aa_mk_null_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aa_mk_null_file(%struct.dentry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.vfsmount* null, %struct.vfsmount** %4, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @simple_pin_fs(i32 %13, %struct.vfsmount** %4, i32* %7)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %2, align 4
  br label %90

19:                                               ; preds = %1
  %20 = load %struct.dentry*, %struct.dentry** %3, align 8
  %21 = call i32 @d_inode(%struct.dentry* %20)
  %22 = call i32 @inode_lock(i32 %21)
  %23 = load i32, i32* @NULL_FILE_NAME, align 4
  %24 = load %struct.dentry*, %struct.dentry** %3, align 8
  %25 = load i32, i32* @NULL_FILE_NAME, align 4
  %26 = call i32 @strlen(i32 %25)
  %27 = call %struct.dentry* @lookup_one_len(i32 %23, %struct.dentry* %24, i32 %26)
  store %struct.dentry* %27, %struct.dentry** %5, align 8
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = call i64 @IS_ERR(%struct.dentry* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %19
  %32 = load %struct.dentry*, %struct.dentry** %5, align 8
  %33 = call i32 @PTR_ERR(%struct.dentry* %32)
  store i32 %33, i32* %8, align 4
  br label %84

34:                                               ; preds = %19
  %35 = load %struct.dentry*, %struct.dentry** %3, align 8
  %36 = getelementptr inbounds %struct.dentry, %struct.dentry* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.inode* @new_inode(i32 %39)
  store %struct.inode* %40, %struct.inode** %6, align 8
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = icmp ne %struct.inode* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  br label %81

46:                                               ; preds = %34
  %47 = call i32 (...) @get_next_ino()
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @S_IFCHR, align 4
  %51 = load i32, i32* @S_IRUGO, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @S_IWUGO, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = call i32 @current_time(%struct.inode* %57)
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 2
  store i32 %58, i32* %62, align 4
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 3
  store i32 %58, i32* %64, align 4
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = load i32, i32* @S_IFCHR, align 4
  %67 = load i32, i32* @S_IRUGO, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @S_IWUGO, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @MEM_MAJOR, align 4
  %72 = call i32 @MKDEV(i32 %71, i32 3)
  %73 = call i32 @init_special_inode(%struct.inode* %65, i32 %70, i32 %72)
  %74 = load %struct.dentry*, %struct.dentry** %5, align 8
  %75 = load %struct.inode*, %struct.inode** %6, align 8
  %76 = call i32 @d_instantiate(%struct.dentry* %74, %struct.inode* %75)
  %77 = load %struct.dentry*, %struct.dentry** %5, align 8
  %78 = call i32 @dget(%struct.dentry* %77)
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aa_null, i32 0, i32 1), align 4
  %79 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %80 = call i32 @mntget(%struct.vfsmount* %79)
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aa_null, i32 0, i32 0), align 4
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %46, %43
  %82 = load %struct.dentry*, %struct.dentry** %5, align 8
  %83 = call i32 @dput(%struct.dentry* %82)
  br label %84

84:                                               ; preds = %81, %31
  %85 = load %struct.dentry*, %struct.dentry** %3, align 8
  %86 = call i32 @d_inode(%struct.dentry* %85)
  %87 = call i32 @inode_unlock(i32 %86)
  %88 = call i32 @simple_release_fs(%struct.vfsmount** %4, i32* %7)
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %84, %17
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @simple_pin_fs(i32, %struct.vfsmount**, i32*) #1

declare dso_local i32 @inode_lock(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local %struct.dentry* @lookup_one_len(i32, %struct.dentry*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local i32 @get_next_ino(...) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @mntget(%struct.vfsmount*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @inode_unlock(i32) #1

declare dso_local i32 @simple_release_fs(%struct.vfsmount**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
