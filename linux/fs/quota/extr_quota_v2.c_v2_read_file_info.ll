; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota_v2.c_v2_read_file_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota_v2.c_v2_read_file_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.super_block*, i32, i8*, i32, i32)* }
%struct.v2_disk_dqinfo = type { i32, i32, i32, i32, i32 }
%struct.v2_disk_dqheader = type { i32 }
%struct.quota_info = type { i32, %struct.mem_dqinfo* }
%struct.mem_dqinfo = type { i64, i32, i32, i64, i8*, i8*, %struct.qtree_mem_dqinfo* }
%struct.qtree_mem_dqinfo = type { i32, i32, i32, i32, i32*, i32, i8*, i8*, i8*, %struct.super_block* }

@QFMT_VFS_V0 = common dso_local global i64 0, align 8
@QFMT_VFS_V1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V2_DQINFOOFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Can't read info structure\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QUOTABLOCK_BITS = common dso_local global i32 0, align 4
@V2_DQBLKSIZE_BITS = common dso_local global i32 0, align 4
@v2r0_qtree_ops = common dso_local global i32 0, align 4
@v2r1_qtree_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @v2_read_file_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v2_read_file_info(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v2_disk_dqinfo, align 4
  %6 = alloca %struct.v2_disk_dqheader, align 4
  %7 = alloca %struct.quota_info*, align 8
  %8 = alloca %struct.mem_dqinfo*, align 8
  %9 = alloca %struct.qtree_mem_dqinfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.super_block*, %struct.super_block** %3, align 8
  %14 = call %struct.quota_info* @sb_dqopt(%struct.super_block* %13)
  store %struct.quota_info* %14, %struct.quota_info** %7, align 8
  %15 = load %struct.quota_info*, %struct.quota_info** %7, align 8
  %16 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %15, i32 0, i32 1
  %17 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %17, i64 %19
  store %struct.mem_dqinfo* %20, %struct.mem_dqinfo** %8, align 8
  %21 = load %struct.quota_info*, %struct.quota_info** %7, align 8
  %22 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %21, i32 0, i32 0
  %23 = call i32 @down_read(i32* %22)
  %24 = load %struct.super_block*, %struct.super_block** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @v2_read_header(%struct.super_block* %24, i32 %25, %struct.v2_disk_dqheader* %6)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %170

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.v2_disk_dqheader, %struct.v2_disk_dqheader* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @le32_to_cpu(i32 %32)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %11, align 4
  %35 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %8, align 8
  %36 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @QFMT_VFS_V0, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %40, %30
  %44 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %8, align 8
  %45 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @QFMT_VFS_V1, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %55

52:                                               ; preds = %49, %40
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %12, align 4
  br label %170

55:                                               ; preds = %49, %43
  %56 = load %struct.super_block*, %struct.super_block** %3, align 8
  %57 = getelementptr inbounds %struct.super_block, %struct.super_block* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (%struct.super_block*, i32, i8*, i32, i32)*, i32 (%struct.super_block*, i32, i8*, i32, i32)** %59, align 8
  %61 = load %struct.super_block*, %struct.super_block** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = bitcast %struct.v2_disk_dqinfo* %5 to i8*
  %64 = load i32, i32* @V2_DQINFOOFF, align 4
  %65 = call i32 %60(%struct.super_block* %61, i32 %62, i8* %63, i32 20, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp ne i64 %67, 20
  br i1 %68, label %69, label %80

69:                                               ; preds = %55
  %70 = load %struct.super_block*, %struct.super_block** %3, align 8
  %71 = call i32 @quota_error(%struct.super_block* %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %12, align 4
  br label %79

76:                                               ; preds = %69
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %76, %74
  br label %170

80:                                               ; preds = %55
  %81 = load i32, i32* @GFP_NOFS, align 4
  %82 = call %struct.qtree_mem_dqinfo* @kmalloc(i32 64, i32 %81)
  %83 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %8, align 8
  %84 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %83, i32 0, i32 6
  store %struct.qtree_mem_dqinfo* %82, %struct.qtree_mem_dqinfo** %84, align 8
  %85 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %8, align 8
  %86 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %85, i32 0, i32 6
  %87 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %86, align 8
  %88 = icmp ne %struct.qtree_mem_dqinfo* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %80
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %12, align 4
  br label %170

92:                                               ; preds = %80
  %93 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %8, align 8
  %94 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %93, i32 0, i32 6
  %95 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %94, align 8
  store %struct.qtree_mem_dqinfo* %95, %struct.qtree_mem_dqinfo** %9, align 8
  %96 = load i32, i32* %11, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %92
  %99 = load i32, i32* @QUOTABLOCK_BITS, align 4
  %100 = zext i32 %99 to i64
  %101 = shl i64 4294967295, %100
  %102 = trunc i64 %101 to i32
  %103 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %8, align 8
  %104 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %8, align 8
  %106 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %105, i32 0, i32 2
  store i32 -1, i32* %106, align 4
  br label %112

107:                                              ; preds = %92
  %108 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %8, align 8
  %109 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %108, i32 0, i32 1
  store i32 -1, i32* %109, align 8
  %110 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %8, align 8
  %111 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %110, i32 0, i32 2
  store i32 -1, i32* %111, align 4
  br label %112

112:                                              ; preds = %107, %98
  %113 = getelementptr inbounds %struct.v2_disk_dqinfo, %struct.v2_disk_dqinfo* %5, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @le32_to_cpu(i32 %114)
  %116 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %8, align 8
  %117 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %116, i32 0, i32 5
  store i8* %115, i8** %117, align 8
  %118 = getelementptr inbounds %struct.v2_disk_dqinfo, %struct.v2_disk_dqinfo* %5, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @le32_to_cpu(i32 %119)
  %121 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %8, align 8
  %122 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %121, i32 0, i32 4
  store i8* %120, i8** %122, align 8
  %123 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %8, align 8
  %124 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %123, i32 0, i32 3
  store i64 0, i64* %124, align 8
  %125 = load %struct.super_block*, %struct.super_block** %3, align 8
  %126 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %9, align 8
  %127 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %126, i32 0, i32 9
  store %struct.super_block* %125, %struct.super_block** %127, align 8
  %128 = load i32, i32* %4, align 4
  %129 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %9, align 8
  %130 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = getelementptr inbounds %struct.v2_disk_dqinfo, %struct.v2_disk_dqinfo* %5, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @le32_to_cpu(i32 %132)
  %134 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %9, align 8
  %135 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %134, i32 0, i32 8
  store i8* %133, i8** %135, align 8
  %136 = getelementptr inbounds %struct.v2_disk_dqinfo, %struct.v2_disk_dqinfo* %5, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @le32_to_cpu(i32 %137)
  %139 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %9, align 8
  %140 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %139, i32 0, i32 7
  store i8* %138, i8** %140, align 8
  %141 = getelementptr inbounds %struct.v2_disk_dqinfo, %struct.v2_disk_dqinfo* %5, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @le32_to_cpu(i32 %142)
  %144 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %9, align 8
  %145 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %144, i32 0, i32 6
  store i8* %143, i8** %145, align 8
  %146 = load i32, i32* @V2_DQBLKSIZE_BITS, align 4
  %147 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %9, align 8
  %148 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* @V2_DQBLKSIZE_BITS, align 4
  %150 = shl i32 1, %149
  %151 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %9, align 8
  %152 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  %153 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %9, align 8
  %154 = call i32 @qtree_depth(%struct.qtree_mem_dqinfo* %153)
  %155 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %9, align 8
  %156 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %155, i32 0, i32 5
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* %11, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %112
  %160 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %9, align 8
  %161 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %160, i32 0, i32 3
  store i32 4, i32* %161, align 4
  %162 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %9, align 8
  %163 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %162, i32 0, i32 4
  store i32* @v2r0_qtree_ops, i32** %163, align 8
  br label %169

164:                                              ; preds = %112
  %165 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %9, align 8
  %166 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %165, i32 0, i32 3
  store i32 4, i32* %166, align 4
  %167 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %9, align 8
  %168 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %167, i32 0, i32 4
  store i32* @v2r1_qtree_ops, i32** %168, align 8
  br label %169

169:                                              ; preds = %164, %159
  store i32 0, i32* %12, align 4
  br label %170

170:                                              ; preds = %169, %89, %79, %52, %29
  %171 = load %struct.quota_info*, %struct.quota_info** %7, align 8
  %172 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %171, i32 0, i32 0
  %173 = call i32 @up_read(i32* %172)
  %174 = load i32, i32* %12, align 4
  ret i32 %174
}

declare dso_local %struct.quota_info* @sb_dqopt(%struct.super_block*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @v2_read_header(%struct.super_block*, i32, %struct.v2_disk_dqheader*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @quota_error(%struct.super_block*, i8*) #1

declare dso_local %struct.qtree_mem_dqinfo* @kmalloc(i32, i32) #1

declare dso_local i32 @qtree_depth(%struct.qtree_mem_dqinfo*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
