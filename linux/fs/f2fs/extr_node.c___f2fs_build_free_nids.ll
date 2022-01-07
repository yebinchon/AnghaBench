; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c___f2fs_build_free_nids.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c___f2fs_build_free_nids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_nm_info = type { i32, i32, i32*, i32, i32, i32 }
%struct.page = type { i32 }

@FREE_NID = common dso_local global i64 0, align 8
@NAT_ENTRY_PER_BLOCK = common dso_local global i32 0, align 4
@FREE_NIDS = common dso_local global i32 0, align 4
@FREE_NID_PAGES = common dso_local global i32 0, align 4
@META_NAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"NAT is corrupt, run fsck to fix it\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, i32, i32)* @__f2fs_build_free_nids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__f2fs_build_free_nids(%struct.f2fs_sb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.f2fs_nm_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %14 = call %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info* %13)
  store %struct.f2fs_nm_info* %14, %struct.f2fs_nm_info** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %8, align 8
  %16 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %8, align 8
  %20 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %26, %3
  %28 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %8, align 8
  %29 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @FREE_NID, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NAT_ENTRY_PER_BLOCK, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %157

37:                                               ; preds = %27
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %42 = load i32, i32* @FREE_NIDS, align 4
  %43 = call i32 @f2fs_available_free_memory(%struct.f2fs_sb_info* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %157

46:                                               ; preds = %40, %37
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %46
  %50 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %51 = call i32 @scan_free_nid_bits(%struct.f2fs_sb_info* %50)
  %52 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %8, align 8
  %53 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @FREE_NID, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @NAT_ENTRY_PER_BLOCK, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %157

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %46
  %63 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @NAT_BLOCK_OFFSET(i32 %64)
  %66 = load i32, i32* @FREE_NID_PAGES, align 4
  %67 = load i32, i32* @META_NAT, align 4
  %68 = call i32 @f2fs_ra_meta_pages(%struct.f2fs_sb_info* %63, i32 %65, i32 %66, i32 %67, i32 1)
  %69 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %8, align 8
  %70 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %69, i32 0, i32 4
  %71 = call i32 @down_read(i32* %70)
  br label %72

72:                                               ; preds = %62, %137
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @NAT_BLOCK_OFFSET(i32 %73)
  %75 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %8, align 8
  %76 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @test_bit_le(i32 %74, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %114, label %80

80:                                               ; preds = %72
  %81 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call %struct.page* @get_current_nat_page(%struct.f2fs_sb_info* %81, i32 %82)
  store %struct.page* %83, %struct.page** %12, align 8
  %84 = load %struct.page*, %struct.page** %12, align 8
  %85 = call i64 @IS_ERR(%struct.page* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load %struct.page*, %struct.page** %12, align 8
  %89 = call i32 @PTR_ERR(%struct.page* %88)
  store i32 %89, i32* %10, align 4
  br label %97

90:                                               ; preds = %80
  %91 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %92 = load %struct.page*, %struct.page** %12, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @scan_nat_page(%struct.f2fs_sb_info* %91, %struct.page* %92, i32 %93)
  store i32 %94, i32* %10, align 4
  %95 = load %struct.page*, %struct.page** %12, align 8
  %96 = call i32 @f2fs_put_page(%struct.page* %95, i32 1)
  br label %97

97:                                               ; preds = %90, %87
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %97
  %101 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %8, align 8
  %102 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %101, i32 0, i32 4
  %103 = call i32 @up_read(i32* %102)
  %104 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %104, i32 %108)
  %110 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %111 = call i32 @f2fs_err(%struct.f2fs_sb_info* %110, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %4, align 4
  br label %157

113:                                              ; preds = %97
  br label %114

114:                                              ; preds = %113, %72
  %115 = load i32, i32* @NAT_ENTRY_PER_BLOCK, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @NAT_ENTRY_PER_BLOCK, align 4
  %118 = srem i32 %116, %117
  %119 = sub nsw i32 %115, %118
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %8, align 8
  %124 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp sge i32 %122, %125
  %127 = zext i1 %126 to i32
  %128 = call i64 @unlikely(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %114
  store i32 0, i32* %11, align 4
  br label %131

131:                                              ; preds = %130, %114
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* @FREE_NID_PAGES, align 4
  %135 = icmp sge i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  br label %138

137:                                              ; preds = %131
  br label %72

138:                                              ; preds = %136
  %139 = load i32, i32* %11, align 4
  %140 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %8, align 8
  %141 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %143 = call i32 @scan_curseg_cache(%struct.f2fs_sb_info* %142)
  %144 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %8, align 8
  %145 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %144, i32 0, i32 4
  %146 = call i32 @up_read(i32* %145)
  %147 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %148 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %8, align 8
  %149 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @NAT_BLOCK_OFFSET(i32 %150)
  %152 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %8, align 8
  %153 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @META_NAT, align 4
  %156 = call i32 @f2fs_ra_meta_pages(%struct.f2fs_sb_info* %147, i32 %151, i32 %154, i32 %155, i32 0)
  store i32 0, i32* %4, align 4
  br label %157

157:                                              ; preds = %138, %100, %60, %45, %36
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_available_free_memory(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @scan_free_nid_bits(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_ra_meta_pages(%struct.f2fs_sb_info*, i32, i32, i32, i32) #1

declare dso_local i32 @NAT_BLOCK_OFFSET(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @test_bit_le(i32, i32) #1

declare dso_local %struct.page* @get_current_nat_page(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @scan_nat_page(%struct.f2fs_sb_info*, %struct.page*, i32) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_err(%struct.f2fs_sb_info*, i8*) #1

declare dso_local i32 @scan_curseg_cache(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
