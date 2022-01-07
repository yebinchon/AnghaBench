; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_file.c_hpfs_get_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_file.c_hpfs_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.buffer_head*, i32)* @hpfs_get_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_get_block(%struct.inode* %0, i32 %1, %struct.buffer_head* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @hpfs_lock(i32 %14)
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @hpfs_bmap(%struct.inode* %16, i32 %17, i32* %11)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %63

21:                                               ; preds = %4
  %22 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %23 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 9
  %26 = load i32, i32* %11, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 9
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %28, %21
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @hpfs_search_hotfix_map_for_range(i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %33
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @hpfs_search_hotfix_map(i32 %49, i32 %50)
  store i32 %51, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %52

52:                                               ; preds = %46, %33
  %53 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @map_bh(%struct.buffer_head* %53, i32 %56, i32 %57)
  %59 = load i32, i32* %11, align 4
  %60 = shl i32 %59, 9
  %61 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %62 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %128

63:                                               ; preds = %4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  br label %128

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = shl i32 %68, 9
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = call %struct.TYPE_2__* @hpfs_i(%struct.inode* %70)
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %69, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = call i32 (...) @BUG()
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %9, align 4
  br label %129

79:                                               ; preds = %67
  %80 = load %struct.inode*, %struct.inode** %5, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.inode*, %struct.inode** %5, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.inode*, %struct.inode** %5, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %88, 1
  %90 = call i32 @hpfs_add_sector_to_btree(i32 %82, i32 %85, i32 1, i64 %89)
  store i32 %90, i32* %10, align 4
  %91 = icmp eq i32 %90, -1
  br i1 %91, label %92, label %106

92:                                               ; preds = %79
  %93 = load %struct.inode*, %struct.inode** %5, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.inode*, %struct.inode** %5, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.inode*, %struct.inode** %5, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %101, 1
  %103 = call i32 @hpfs_truncate_btree(i32 %95, i32 %98, i32 1, i64 %102)
  %104 = load i32, i32* @ENOSPC, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %9, align 4
  br label %129

106:                                              ; preds = %79
  %107 = load %struct.inode*, %struct.inode** %5, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 1
  store i64 %110, i64* %108, align 8
  %111 = load %struct.inode*, %struct.inode** %5, align 8
  %112 = call %struct.TYPE_2__* @hpfs_i(%struct.inode* %111)
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 512
  store i32 %115, i32* %113, align 4
  %116 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %117 = call i32 @set_buffer_new(%struct.buffer_head* %116)
  %118 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %119 = load %struct.inode*, %struct.inode** %5, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.inode*, %struct.inode** %5, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @hpfs_search_hotfix_map(i32 %124, i32 %125)
  %127 = call i32 @map_bh(%struct.buffer_head* %118, i32 %121, i32 %126)
  br label %128

128:                                              ; preds = %106, %66, %52
  store i32 0, i32* %9, align 4
  br label %129

129:                                              ; preds = %128, %92, %75
  %130 = load %struct.inode*, %struct.inode** %5, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @hpfs_unlock(i32 %132)
  %134 = load i32, i32* %9, align 4
  ret i32 %134
}

declare dso_local i32 @hpfs_lock(i32) #1

declare dso_local i32 @hpfs_bmap(%struct.inode*, i32, i32*) #1

declare dso_local i32 @hpfs_search_hotfix_map_for_range(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hpfs_search_hotfix_map(i32, i32) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @hpfs_i(%struct.inode*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @hpfs_add_sector_to_btree(i32, i32, i32, i64) #1

declare dso_local i32 @hpfs_truncate_btree(i32, i32, i32, i64) #1

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @hpfs_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
