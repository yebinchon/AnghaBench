; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.fuse_conn = type { i32 }
%struct.fuse_entry_out = type { i32 }
%struct.qstr = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@ESTALE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@FUSE_ROOT_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*)* @fuse_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @fuse_get_parent(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.fuse_conn*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.fuse_entry_out, align 4
  %9 = alloca %struct.qstr, align 4
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = call %struct.inode* @d_inode(%struct.dentry* %11)
  store %struct.inode* %12, %struct.inode** %4, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %13)
  store %struct.fuse_conn* %14, %struct.fuse_conn** %5, align 8
  %15 = call i32 @QSTR_INIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %16 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %18 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ESTALE, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.dentry* @ERR_PTR(i32 %23)
  store %struct.dentry* %24, %struct.dentry** %2, align 8
  br label %62

25:                                               ; preds = %1
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = call i64 @get_node_id(%struct.inode* %29)
  %31 = call i32 @fuse_lookup_name(i32 %28, i64 %30, %struct.qstr* %9, %struct.fuse_entry_out* %8, %struct.inode** %6)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %25
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @ESTALE, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.dentry* @ERR_PTR(i32 %41)
  store %struct.dentry* %42, %struct.dentry** %2, align 8
  br label %62

43:                                               ; preds = %34
  %44 = load i32, i32* %10, align 4
  %45 = call %struct.dentry* @ERR_PTR(i32 %44)
  store %struct.dentry* %45, %struct.dentry** %2, align 8
  br label %62

46:                                               ; preds = %25
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = call %struct.dentry* @d_obtain_alias(%struct.inode* %47)
  store %struct.dentry* %48, %struct.dentry** %7, align 8
  %49 = load %struct.dentry*, %struct.dentry** %7, align 8
  %50 = call i32 @IS_ERR(%struct.dentry* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %46
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = call i64 @get_node_id(%struct.inode* %53)
  %55 = load i64, i64* @FUSE_ROOT_ID, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.dentry*, %struct.dentry** %7, align 8
  %59 = call i32 @fuse_invalidate_entry_cache(%struct.dentry* %58)
  br label %60

60:                                               ; preds = %57, %52, %46
  %61 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %61, %struct.dentry** %2, align 8
  br label %62

62:                                               ; preds = %60, %43, %39, %21
  %63 = load %struct.dentry*, %struct.dentry** %2, align 8
  ret %struct.dentry* %63
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @QSTR_INIT(i8*, i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i32 @fuse_lookup_name(i32, i64, %struct.qstr*, %struct.fuse_entry_out*, %struct.inode**) #1

declare dso_local i64 @get_node_id(%struct.inode*) #1

declare dso_local %struct.dentry* @d_obtain_alias(%struct.inode*) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @fuse_invalidate_entry_cache(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
