; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_ea_set_simple_noalloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_xattr.c_ea_set_simple_noalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.buffer_head = type { i32 }
%struct.gfs2_ea_header = type { i32 }
%struct.ea_set = type { i64, i64, %struct.gfs2_ea_request* }
%struct.gfs2_ea_request = type { i32 }

@RES_DINODE = common dso_local global i64 0, align 8
@RES_EATTR = common dso_local global i32 0, align 4
@I_DIRTY_DATASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.buffer_head*, %struct.gfs2_ea_header*, %struct.ea_set*)* @ea_set_simple_noalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_set_simple_noalloc(%struct.gfs2_inode* %0, %struct.buffer_head* %1, %struct.gfs2_ea_header* %2, %struct.ea_set* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.gfs2_ea_header*, align 8
  %9 = alloca %struct.ea_set*, align 8
  %10 = alloca %struct.gfs2_ea_request*, align 8
  %11 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store %struct.gfs2_ea_header* %2, %struct.gfs2_ea_header** %8, align 8
  store %struct.ea_set* %3, %struct.ea_set** %9, align 8
  %12 = load %struct.ea_set*, %struct.ea_set** %9, align 8
  %13 = getelementptr inbounds %struct.ea_set, %struct.ea_set* %12, i32 0, i32 2
  %14 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %13, align 8
  store %struct.gfs2_ea_request* %14, %struct.gfs2_ea_request** %10, align 8
  %15 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %16 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %15, i32 0, i32 0
  %17 = call i32 @GFS2_SB(%struct.TYPE_4__* %16)
  %18 = load i64, i64* @RES_DINODE, align 8
  %19 = load i32, i32* @RES_EATTR, align 4
  %20 = mul nsw i32 2, %19
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = call i32 @gfs2_trans_begin(i32 %17, i64 %22, i32 0)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %5, align 4
  br label %72

28:                                               ; preds = %4
  %29 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %30 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %33 = call i32 @gfs2_trans_add_meta(i32 %31, %struct.buffer_head* %32)
  %34 = load %struct.ea_set*, %struct.ea_set** %9, align 8
  %35 = getelementptr inbounds %struct.ea_set, %struct.ea_set* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %8, align 8
  %40 = call %struct.gfs2_ea_header* @ea_split_ea(%struct.gfs2_ea_header* %39)
  store %struct.gfs2_ea_header* %40, %struct.gfs2_ea_header** %8, align 8
  br label %41

41:                                               ; preds = %38, %28
  %42 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %43 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %8, align 8
  %44 = load %struct.gfs2_ea_request*, %struct.gfs2_ea_request** %10, align 8
  %45 = call i32 @ea_write(%struct.gfs2_inode* %42, %struct.gfs2_ea_header* %43, %struct.gfs2_ea_request* %44)
  %46 = load %struct.ea_set*, %struct.ea_set** %9, align 8
  %47 = getelementptr inbounds %struct.ea_set, %struct.ea_set* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %52 = load %struct.ea_set*, %struct.ea_set** %9, align 8
  %53 = getelementptr inbounds %struct.ea_set, %struct.ea_set* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @ea_set_remove_stuffed(%struct.gfs2_inode* %51, i64 %54)
  br label %56

56:                                               ; preds = %50, %41
  %57 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %58 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %57, i32 0, i32 0
  %59 = call i32 @current_time(%struct.TYPE_4__* %58)
  %60 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %61 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %64 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %63, i32 0, i32 0
  %65 = load i32, i32* @I_DIRTY_DATASYNC, align 4
  %66 = call i32 @__mark_inode_dirty(%struct.TYPE_4__* %64, i32 %65)
  %67 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %68 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %67, i32 0, i32 0
  %69 = call i32 @GFS2_SB(%struct.TYPE_4__* %68)
  %70 = call i32 @gfs2_trans_end(i32 %69)
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %56, %26
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @gfs2_trans_begin(i32, i64, i32) #1

declare dso_local i32 @GFS2_SB(%struct.TYPE_4__*) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local %struct.gfs2_ea_header* @ea_split_ea(%struct.gfs2_ea_header*) #1

declare dso_local i32 @ea_write(%struct.gfs2_inode*, %struct.gfs2_ea_header*, %struct.gfs2_ea_request*) #1

declare dso_local i32 @ea_set_remove_stuffed(%struct.gfs2_inode*, i64) #1

declare dso_local i32 @current_time(%struct.TYPE_4__*) #1

declare dso_local i32 @__mark_inode_dirty(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @gfs2_trans_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
