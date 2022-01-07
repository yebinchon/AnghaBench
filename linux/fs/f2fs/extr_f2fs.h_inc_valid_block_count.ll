; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_inc_valid_block_count.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_inc_valid_block_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i64, i64, i64, i64, i32, i32 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i64 }

@FAULT_BLOCK = common dso_local global i32 0, align 4
@SBI_CP_DISABLED = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, %struct.inode*, i64*)* @inc_valid_block_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inc_valid_block_count(%struct.f2fs_sb_info* %0, %struct.inode* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_2__, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @dquot_reserve_block(%struct.inode* %13, i64 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %4, align 4
  br label %158

21:                                               ; preds = %3
  %22 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %23 = load i32, i32* @FAULT_BLOCK, align 4
  %24 = call i64 @time_to_inject(%struct.f2fs_sb_info* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* @FAULT_BLOCK, align 4
  %28 = call i32 @f2fs_show_injection_info(i32 %27)
  %29 = load i64*, i64** %7, align 8
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  br label %152

31:                                               ; preds = %21
  %32 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %33 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %32, i32 0, i32 4
  %34 = load i64*, i64** %7, align 8
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @percpu_counter_add(i32* %33, i64 %35)
  %37 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %38 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %37, i32 0, i32 5
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load i64*, i64** %7, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %43 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, %41
  store i64 %45, i64* %43, align 8
  %46 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %47 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %50 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  store i64 %52, i64* %10, align 8
  %53 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = call i32 @__allow_reserved_blocks(%struct.f2fs_sb_info* %53, %struct.inode* %54, i32 1)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %31
  %58 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %59 = call i64 @F2FS_OPTION(%struct.f2fs_sb_info* %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = sub nsw i64 %63, %62
  store i64 %64, i64* %10, align 8
  br label %65

65:                                               ; preds = %57, %31
  %66 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %67 = load i32, i32* @SBI_CP_DISABLED, align 4
  %68 = call i64 @is_sbi_flag_set(%struct.f2fs_sb_info* %66, i32 %67)
  %69 = call i64 @unlikely(i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %65
  %72 = load i64, i64* %10, align 8
  %73 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %74 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %72, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %79 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %10, align 8
  %82 = sub nsw i64 %81, %80
  store i64 %82, i64* %10, align 8
  br label %84

83:                                               ; preds = %71
  store i64 0, i64* %10, align 8
  br label %84

84:                                               ; preds = %83, %77
  br label %85

85:                                               ; preds = %84, %65
  %86 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %87 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %10, align 8
  %90 = icmp sgt i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = sext i32 %91 to i64
  %93 = call i64 @unlikely(i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %127

95:                                               ; preds = %85
  %96 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %97 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %10, align 8
  %100 = sub nsw i64 %98, %99
  store i64 %100, i64* %8, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load i64*, i64** %7, align 8
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %101, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %95
  %106 = load i64*, i64** %7, align 8
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %8, align 8
  br label %108

108:                                              ; preds = %105, %95
  %109 = load i64, i64* %8, align 8
  %110 = load i64*, i64** %7, align 8
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %111, %109
  store i64 %112, i64* %110, align 8
  %113 = load i64, i64* %8, align 8
  store i64 %113, i64* %9, align 8
  %114 = load i64, i64* %8, align 8
  %115 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %116 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = sub nsw i64 %117, %114
  store i64 %118, i64* %116, align 8
  %119 = load i64*, i64** %7, align 8
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %126, label %122

122:                                              ; preds = %108
  %123 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %124 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %123, i32 0, i32 5
  %125 = call i32 @spin_unlock(i32* %124)
  br label %147

126:                                              ; preds = %108
  br label %127

127:                                              ; preds = %126, %85
  %128 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %129 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %128, i32 0, i32 5
  %130 = call i32 @spin_unlock(i32* %129)
  %131 = load i64, i64* %9, align 8
  %132 = call i64 @unlikely(i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %127
  %135 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %136 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %135, i32 0, i32 4
  %137 = load i64, i64* %9, align 8
  %138 = call i32 @percpu_counter_sub(i32* %136, i64 %137)
  %139 = load %struct.inode*, %struct.inode** %6, align 8
  %140 = load i64, i64* %9, align 8
  %141 = call i32 @dquot_release_reservation_block(%struct.inode* %139, i64 %140)
  br label %142

142:                                              ; preds = %134, %127
  %143 = load %struct.inode*, %struct.inode** %6, align 8
  %144 = load i64*, i64** %7, align 8
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @f2fs_i_blocks_write(%struct.inode* %143, i64 %145, i32 1, i32 1)
  store i32 0, i32* %4, align 4
  br label %158

147:                                              ; preds = %122
  %148 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %149 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %148, i32 0, i32 4
  %150 = load i64, i64* %9, align 8
  %151 = call i32 @percpu_counter_sub(i32* %149, i64 %150)
  br label %152

152:                                              ; preds = %147, %26
  %153 = load %struct.inode*, %struct.inode** %6, align 8
  %154 = load i64, i64* %9, align 8
  %155 = call i32 @dquot_release_reservation_block(%struct.inode* %153, i64 %154)
  %156 = load i32, i32* @ENOSPC, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %152, %142, %19
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @dquot_reserve_block(%struct.inode*, i64) #1

declare dso_local i64 @time_to_inject(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_show_injection_info(i32) #1

declare dso_local i32 @percpu_counter_add(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__allow_reserved_blocks(%struct.f2fs_sb_info*, %struct.inode*, i32) #1

declare dso_local i64 @F2FS_OPTION(%struct.f2fs_sb_info*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i64 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @percpu_counter_sub(i32*, i64) #1

declare dso_local i32 @dquot_release_reservation_block(%struct.inode*, i64) #1

declare dso_local i32 @f2fs_i_blocks_write(%struct.inode*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
