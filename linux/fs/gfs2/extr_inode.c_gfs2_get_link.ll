; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_get_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_get_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.delayed_call = type { i32 }
%struct.gfs2_inode = type { i32, i32 }
%struct.gfs2_holder = type { i32 }
%struct.buffer_head = type { i64 }

@ECHILD = common dso_local global i32 0, align 4
@LM_ST_SHARED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@kfree_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* @gfs2_get_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gfs2_get_link(%struct.dentry* %0, %struct.inode* %1, %struct.delayed_call* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.delayed_call*, align 8
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca %struct.gfs2_holder, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.delayed_call* %2, %struct.delayed_call** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %14)
  store %struct.gfs2_inode* %15, %struct.gfs2_inode** %8, align 8
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = icmp ne %struct.dentry* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ECHILD, align 4
  %20 = sub nsw i32 0, %19
  %21 = call i8* @ERR_PTR(i32 %20)
  store i8* %21, i8** %4, align 8
  br label %90

22:                                               ; preds = %3
  %23 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %24 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @LM_ST_SHARED, align 4
  %27 = call i32 @gfs2_holder_init(i32 %25, i32 %26, i32 0, %struct.gfs2_holder* %9)
  %28 = call i32 @gfs2_glock_nq(%struct.gfs2_holder* %9)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = call i32 @gfs2_holder_uninit(%struct.gfs2_holder* %9)
  %33 = load i32, i32* %13, align 4
  %34 = call i8* @ERR_PTR(i32 %33)
  store i8* %34, i8** %4, align 8
  br label %90

35:                                               ; preds = %22
  %36 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %37 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %36, i32 0, i32 0
  %38 = call i64 @i_size_read(i32* %37)
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %44 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %43)
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  %47 = call i8* @ERR_PTR(i32 %46)
  store i8* %47, i8** %12, align 8
  br label %78

48:                                               ; preds = %35
  %49 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %50 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %49, %struct.buffer_head** %10)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %13, align 4
  %55 = call i8* @ERR_PTR(i32 %54)
  store i8* %55, i8** %12, align 8
  br label %78

56:                                               ; preds = %48
  %57 = load i32, i32* %11, align 4
  %58 = add i32 %57, 1
  %59 = load i32, i32* @GFP_NOFS, align 4
  %60 = call i8* @kzalloc(i32 %58, i32 %59)
  store i8* %60, i8** %12, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  %66 = call i8* @ERR_PTR(i32 %65)
  store i8* %66, i8** %12, align 8
  br label %75

67:                                               ; preds = %56
  %68 = load i8*, i8** %12, align 8
  %69 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %70 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %71, 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @memcpy(i8* %68, i64 %72, i32 %73)
  br label %75

75:                                               ; preds = %67, %63
  %76 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %77 = call i32 @brelse(%struct.buffer_head* %76)
  br label %78

78:                                               ; preds = %75, %53, %42
  %79 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %9)
  %80 = load i8*, i8** %12, align 8
  %81 = call i32 @IS_ERR(i8* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load %struct.delayed_call*, %struct.delayed_call** %7, align 8
  %85 = load i32, i32* @kfree_link, align 4
  %86 = load i8*, i8** %12, align 8
  %87 = call i32 @set_delayed_call(%struct.delayed_call* %84, i32 %85, i8* %86)
  br label %88

88:                                               ; preds = %83, %78
  %89 = load i8*, i8** %12, align 8
  store i8* %89, i8** %4, align 8
  br label %90

90:                                               ; preds = %88, %31, %18
  %91 = load i8*, i8** %4, align 8
  ret i8* %91
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @gfs2_holder_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_glock_nq(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_holder_uninit(%struct.gfs2_holder*) #1

declare dso_local i64 @i_size_read(i32*) #1

declare dso_local i32 @gfs2_consist_inode(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i32 @set_delayed_call(%struct.delayed_call*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
