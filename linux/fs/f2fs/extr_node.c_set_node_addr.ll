; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_set_node_addr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_set_node_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.node_info = type { i64, i32, i32 }
%struct.f2fs_nm_info = type { i32 }
%struct.nat_entry = type { i32 }

@NEW_ADDR = common dso_local global i64 0, align 8
@NULL_ADDR = common dso_local global i64 0, align 8
@IS_CHECKPOINTED = common dso_local global i32 0, align 4
@HAS_FSYNCED_INODE = common dso_local global i32 0, align 4
@HAS_LAST_FSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, %struct.node_info*, i64, i32)* @set_node_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_node_addr(%struct.f2fs_sb_info* %0, %struct.node_info* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca %struct.node_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.f2fs_nm_info*, align 8
  %10 = alloca %struct.nat_entry*, align 8
  %11 = alloca %struct.nat_entry*, align 8
  %12 = alloca i8, align 1
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store %struct.node_info* %1, %struct.node_info** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %14 = call %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info* %13)
  store %struct.f2fs_nm_info* %14, %struct.f2fs_nm_info** %9, align 8
  %15 = load %struct.node_info*, %struct.node_info** %6, align 8
  %16 = getelementptr inbounds %struct.node_info, %struct.node_info* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.nat_entry* @__alloc_nat_entry(i32 %17, i32 1)
  store %struct.nat_entry* %18, %struct.nat_entry** %11, align 8
  %19 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %9, align 8
  %20 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %19, i32 0, i32 0
  %21 = call i32 @down_write(i32* %20)
  %22 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %9, align 8
  %23 = load %struct.node_info*, %struct.node_info** %6, align 8
  %24 = getelementptr inbounds %struct.node_info, %struct.node_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.nat_entry* @__lookup_nat_cache(%struct.f2fs_nm_info* %22, i32 %25)
  store %struct.nat_entry* %26, %struct.nat_entry** %10, align 8
  %27 = load %struct.nat_entry*, %struct.nat_entry** %10, align 8
  %28 = icmp ne %struct.nat_entry* %27, null
  br i1 %28, label %45, label %29

29:                                               ; preds = %4
  %30 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %9, align 8
  %31 = load %struct.nat_entry*, %struct.nat_entry** %11, align 8
  %32 = call %struct.nat_entry* @__init_nat_entry(%struct.f2fs_nm_info* %30, %struct.nat_entry* %31, i32* null, i32 1)
  store %struct.nat_entry* %32, %struct.nat_entry** %10, align 8
  %33 = load %struct.nat_entry*, %struct.nat_entry** %10, align 8
  %34 = getelementptr inbounds %struct.nat_entry, %struct.nat_entry* %33, i32 0, i32 0
  %35 = load %struct.node_info*, %struct.node_info** %6, align 8
  %36 = call i32 @copy_node_info(i32* %34, %struct.node_info* %35)
  %37 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %38 = load %struct.node_info*, %struct.node_info** %6, align 8
  %39 = getelementptr inbounds %struct.node_info, %struct.node_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NEW_ADDR, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %37, i32 %43)
  br label %63

45:                                               ; preds = %4
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @NEW_ADDR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = load %struct.nat_entry*, %struct.nat_entry** %10, align 8
  %51 = getelementptr inbounds %struct.nat_entry, %struct.nat_entry* %50, i32 0, i32 0
  %52 = load %struct.node_info*, %struct.node_info** %6, align 8
  %53 = call i32 @copy_node_info(i32* %51, %struct.node_info* %52)
  %54 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %55 = load %struct.node_info*, %struct.node_info** %6, align 8
  %56 = getelementptr inbounds %struct.node_info, %struct.node_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @NULL_ADDR, align 8
  %59 = icmp ne i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %54, i32 %60)
  br label %62

62:                                               ; preds = %49, %45
  br label %63

