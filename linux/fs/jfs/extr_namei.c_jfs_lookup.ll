; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_namei.c_jfs_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_namei.c_jfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.btstack = type { i32 }
%struct.component_name = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"jfs_lookup: name = %pd\00", align 1
@JFS_LOOKUP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"jfs_lookup: dtSearch returned %d\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"jfs_lookup: iget failed on inum %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @jfs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @jfs_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btstack, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.component_name, align 4
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.dentry*, %struct.dentry** %6, align 8
  %14 = bitcast %struct.dentry* %13 to %struct.inode*
  %15 = call i32 @jfs_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.inode* %14)
  %16 = load %struct.dentry*, %struct.dentry** %6, align 8
  %17 = bitcast %struct.dentry* %16 to %struct.inode*
  %18 = call i32 @get_UCSname(%struct.component_name* %11, %struct.inode* %17)
  store i32 %18, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* %12, align 4
  %22 = call %struct.inode* @ERR_PTR(i32 %21)
  %23 = bitcast %struct.inode* %22 to %struct.dentry*
  store %struct.dentry* %23, %struct.dentry** %4, align 8
  br label %63

24:                                               ; preds = %3
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = load i32, i32* @JFS_LOOKUP, align 4
  %27 = call i32 @dtSearch(%struct.inode* %25, %struct.component_name* %11, i64* %9, %struct.btstack* %8, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = call i32 @free_UCSname(%struct.component_name* %11)
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store %struct.inode* null, %struct.inode** %10, align 8
  br label %57

34:                                               ; preds = %24
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @jfs_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %12, align 4
  %41 = call %struct.inode* @ERR_PTR(i32 %40)
  store %struct.inode* %41, %struct.inode** %10, align 8
  br label %56

42:                                               ; preds = %34
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %9, align 8
  %47 = call %struct.inode* @jfs_iget(i32 %45, i64 %46)
  store %struct.inode* %47, %struct.inode** %10, align 8
  %48 = load %struct.inode*, %struct.inode** %10, align 8
  %49 = call i64 @IS_ERR(%struct.inode* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i64, i64* %9, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @jfs_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %42
  br label %56

56:                                               ; preds = %55, %37
  br label %57

57:                                               ; preds = %56, %33
  %58 = load %struct.inode*, %struct.inode** %10, align 8
  %59 = load %struct.dentry*, %struct.dentry** %6, align 8
  %60 = bitcast %struct.dentry* %59 to %struct.inode*
  %61 = call %struct.inode* @d_splice_alias(%struct.inode* %58, %struct.inode* %60)
  %62 = bitcast %struct.inode* %61 to %struct.dentry*
  store %struct.dentry* %62, %struct.dentry** %4, align 8
  br label %63

63:                                               ; preds = %57, %20
  %64 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %64
}

declare dso_local i32 @jfs_info(i8*, %struct.inode*) #1

declare dso_local i32 @get_UCSname(%struct.component_name*, %struct.inode*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @dtSearch(%struct.inode*, %struct.component_name*, i64*, %struct.btstack*, i32) #1

declare dso_local i32 @free_UCSname(%struct.component_name*) #1

declare dso_local i32 @jfs_err(i8*, i32) #1

declare dso_local %struct.inode* @jfs_iget(i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.inode* @d_splice_alias(%struct.inode*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
