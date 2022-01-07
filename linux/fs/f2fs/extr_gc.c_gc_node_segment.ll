; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_gc_node_segment.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_gc_node_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, i32* }
%struct.f2fs_summary = type { i32 }
%struct.page = type { i32 }
%struct.node_info = type { i64 }

@FG_GC = common dso_local global i32 0, align 4
@NODE = common dso_local global i64 0, align 8
@BG_GC = common dso_local global i32 0, align 4
@META_NAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, %struct.f2fs_summary*, i32, i32)* @gc_node_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gc_node_segment(%struct.f2fs_sb_info* %0, %struct.f2fs_summary* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca %struct.f2fs_summary*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.f2fs_summary*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.page*, align 8
  %18 = alloca %struct.node_info, align 8
  %19 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %6, align 8
  store %struct.f2fs_summary* %1, %struct.f2fs_summary** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @FG_GC, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %24 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @START_BLOCK(%struct.f2fs_sb_info* %24, i32 %25)
  store i64 %26, i64* %11, align 8
  br label %27

27:                                               ; preds = %147, %4
  %28 = load %struct.f2fs_summary*, %struct.f2fs_summary** %7, align 8
  store %struct.f2fs_summary* %28, %struct.f2fs_summary** %10, align 8
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i32, i32* %13, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %36 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @NODE, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = call i32 @atomic_inc(i32* %39)
  br label %41

41:                                               ; preds = %34, %31, %27
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %138, %41
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %45 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %143

48:                                               ; preds = %42
  %49 = load %struct.f2fs_summary*, %struct.f2fs_summary** %10, align 8
  %50 = getelementptr inbounds %struct.f2fs_summary, %struct.f2fs_summary* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le32_to_cpu(i32 %51)
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @BG_GC, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %58 = call i64 @has_not_enough_free_secs(%struct.f2fs_sb_info* %57, i32 0, i32 0)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* %15, align 4
  store i32 %61, i32* %5, align 4
  br label %160

62:                                               ; preds = %56, %48
  %63 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i64 @check_valid_map(%struct.f2fs_sb_info* %63, i32 %64, i32 %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %138

69:                                               ; preds = %62
  %70 = load i32, i32* %13, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @NAT_BLOCK_OFFSET(i32 %74)
  %76 = load i32, i32* @META_NAT, align 4
  %77 = call i32 @f2fs_ra_meta_pages(%struct.f2fs_sb_info* %73, i32 %75, i32 1, i32 %76, i32 1)
  br label %138

78:                                               ; preds = %69
  %79 = load i32, i32* %13, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @f2fs_ra_node_page(%struct.f2fs_sb_info* %82, i32 %83)
  br label %138

85:                                               ; preds = %78
  %86 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %87 = load i32, i32* %16, align 4
  %88 = call %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info* %86, i32 %87)
  store %struct.page* %88, %struct.page** %17, align 8
  %89 = load %struct.page*, %struct.page** %17, align 8
  %90 = call i64 @IS_ERR(%struct.page* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %138

93:                                               ; preds = %85
  %94 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i64 @check_valid_map(%struct.f2fs_sb_info* %94, i32 %95, i32 %96)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load %struct.page*, %struct.page** %17, align 8
  %101 = call i32 @f2fs_put_page(%struct.page* %100, i32 1)
  br label %138

102:                                              ; preds = %93
  %103 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %104 = load i32, i32* %16, align 4
  %105 = call i64 @f2fs_get_node_info(%struct.f2fs_sb_info* %103, i32 %104, %struct.node_info* %18)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.page*, %struct.page** %17, align 8
  %109 = call i32 @f2fs_put_page(%struct.page* %108, i32 1)
  br label %138

110:                                              ; preds = %102
  %111 = getelementptr inbounds %struct.node_info, %struct.node_info* %18, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %11, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %113, %115
  %117 = icmp ne i64 %112, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %110
  %119 = load %struct.page*, %struct.page** %17, align 8
  %120 = call i32 @f2fs_put_page(%struct.page* %119, i32 1)
  br label %138

121:                                              ; preds = %110
  %122 = load %struct.page*, %struct.page** %17, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @f2fs_move_node_page(%struct.page* %122, i32 %123)
  store i32 %124, i32* %19, align 4
  %125 = load i32, i32* %19, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %121
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @FG_GC, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load i32, i32* %15, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %15, align 4
  br label %134

134:                                              ; preds = %131, %127, %121
  %135 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @stat_inc_node_blk_count(%struct.f2fs_sb_info* %135, i32 1, i32 %136)
  br label %138

138:                                              ; preds = %134, %118, %107, %99, %92, %81, %72, %68
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %12, align 4
  %141 = load %struct.f2fs_summary*, %struct.f2fs_summary** %10, align 8
  %142 = getelementptr inbounds %struct.f2fs_summary, %struct.f2fs_summary* %141, i32 1
  store %struct.f2fs_summary* %142, %struct.f2fs_summary** %10, align 8
  br label %42

143:                                              ; preds = %42
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  %146 = icmp slt i32 %145, 3
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  br label %27

148:                                              ; preds = %143
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %153 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* @NODE, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = call i32 @atomic_dec(i32* %156)
  br label %158

158:                                              ; preds = %151, %148
  %159 = load i32, i32* %15, align 4
  store i32 %159, i32* %5, align 4
  br label %160

160:                                              ; preds = %158, %60
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local i64 @START_BLOCK(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @has_not_enough_free_secs(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i64 @check_valid_map(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @f2fs_ra_meta_pages(%struct.f2fs_sb_info*, i32, i32, i32, i32) #1

declare dso_local i32 @NAT_BLOCK_OFFSET(i32) #1

declare dso_local i32 @f2fs_ra_node_page(%struct.f2fs_sb_info*, i32) #1

declare dso_local %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i64 @f2fs_get_node_info(%struct.f2fs_sb_info*, i32, %struct.node_info*) #1

declare dso_local i32 @f2fs_move_node_page(%struct.page*, i32) #1

declare dso_local i32 @stat_inc_node_blk_count(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