63:                                               ; preds = %62, %29
  %64 = load %struct.nat_entry*, %struct.nat_entry** %10, align 8
  %65 = load %struct.nat_entry*, %struct.nat_entry** %11, align 8
  %66 = icmp ne %struct.nat_entry* %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.nat_entry*, %struct.nat_entry** %11, align 8
  %69 = call i32 @__free_nat_entry(%struct.nat_entry* %68)
  br label %70

70:                                               ; preds = %67, %63
  %71 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %72 = load %struct.nat_entry*, %struct.nat_entry** %10, align 8
  %73 = call i64 @nat_get_blkaddr(%struct.nat_entry* %72)
  %74 = load %struct.node_info*, %struct.node_info** %6, align 8
  %75 = getelementptr inbounds %struct.node_info, %struct.node_info* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %73, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %71, i32 %78)
  %80 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %81 = load %struct.nat_entry*, %struct.nat_entry** %10, align 8
  %82 = call i64 @nat_get_blkaddr(%struct.nat_entry* %81)
  %83 = load i64, i64* @NULL_ADDR, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %70
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* @NULL_ADDR, align 8
  %88 = icmp eq i64 %86, %87
  br label %89

89:                                               ; preds = %85, %70
  %90 = phi i1 [ false, %70 ], [ %88, %85 ]
  %91 = zext i1 %90 to i32
  %92 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %80, i32 %91)
  %93 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %94 = load %struct.nat_entry*, %struct.nat_entry** %10, align 8
  %95 = call i64 @nat_get_blkaddr(%struct.nat_entry* %94)
  %96 = load i64, i64* @NEW_ADDR, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %89
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* @NEW_ADDR, align 8
  %101 = icmp eq i64 %99, %100
  br label %102

102:                                              ; preds = %98, %89
  %103 = phi i1 [ false, %89 ], [ %101, %98 ]
  %104 = zext i1 %103 to i32
  %105 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %93, i32 %104)
  %106 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %107 = load %struct.nat_entry*, %struct.nat_entry** %10, align 8
  %108 = call i64 @nat_get_blkaddr(%struct.nat_entry* %107)
  %109 = call i64 @__is_valid_data_blkaddr(i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %102
  %112 = load i64, i64* %7, align 8
  %113 = load i64, i64* @NEW_ADDR, align 8
  %114 = icmp eq i64 %112, %113
  br label %115

115:                                              ; preds = %111, %102
  %116 = phi i1 [ false, %102 ], [ %114, %111 ]
  %117 = zext i1 %116 to i32
  %118 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %106, i32 %117)
  %119 = load %struct.nat_entry*, %struct.nat_entry** %10, align 8
  %120 = call i64 @nat_get_blkaddr(%struct.nat_entry* %119)
  %121 = load i64, i64* @NEW_ADDR, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %115
  %124 = load i64, i64* %7, align 8
  %125 = load i64, i64* @NULL_ADDR, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = load %struct.nat_entry*, %struct.nat_entry** %10, align 8
  %129 = call zeroext i8 @nat_get_version(%struct.nat_entry* %128)
  store i8 %129, i8* %12, align 1
  %130 = load %struct.nat_entry*, %struct.nat_entry** %10, align 8
  %131 = load i8, i8* %12, align 1
  %132 = call i32 @inc_node_version(i8 zeroext %131)
  %133 = call i32 @nat_set_version(%struct.nat_entry* %130, i32 %132)
  br label %134

