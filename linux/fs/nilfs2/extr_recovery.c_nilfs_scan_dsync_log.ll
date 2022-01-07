; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_recovery.c_nilfs_scan_dsync_log.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_recovery.c_nilfs_scan_dsync_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i32, i32 }
%struct.nilfs_segment_summary = type { i32, i32, i32 }
%struct.list_head = type { i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_finfo = type { i32, i32, i32 }
%struct.nilfs_recovery_block = type { i32, i8*, i8*, i64, i8* }
%struct.nilfs_binfo_v = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.the_nilfs*, i64, %struct.nilfs_segment_summary*, %struct.list_head*)* @nilfs_scan_dsync_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_scan_dsync_log(%struct.the_nilfs* %0, i64 %1, %struct.nilfs_segment_summary* %2, %struct.list_head* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.the_nilfs*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nilfs_segment_summary*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.nilfs_finfo*, align 8
  %21 = alloca %struct.nilfs_recovery_block*, align 8
  %22 = alloca %struct.nilfs_binfo_v*, align 8
  store %struct.the_nilfs* %0, %struct.the_nilfs** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.nilfs_segment_summary* %2, %struct.nilfs_segment_summary** %8, align 8
  store %struct.list_head* %3, %struct.list_head** %9, align 8
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %16, align 4
  %25 = load %struct.nilfs_segment_summary*, %struct.nilfs_segment_summary** %8, align 8
  %26 = getelementptr inbounds %struct.nilfs_segment_summary, %struct.nilfs_segment_summary* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @le32_to_cpu(i32 %27)
  %29 = ptrtoint i8* %28 to i64
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %171

33:                                               ; preds = %4
  %34 = load %struct.nilfs_segment_summary*, %struct.nilfs_segment_summary** %8, align 8
  %35 = getelementptr inbounds %struct.nilfs_segment_summary, %struct.nilfs_segment_summary* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @le32_to_cpu(i32 %36)
  %38 = ptrtoint i8* %37 to i64
  store i64 %38, i64* %13, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %42 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @DIV_ROUND_UP(i64 %40, i32 %43)
  %45 = add nsw i64 %39, %44
  store i64 %45, i64* %14, align 8
  %46 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %47 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %51 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.buffer_head* @__bread(i32 %48, i64 %49, i32 %52)
  store %struct.buffer_head* %53, %struct.buffer_head** %10, align 8
  %54 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %55 = icmp ne %struct.buffer_head* %54, null
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %33
  br label %167

61:                                               ; preds = %33
  %62 = load %struct.nilfs_segment_summary*, %struct.nilfs_segment_summary** %8, align 8
  %63 = getelementptr inbounds %struct.nilfs_segment_summary, %struct.nilfs_segment_summary* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le16_to_cpu(i32 %64)
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %165, %61
  %67 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %68 = call i8* @nilfs_read_summary_info(%struct.the_nilfs* %67, %struct.buffer_head** %10, i32* %11, i32 12)
  %69 = bitcast i8* %68 to %struct.nilfs_finfo*
  store %struct.nilfs_finfo* %69, %struct.nilfs_finfo** %20, align 8
  %70 = load %struct.nilfs_finfo*, %struct.nilfs_finfo** %20, align 8
  %71 = icmp ne %struct.nilfs_finfo* %70, null
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %167

77:                                               ; preds = %66
  %78 = load %struct.nilfs_finfo*, %struct.nilfs_finfo** %20, align 8
  %79 = getelementptr inbounds %struct.nilfs_finfo, %struct.nilfs_finfo* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @le64_to_cpu(i32 %80)
  store i8* %81, i8** %15, align 8
  %82 = load %struct.nilfs_finfo*, %struct.nilfs_finfo** %20, align 8
  %83 = getelementptr inbounds %struct.nilfs_finfo, %struct.nilfs_finfo* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @le32_to_cpu(i32 %84)
  %86 = ptrtoint i8* %85 to i64
  store i64 %86, i64* %17, align 8
  %87 = load %struct.nilfs_finfo*, %struct.nilfs_finfo** %20, align 8
  %88 = getelementptr inbounds %struct.nilfs_finfo, %struct.nilfs_finfo* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @le32_to_cpu(i32 %89)
  %91 = ptrtoint i8* %90 to i64
  store i64 %91, i64* %18, align 8
  %92 = load i64, i64* %17, align 8
  %93 = load i64, i64* %18, align 8
  %94 = sub i64 %92, %93
  store i64 %94, i64* %19, align 8
  br label %95

95:                                               ; preds = %122, %77
  %96 = load i64, i64* %18, align 8
  %97 = add i64 %96, -1
  store i64 %97, i64* %18, align 8
  %98 = icmp ugt i64 %96, 0
  br i1 %98, label %99, label %146

99:                                               ; preds = %95
  %100 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %101 = call i8* @nilfs_read_summary_info(%struct.the_nilfs* %100, %struct.buffer_head** %10, i32* %11, i32 8)
  %102 = bitcast i8* %101 to %struct.nilfs_binfo_v*
  store %struct.nilfs_binfo_v* %102, %struct.nilfs_binfo_v** %22, align 8
  %103 = load %struct.nilfs_binfo_v*, %struct.nilfs_binfo_v** %22, align 8
  %104 = icmp ne %struct.nilfs_binfo_v* %103, null
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i64 @unlikely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %167

110:                                              ; preds = %99
  %111 = load i32, i32* @GFP_NOFS, align 4
  %112 = call %struct.nilfs_recovery_block* @kmalloc(i32 40, i32 %111)
  store %struct.nilfs_recovery_block* %112, %struct.nilfs_recovery_block** %21, align 8
  %113 = load %struct.nilfs_recovery_block*, %struct.nilfs_recovery_block** %21, align 8
  %114 = icmp ne %struct.nilfs_recovery_block* %113, null
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  %117 = call i64 @unlikely(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %110
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %16, align 4
  br label %167

122:                                              ; preds = %110
  %123 = load i8*, i8** %15, align 8
  %124 = load %struct.nilfs_recovery_block*, %struct.nilfs_recovery_block** %21, align 8
  %125 = getelementptr inbounds %struct.nilfs_recovery_block, %struct.nilfs_recovery_block* %124, i32 0, i32 4
  store i8* %123, i8** %125, align 8
  %126 = load i64, i64* %14, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %14, align 8
  %128 = load %struct.nilfs_recovery_block*, %struct.nilfs_recovery_block** %21, align 8
  %129 = getelementptr inbounds %struct.nilfs_recovery_block, %struct.nilfs_recovery_block* %128, i32 0, i32 3
  store i64 %126, i64* %129, align 8
  %130 = load %struct.nilfs_binfo_v*, %struct.nilfs_binfo_v** %22, align 8
  %131 = getelementptr inbounds %struct.nilfs_binfo_v, %struct.nilfs_binfo_v* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @le64_to_cpu(i32 %132)
  %134 = load %struct.nilfs_recovery_block*, %struct.nilfs_recovery_block** %21, align 8
  %135 = getelementptr inbounds %struct.nilfs_recovery_block, %struct.nilfs_recovery_block* %134, i32 0, i32 2
  store i8* %133, i8** %135, align 8
  %136 = load %struct.nilfs_binfo_v*, %struct.nilfs_binfo_v** %22, align 8
  %137 = getelementptr inbounds %struct.nilfs_binfo_v, %struct.nilfs_binfo_v* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @le64_to_cpu(i32 %138)
  %140 = load %struct.nilfs_recovery_block*, %struct.nilfs_recovery_block** %21, align 8
  %141 = getelementptr inbounds %struct.nilfs_recovery_block, %struct.nilfs_recovery_block* %140, i32 0, i32 1
  store i8* %139, i8** %141, align 8
  %142 = load %struct.nilfs_recovery_block*, %struct.nilfs_recovery_block** %21, align 8
  %143 = getelementptr inbounds %struct.nilfs_recovery_block, %struct.nilfs_recovery_block* %142, i32 0, i32 0
  %144 = load %struct.list_head*, %struct.list_head** %9, align 8
  %145 = call i32 @list_add_tail(i32* %143, %struct.list_head* %144)
  br label %95

146:                                              ; preds = %95
  %147 = load i64, i64* %12, align 8
  %148 = add nsw i64 %147, -1
  store i64 %148, i64* %12, align 8
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  br label %166

151:                                              ; preds = %146
  %152 = load i64, i64* %19, align 8
  %153 = load i64, i64* %14, align 8
  %154 = add i64 %153, %152
  store i64 %154, i64* %14, align 8
  %155 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %156 = load i64, i64* %19, align 8
  %157 = call i32 @nilfs_skip_summary_info(%struct.the_nilfs* %155, %struct.buffer_head** %10, i32* %11, i32 4, i64 %156)
  %158 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %159 = icmp ne %struct.buffer_head* %158, null
  %160 = xor i1 %159, true
  %161 = zext i1 %160 to i32
  %162 = call i64 @unlikely(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %151
  br label %167

165:                                              ; preds = %151
  br label %66

166:                                              ; preds = %150
  store i32 0, i32* %16, align 4
  br label %167

167:                                              ; preds = %166, %164, %119, %109, %76, %60
  %168 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %169 = call i32 @brelse(%struct.buffer_head* %168)
  %170 = load i32, i32* %16, align 4
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %167, %32
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local %struct.buffer_head* @__bread(i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @nilfs_read_summary_info(%struct.the_nilfs*, %struct.buffer_head**, i32*, i32) #1

declare dso_local i8* @le64_to_cpu(i32) #1

declare dso_local %struct.nilfs_recovery_block* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @nilfs_skip_summary_info(%struct.the_nilfs*, %struct.buffer_head**, i32*, i32, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
