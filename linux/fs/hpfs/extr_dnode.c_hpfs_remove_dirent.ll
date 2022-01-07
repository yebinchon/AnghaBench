; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_hpfs_remove_dirent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_hpfs_remove_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.hpfs_dirent = type { i64, i64, i64 }
%struct.quad_buffer_head = type { %struct.dnode* }
%struct.dnode = type { i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [73 x i8] c"hpfs_remove_dirent: attempt to delete first or last dirent in dnode %08x\00", align 1
@FREE_DNODES_DEL = common dso_local global i32 0, align 4
@hpfs_pos_del = common dso_local global i32 0, align 4
@hpfs_pos_subst = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpfs_remove_dirent(%struct.inode* %0, i64 %1, %struct.hpfs_dirent* %2, %struct.quad_buffer_head* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hpfs_dirent*, align 8
  %10 = alloca %struct.quad_buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dnode*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.hpfs_dirent* %2, %struct.hpfs_dirent** %9, align 8
  store %struct.quad_buffer_head* %3, %struct.quad_buffer_head** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %10, align 8
  %17 = getelementptr inbounds %struct.quad_buffer_head, %struct.quad_buffer_head* %16, i32 0, i32 0
  %18 = load %struct.dnode*, %struct.dnode** %17, align 8
  store %struct.dnode* %18, %struct.dnode** %12, align 8
  store i64 0, i64* %13, align 8
  %19 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %9, align 8
  %20 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %5
  %24 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %9, align 8
  %25 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23, %5
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @hpfs_error(i32 %31, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %10, align 8
  %35 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %34)
  store i32 1, i32* %6, align 4
  br label %118

36:                                               ; preds = %23
  %37 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %9, align 8
  %38 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %9, align 8
  %43 = call i64 @de_down_pointer(%struct.hpfs_dirent* %42)
  store i64 %43, i64* %13, align 8
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %44
  %48 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %9, align 8
  %49 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %47
  %53 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %9, align 8
  %54 = load %struct.dnode*, %struct.dnode** %12, align 8
  %55 = call %struct.hpfs_dirent* @dnode_first_de(%struct.dnode* %54)
  %56 = icmp eq %struct.hpfs_dirent* %53, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %52
  %58 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %9, align 8
  %59 = call %struct.TYPE_2__* @de_next_de(%struct.hpfs_dirent* %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %57, %47
  %64 = load %struct.inode*, %struct.inode** %7, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @FREE_DNODES_DEL, align 4
  %68 = call i64 @hpfs_check_free_dnodes(i32 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %10, align 8
  %72 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %71)
  store i32 2, i32* %6, align 4
  br label %118

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %57, %52, %44
  %75 = load %struct.inode*, %struct.inode** %7, align 8
  %76 = load i32, i32* @hpfs_pos_del, align 4
  %77 = load %struct.dnode*, %struct.dnode** %12, align 8
  %78 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %9, align 8
  %79 = call i32 @get_pos(%struct.dnode* %77, %struct.hpfs_dirent* %78)
  store i32 %79, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  %81 = call i32 @for_all_poss(%struct.inode* %75, i32 %76, i32 %80, i32 1)
  %82 = load %struct.inode*, %struct.inode** %7, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.dnode*, %struct.dnode** %12, align 8
  %86 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %9, align 8
  %87 = call i32 @hpfs_delete_de(i32 %84, %struct.dnode* %85, %struct.hpfs_dirent* %86)
  %88 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %10, align 8
  %89 = call i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head* %88)
  %90 = load %struct.quad_buffer_head*, %struct.quad_buffer_head** %10, align 8
  %91 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %90)
  %92 = load i64, i64* %13, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %114

94:                                               ; preds = %74
  %95 = load %struct.inode*, %struct.inode** %7, align 8
  %96 = load i64, i64* %13, align 8
  %97 = load i64, i64* %8, align 8
  %98 = call i64 @move_to_top(%struct.inode* %95, i64 %96, i64 %97)
  store i64 %98, i64* %15, align 8
  %99 = load %struct.inode*, %struct.inode** %7, align 8
  %100 = load i32, i32* @hpfs_pos_subst, align 4
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @for_all_poss(%struct.inode* %99, i32 %100, i32 5, i32 %101)
  %103 = load i64, i64* %15, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %94
  %106 = load %struct.inode*, %struct.inode** %7, align 8
  %107 = load i64, i64* %15, align 8
  %108 = call i32 @delete_empty_dnode(%struct.inode* %106, i64 %107)
  br label %109

109:                                              ; preds = %105, %94
  %110 = load i64, i64* %15, align 8
  %111 = icmp ne i64 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %6, align 4
  br label %118

114:                                              ; preds = %74
  %115 = load %struct.inode*, %struct.inode** %7, align 8
  %116 = load i64, i64* %8, align 8
  %117 = call i32 @delete_empty_dnode(%struct.inode* %115, i64 %116)
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %114, %109, %70, %28
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i32 @hpfs_error(i32, i8*, i64) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i64 @de_down_pointer(%struct.hpfs_dirent*) #1

declare dso_local %struct.hpfs_dirent* @dnode_first_de(%struct.dnode*) #1

declare dso_local %struct.TYPE_2__* @de_next_de(%struct.hpfs_dirent*) #1

declare dso_local i64 @hpfs_check_free_dnodes(i32, i32) #1

declare dso_local i32 @for_all_poss(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @get_pos(%struct.dnode*, %struct.hpfs_dirent*) #1

declare dso_local i32 @hpfs_delete_de(i32, %struct.dnode*, %struct.hpfs_dirent*) #1

declare dso_local i32 @hpfs_mark_4buffers_dirty(%struct.quad_buffer_head*) #1

declare dso_local i64 @move_to_top(%struct.inode*, i64, i64) #1

declare dso_local i32 @delete_empty_dnode(%struct.inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
