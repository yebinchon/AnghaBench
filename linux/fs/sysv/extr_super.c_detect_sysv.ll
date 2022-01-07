; ModuleID = '/home/carl/AnghaBench/linux/fs/sysv/extr_super.c_detect_sysv.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysv/extr_super.c_detect_sysv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysv_sb_info = type { i32, i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.sysv4_super_block = type { i32, i32, i32, i32 }

@BLOCK_SIZE = common dso_local global i32 0, align 4
@BYTESEX_LE = common dso_local global i32 0, align 4
@BYTESEX_BE = common dso_local global i32 0, align 4
@FSTYPE_AFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"SysV FS: SCO EAFS on %s detected, forcing read-only mode.\0A\00", align 1
@JAN_1_1980 = common dso_local global i64 0, align 8
@FSTYPE_SYSV2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"SysV FS: can't handle long file names on %s, forcing read-only mode.\0A\00", align 1
@FSTYPE_SYSV4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysv_sb_info*, %struct.buffer_head*)* @detect_sysv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_sysv(%struct.sysv_sb_info* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sysv_sb_info*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.sysv4_super_block*, align 8
  %8 = alloca i32, align 4
  store %struct.sysv_sb_info* %0, %struct.sysv_sb_info** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  %9 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %10 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %9, i32 0, i32 3
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %6, align 8
  %12 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %13 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @BLOCK_SIZE, align 4
  %16 = sdiv i32 %15, 2
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %14, %17
  %19 = inttoptr i64 %18 to %struct.sysv4_super_block*
  store %struct.sysv4_super_block* %19, %struct.sysv4_super_block** %7, align 8
  %20 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %7, align 8
  %21 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %20, i32 0, i32 3
  %22 = bitcast i32* %21 to i64*
  %23 = load i64, i64* %22, align 4
  %24 = call i64 @cpu_to_le32(i32 -48726496)
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @BYTESEX_LE, align 4
  %28 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %29 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  br label %43

30:                                               ; preds = %2
  %31 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %7, align 8
  %32 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %31, i32 0, i32 3
  %33 = bitcast i32* %32 to i64*
  %34 = load i64, i64* %33, align 4
  %35 = call i64 @cpu_to_be32(i32 -48726496)
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* @BYTESEX_BE, align 4
  %39 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %40 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  br label %42

41:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %128

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %26
  %44 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %45 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %7, align 8
  %46 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @fs32_to_cpu(%struct.sysv_sb_info* %44, i32 %47)
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %8, align 4
  %50 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %51 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %7, align 8
  %52 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @fs16_to_cpu(%struct.sysv_sb_info* %50, i32 %53)
  %55 = icmp eq i32 %54, 65535
  br i1 %55, label %56, label %72

56:                                               ; preds = %43
  %57 = load i32, i32* @FSTYPE_AFS, align 4
  %58 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %59 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %61 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.super_block*, %struct.super_block** %6, align 8
  %63 = call i32 @sb_rdonly(%struct.super_block* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %56
  %66 = load %struct.super_block*, %struct.super_block** %6, align 8
  %67 = getelementptr inbounds %struct.super_block, %struct.super_block* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %65, %56
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %128

72:                                               ; preds = %43
  %73 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %74 = load %struct.sysv4_super_block*, %struct.sysv4_super_block** %7, align 8
  %75 = getelementptr inbounds %struct.sysv4_super_block, %struct.sysv4_super_block* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @fs32_to_cpu(%struct.sysv_sb_info* %73, i32 %76)
  %78 = load i64, i64* @JAN_1_1980, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %72
  %81 = load i32, i32* %8, align 4
  %82 = icmp sgt i32 %81, 3
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 1
  br i1 %85, label %86, label %87

86:                                               ; preds = %83, %80
  store i32 0, i32* %3, align 4
  br label %128

87:                                               ; preds = %83
  %88 = load i32, i32* @FSTYPE_SYSV2, align 4
  %89 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %90 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %3, align 4
  br label %128

92:                                               ; preds = %72
  %93 = load i32, i32* %8, align 4
  %94 = icmp sgt i32 %93, 3
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %96, 1
  br i1 %97, label %98, label %105

98:                                               ; preds = %95, %92
  %99 = load i32, i32* %8, align 4
  %100 = icmp sgt i32 %99, 48
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %102, 16
  br i1 %103, label %104, label %105

104:                                              ; preds = %101, %98
  store i32 0, i32* %3, align 4
  br label %128

105:                                              ; preds = %101, %95
  %106 = load i32, i32* %8, align 4
  %107 = icmp sge i32 %106, 16
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = load %struct.super_block*, %struct.super_block** %6, align 8
  %110 = getelementptr inbounds %struct.super_block, %struct.super_block* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @printk(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %111)
  %113 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %114 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  br label %115

115:                                              ; preds = %108, %105
  %116 = load i32, i32* @FSTYPE_SYSV4, align 4
  %117 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %4, align 8
  %118 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp sge i32 %119, 16
  br i1 %120, label %121, label %124

121:                                              ; preds = %115
  %122 = load i32, i32* %8, align 4
  %123 = ashr i32 %122, 4
  br label %126

124:                                              ; preds = %115
  %125 = load i32, i32* %8, align 4
  br label %126

126:                                              ; preds = %124, %121
  %127 = phi i32 [ %123, %121 ], [ %125, %124 ]
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %104, %87, %86, %70, %41
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i64 @fs32_to_cpu(%struct.sysv_sb_info*, i32) #1

declare dso_local i32 @fs16_to_cpu(%struct.sysv_sb_info*, i32) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
