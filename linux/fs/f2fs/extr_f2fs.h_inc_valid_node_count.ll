; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_inc_valid_node_count.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_inc_valid_node_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i64 }

@FAULT_BLOCK = common dso_local global i32 0, align 4
@SBI_CP_DISABLED = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, %struct.inode*, i32)* @inc_valid_node_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inc_valid_node_count(%struct.f2fs_sb_info* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_2__, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %3
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = icmp ne %struct.inode* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call i32 @dquot_alloc_inode(%struct.inode* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %4, align 4
  br label %158

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %15
  br label %35

27:                                               ; preds = %3
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = call i32 @dquot_reserve_block(%struct.inode* %28, i32 1)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %4, align 4
  br label %158

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %26
  %36 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %37 = load i32, i32* @FAULT_BLOCK, align 4
  %38 = call i64 @time_to_inject(%struct.f2fs_sb_info* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @FAULT_BLOCK, align 4
  %42 = call i32 @f2fs_show_injection_info(i32 %41)
  br label %142

43:                                               ; preds = %35
  %44 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %45 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %44, i32 0, i32 6
  %46 = call i32 @spin_lock(i32* %45)
  %47 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %48 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %51 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add i32 %49, %52
  %54 = add i32 %53, 1
  store i32 %54, i32* %8, align 4
  %55 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = call i32 @__allow_reserved_blocks(%struct.f2fs_sb_info* %55, %struct.inode* %56, i32 0)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %43
  %60 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %61 = call i64 @F2FS_OPTION(%struct.f2fs_sb_info* %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %59, %43
  %70 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %71 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %10, align 4
  %73 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %74 = load i32, i32* @SBI_CP_DISABLED, align 4
  %75 = call i32 @is_sbi_flag_set(%struct.f2fs_sb_info* %73, i32 %74)
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %69
  %79 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %80 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %79, i32 0, i32 7
  %81 = load i64, i64* %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = zext i32 %82 to i64
  %84 = sub nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %78, %69
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ugt i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %95 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %94, i32 0, i32 6
  %96 = call i32 @spin_unlock(i32* %95)
  br label %142

97:                                               ; preds = %86
  %98 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %99 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %104 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = icmp ugt i32 %102, %105
  %107 = zext i1 %106 to i32
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %97
  %111 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %112 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %111, i32 0, i32 6
  %113 = call i32 @spin_unlock(i32* %112)
  br label %142

114:                                              ; preds = %97
  %115 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %116 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %120 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add i32 %121, 1
  store i32 %122, i32* %120, align 8
  %123 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %124 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %123, i32 0, i32 6
  %125 = call i32 @spin_unlock(i32* %124)
  %126 = load %struct.inode*, %struct.inode** %6, align 8
  %127 = icmp ne %struct.inode* %126, null
  br i1 %127, label %128, label %138

128:                                              ; preds = %114
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load %struct.inode*, %struct.inode** %6, align 8
  %133 = call i32 @f2fs_mark_inode_dirty_sync(%struct.inode* %132, i32 1)
  br label %137

134:                                              ; preds = %128
  %135 = load %struct.inode*, %struct.inode** %6, align 8
  %136 = call i32 @f2fs_i_blocks_write(%struct.inode* %135, i32 1, i32 1, i32 1)
  br label %137

137:                                              ; preds = %134, %131
  br label %138

138:                                              ; preds = %137, %114
  %139 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %140 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %139, i32 0, i32 5
  %141 = call i32 @percpu_counter_inc(i32* %140)
  store i32 0, i32* %4, align 4
  br label %158

142:                                              ; preds = %110, %93, %40
  %143 = load i32, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %142
  %146 = load %struct.inode*, %struct.inode** %6, align 8
  %147 = icmp ne %struct.inode* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load %struct.inode*, %struct.inode** %6, align 8
  %150 = call i32 @dquot_free_inode(%struct.inode* %149)
  br label %151

151:                                              ; preds = %148, %145
  br label %155

152:                                              ; preds = %142
  %153 = load %struct.inode*, %struct.inode** %6, align 8
  %154 = call i32 @dquot_release_reservation_block(%struct.inode* %153, i32 1)
  br label %155

155:                                              ; preds = %152, %151
  %156 = load i32, i32* @ENOSPC, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %155, %138, %32, %23
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @dquot_alloc_inode(%struct.inode*) #1

declare dso_local i32 @dquot_reserve_block(%struct.inode*, i32) #1

declare dso_local i64 @time_to_inject(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_show_injection_info(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__allow_reserved_blocks(%struct.f2fs_sb_info*, %struct.inode*, i32) #1

declare dso_local i64 @F2FS_OPTION(%struct.f2fs_sb_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @f2fs_mark_inode_dirty_sync(%struct.inode*, i32) #1

declare dso_local i32 @f2fs_i_blocks_write(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @percpu_counter_inc(i32*) #1

declare dso_local i32 @dquot_free_inode(%struct.inode*) #1

declare dso_local i32 @dquot_release_reservation_block(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
