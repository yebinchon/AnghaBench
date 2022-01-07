; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_blockcheck.c_ocfs2_block_check_validate_bhs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_blockcheck.c_ocfs2_block_check_validate_bhs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, i32 }
%struct.ocfs2_block_check = type { i32, i32 }
%struct.ocfs2_blockcheck_stats = type { i32 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"CRC32 failed: stored: %u, computed %u.  Applying ECC.\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Fixed CRC32 failed: stored: %u, computed %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_block_check_validate_bhs(%struct.buffer_head** %0, i32 %1, %struct.ocfs2_block_check* %2, %struct.ocfs2_blockcheck_stats* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_block_check*, align 8
  %9 = alloca %struct.ocfs2_blockcheck_stats*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.buffer_head** %0, %struct.buffer_head*** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ocfs2_block_check* %2, %struct.ocfs2_block_check** %8, align 8
  store %struct.ocfs2_blockcheck_stats* %3, %struct.ocfs2_blockcheck_stats** %9, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %197

24:                                               ; preds = %4
  %25 = load %struct.ocfs2_blockcheck_stats*, %struct.ocfs2_blockcheck_stats** %9, align 8
  %26 = call i32 @ocfs2_blockcheck_inc_check(%struct.ocfs2_blockcheck_stats* %25)
  %27 = load %struct.ocfs2_block_check*, %struct.ocfs2_block_check** %8, align 8
  %28 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.ocfs2_block_check*, %struct.ocfs2_block_check** %8, align 8
  %32 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le16_to_cpu(i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load %struct.ocfs2_block_check*, %struct.ocfs2_block_check** %8, align 8
  %36 = call i32 @memset(%struct.ocfs2_block_check* %35, i32 0, i32 8)
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %14, align 4
  br label %37

37:                                               ; preds = %58, %24
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = load i32, i32* %14, align 4
  %43 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %43, i64 %45
  %47 = load %struct.buffer_head*, %struct.buffer_head** %46, align 8
  %48 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %50, i64 %52
  %54 = load %struct.buffer_head*, %struct.buffer_head** %53, align 8
  %55 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @crc32_le(i32 %42, i32 %49, i32 %56)
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %41
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %37

61:                                               ; preds = %37
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %187

66:                                               ; preds = %61
  %67 = load %struct.ocfs2_blockcheck_stats*, %struct.ocfs2_blockcheck_stats** %9, align 8
  %68 = call i32 @ocfs2_blockcheck_inc_failure(%struct.ocfs2_blockcheck_stats* %67)
  %69 = load i32, i32* @ML_ERROR, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @mlog(i32 %69, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %71)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %15, align 4
  br label %73

73:                                               ; preds = %106, %66
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %109

77:                                               ; preds = %73
  %78 = load i32, i32* %15, align 4
  %79 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %79, i64 %81
  %83 = load %struct.buffer_head*, %struct.buffer_head** %82, align 8
  %84 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %86, i64 %88
  %90 = load %struct.buffer_head*, %struct.buffer_head** %89, align 8
  %91 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %92, 8
  %94 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %94, i64 %96
  %98 = load %struct.buffer_head*, %struct.buffer_head** %97, align 8
  %99 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %100, 8
  %102 = load i32, i32* %10, align 4
  %103 = mul nsw i32 %101, %102
  %104 = call i64 @ocfs2_hamming_encode(i32 %78, i32 %85, i32 %93, i32 %103)
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %15, align 4
  br label %106

106:                                              ; preds = %77
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %73

109:                                              ; preds = %73
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %13, align 4
  %112 = xor i32 %110, %111
  store i32 %112, i32* %16, align 4
  store i32 0, i32* %10, align 4
  br label %113

113:                                              ; preds = %145, %109
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %148

117:                                              ; preds = %113
  %118 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %118, i64 %120
  %122 = load %struct.buffer_head*, %struct.buffer_head** %121, align 8
  %123 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %125, i64 %127
  %129 = load %struct.buffer_head*, %struct.buffer_head** %128, align 8
  %130 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 %131, 8
  %133 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %133, i64 %135
  %137 = load %struct.buffer_head*, %struct.buffer_head** %136, align 8
  %138 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 %139, 8
  %141 = load i32, i32* %10, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load i32, i32* %16, align 4
  %144 = call i32 @ocfs2_hamming_fix(i32 %124, i32 %132, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %117
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %10, align 4
  br label %113

148:                                              ; preds = %113
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %14, align 4
  br label %149

149:                                              ; preds = %170, %148
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %173

153:                                              ; preds = %149
  %154 = load i32, i32* %14, align 4
  %155 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %155, i64 %157
  %159 = load %struct.buffer_head*, %struct.buffer_head** %158, align 8
  %160 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %162, i64 %164
  %166 = load %struct.buffer_head*, %struct.buffer_head** %165, align 8
  %167 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @crc32_le(i32 %154, i32 %161, i32 %168)
  store i32 %169, i32* %14, align 4
  br label %170

170:                                              ; preds = %153
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %10, align 4
  br label %149

173:                                              ; preds = %149
  %174 = load i32, i32* %14, align 4
  %175 = load i32, i32* %12, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load %struct.ocfs2_blockcheck_stats*, %struct.ocfs2_blockcheck_stats** %9, align 8
  %179 = call i32 @ocfs2_blockcheck_inc_recover(%struct.ocfs2_blockcheck_stats* %178)
  br label %187

180:                                              ; preds = %173
  %181 = load i32, i32* @ML_ERROR, align 4
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* %14, align 4
  %184 = call i32 @mlog(i32 %181, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %182, i32 %183)
  %185 = load i32, i32* @EIO, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %11, align 4
  br label %187

187:                                              ; preds = %180, %177, %65
  %188 = load i32, i32* %12, align 4
  %189 = call i32 @cpu_to_le32(i32 %188)
  %190 = load %struct.ocfs2_block_check*, %struct.ocfs2_block_check** %8, align 8
  %191 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* %13, align 4
  %193 = call i32 @cpu_to_le16(i32 %192)
  %194 = load %struct.ocfs2_block_check*, %struct.ocfs2_block_check** %8, align 8
  %195 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* %11, align 4
  store i32 %196, i32* %5, align 4
  br label %197

197:                                              ; preds = %187, %23
  %198 = load i32, i32* %5, align 4
  ret i32 %198
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_blockcheck_inc_check(%struct.ocfs2_blockcheck_stats*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memset(%struct.ocfs2_block_check*, i32, i32) #1

declare dso_local i32 @crc32_le(i32, i32, i32) #1

declare dso_local i32 @ocfs2_blockcheck_inc_failure(%struct.ocfs2_blockcheck_stats*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32) #1

declare dso_local i64 @ocfs2_hamming_encode(i32, i32, i32, i32) #1

declare dso_local i32 @ocfs2_hamming_fix(i32, i32, i32, i32) #1

declare dso_local i32 @ocfs2_blockcheck_inc_recover(%struct.ocfs2_blockcheck_stats*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