134:                                              ; preds = %127, %123, %115
  %135 = load %struct.nat_entry*, %struct.nat_entry** %10, align 8
  %136 = load i64, i64* %7, align 8
  %137 = call i32 @nat_set_blkaddr(%struct.nat_entry* %135, i64 %136)
  %138 = load i64, i64* %7, align 8
  %139 = call i64 @__is_valid_data_blkaddr(i64 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %134
  %142 = load %struct.nat_entry*, %struct.nat_entry** %10, align 8
  %143 = load i32, i32* @IS_CHECKPOINTED, align 4
  %144 = call i32 @set_nat_flag(%struct.nat_entry* %142, i32 %143, i32 0)
  br label %145

145:                                              ; preds = %141, %134
  %146 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %9, align 8
  %147 = load %struct.nat_entry*, %struct.nat_entry** %10, align 8
  %148 = call i32 @__set_nat_cache_dirty(%struct.f2fs_nm_info* %146, %struct.nat_entry* %147)
  %149 = load %struct.node_info*, %struct.node_info** %6, align 8
  %150 = getelementptr inbounds %struct.node_info, %struct.node_info* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.node_info*, %struct.node_info** %6, align 8
  %153 = getelementptr inbounds %struct.node_info, %struct.node_info* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %151, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %145
  %157 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %9, align 8
  %158 = load %struct.node_info*, %struct.node_info** %6, align 8
  %159 = getelementptr inbounds %struct.node_info, %struct.node_info* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = call %struct.nat_entry* @__lookup_nat_cache(%struct.f2fs_nm_info* %157, i32 %160)
  store %struct.nat_entry* %161, %struct.nat_entry** %10, align 8
  br label %162

162:                                              ; preds = %156, %145
  %163 = load %struct.nat_entry*, %struct.nat_entry** %10, align 8
  %164 = icmp ne %struct.nat_entry* %163, null
  br i1 %164, label %165, label %185

165:                                              ; preds = %162
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %180

168:                                              ; preds = %165
  %169 = load %struct.node_info*, %struct.node_info** %6, align 8
  %170 = getelementptr inbounds %struct.node_info, %struct.node_info* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.node_info*, %struct.node_info** %6, align 8
  %173 = getelementptr inbounds %struct.node_info, %struct.node_info* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = icmp eq i32 %171, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %168
  %177 = load %struct.nat_entry*, %struct.nat_entry** %10, align 8
  %178 = load i32, i32* @HAS_FSYNCED_INODE, align 4
  %179 = call i32 @set_nat_flag(%struct.nat_entry* %177, i32 %178, i32 1)
  br label %180

180:                                              ; preds = %176, %168, %165
  %181 = load %struct.nat_entry*, %struct.nat_entry** %10, align 8
  %182 = load i32, i32* @HAS_LAST_FSYNC, align 4
  %183 = load i32, i32* %8, align 4
  %184 = call i32 @set_nat_flag(%struct.nat_entry* %181, i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %180, %162
  %186 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %9, align 8
  %187 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %186, i32 0, i32 0
  %188 = call i32 @up_write(i32* %187)
  ret void
}

declare dso_local %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info*) #1

declare dso_local %struct.nat_entry* @__alloc_nat_entry(i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.nat_entry* @__lookup_nat_cache(%struct.f2fs_nm_info*, i32) #1

declare dso_local %struct.nat_entry* @__init_nat_entry(%struct.f2fs_nm_info*, %struct.nat_entry*, i32*, i32) #1

declare dso_local i32 @copy_node_info(i32*, %struct.node_info*) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @__free_nat_entry(%struct.nat_entry*) #1

declare dso_local i64 @nat_get_blkaddr(%struct.nat_entry*) #1

declare dso_local i64 @__is_valid_data_blkaddr(i64) #1

declare dso_local zeroext i8 @nat_get_version(%struct.nat_entry*) #1

declare dso_local i32 @nat_set_version(%struct.nat_entry*, i32) #1

declare dso_local i32 @inc_node_version(i8 zeroext) #1

declare dso_local i32 @nat_set_blkaddr(%struct.nat_entry*, i64) #1

declare dso_local i32 @set_nat_flag(%struct.nat_entry*, i32, i32) #1

declare dso_local i32 @__set_nat_cache_dirty(%struct.f2fs_nm_info*, %struct.nat_entry*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
