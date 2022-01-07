; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_trunc_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_trunc_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32, i32, %struct.TYPE_4__, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i32 }

@RES_DINODE = common dso_local global i32 0, align 4
@GFS2_DIF_TRUNC_IN_PROG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*)* @trunc_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trunc_end(%struct.gfs2_inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %3, align 8
  %7 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %8 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %7, i32 0, i32 3
  %9 = call %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_4__* %8)
  store %struct.gfs2_sbd* %9, %struct.gfs2_sbd** %4, align 8
  %10 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %11 = load i32, i32* @RES_DINODE, align 4
  %12 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %10, i32 %11, i32 0)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %78

17:                                               ; preds = %1
  %18 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %19 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %18, i32 0, i32 0
  %20 = call i32 @down_write(i32* %19)
  %21 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %22 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %21, %struct.buffer_head** %5)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %71

26:                                               ; preds = %17
  %27 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %28 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %27, i32 0, i32 3
  %29 = call i32 @i_size_read(%struct.TYPE_4__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %26
  %32 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %33 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %32, i32 0, i32 6
  store i64 0, i64* %33, align 8
  %34 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %35 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %38 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %40 = call i32 @gfs2_buffer_clear_tail(%struct.buffer_head* %39, i32 4)
  %41 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %42 = call i32 @gfs2_ordered_del_inode(%struct.gfs2_inode* %41)
  br label %43

43:                                               ; preds = %31, %26
  %44 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %45 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %44, i32 0, i32 3
  %46 = call i32 @current_time(%struct.TYPE_4__* %45)
  %47 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %48 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %51 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 %46, i32* %52, align 4
  %53 = load i32, i32* @GFS2_DIF_TRUNC_IN_PROG, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %56 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %60 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %63 = call i32 @gfs2_trans_add_meta(i32 %61, %struct.buffer_head* %62)
  %64 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %66 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %64, i32 %67)
  %69 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %70 = call i32 @brelse(%struct.buffer_head* %69)
  br label %71

71:                                               ; preds = %43, %25
  %72 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %73 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %72, i32 0, i32 0
  %74 = call i32 @up_write(i32* %73)
  %75 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %76 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %75)
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %71, %15
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_4__*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @i_size_read(%struct.TYPE_4__*) #1

declare dso_local i32 @gfs2_buffer_clear_tail(%struct.buffer_head*, i32) #1

declare dso_local i32 @gfs2_ordered_del_inode(%struct.gfs2_inode*) #1

declare dso_local i32 @current_time(%struct.TYPE_4__*) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
