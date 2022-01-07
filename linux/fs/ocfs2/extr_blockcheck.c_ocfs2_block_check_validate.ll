; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_blockcheck.c_ocfs2_block_check_validate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_blockcheck.c_ocfs2_block_check_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_block_check = type { i32, i32 }
%struct.ocfs2_blockcheck_stats = type { i32 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"CRC32 failed: stored: 0x%x, computed 0x%x. Applying ECC.\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Fixed CRC32 failed: stored: 0x%x, computed 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_block_check_validate(i8* %0, i64 %1, %struct.ocfs2_block_check* %2, %struct.ocfs2_blockcheck_stats* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ocfs2_block_check*, align 8
  %8 = alloca %struct.ocfs2_blockcheck_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ocfs2_block_check* %2, %struct.ocfs2_block_check** %7, align 8
  store %struct.ocfs2_blockcheck_stats* %3, %struct.ocfs2_blockcheck_stats** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.ocfs2_blockcheck_stats*, %struct.ocfs2_blockcheck_stats** %8, align 8
  %15 = call i32 @ocfs2_blockcheck_inc_check(%struct.ocfs2_blockcheck_stats* %14)
  %16 = load %struct.ocfs2_block_check*, %struct.ocfs2_block_check** %7, align 8
  %17 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @le32_to_cpu(i32 %18)
  store i64 %19, i64* %10, align 8
  %20 = load %struct.ocfs2_block_check*, %struct.ocfs2_block_check** %7, align 8
  %21 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @le16_to_cpu(i32 %22)
  store i64 %23, i64* %11, align 8
  %24 = load %struct.ocfs2_block_check*, %struct.ocfs2_block_check** %7, align 8
  %25 = call i32 @memset(%struct.ocfs2_block_check* %24, i32 0, i32 8)
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i64 @crc32_le(i32 -1, i8* %26, i64 %27)
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  br label %69

33:                                               ; preds = %4
  %34 = load %struct.ocfs2_blockcheck_stats*, %struct.ocfs2_blockcheck_stats** %8, align 8
  %35 = call i32 @ocfs2_blockcheck_inc_failure(%struct.ocfs2_blockcheck_stats* %34)
  %36 = load i32, i32* @ML_ERROR, align 4
  %37 = load i64, i64* %10, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i64, i64* %12, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @mlog(i32 %36, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %40)
  %42 = load i8*, i8** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @ocfs2_hamming_encode_block(i8* %42, i64 %43)
  store i64 %44, i64* %13, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* %11, align 8
  %49 = xor i64 %47, %48
  %50 = call i32 @ocfs2_hamming_fix_block(i8* %45, i64 %46, i64 %49)
  %51 = load i8*, i8** %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i64 @crc32_le(i32 -1, i8* %51, i64 %52)
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %33
  %58 = load %struct.ocfs2_blockcheck_stats*, %struct.ocfs2_blockcheck_stats** %8, align 8
  %59 = call i32 @ocfs2_blockcheck_inc_recover(%struct.ocfs2_blockcheck_stats* %58)
  br label %69

60:                                               ; preds = %33
  %61 = load i32, i32* @ML_ERROR, align 4
  %62 = load i64, i64* %10, align 8
  %63 = trunc i64 %62 to i32
  %64 = load i64, i64* %12, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @mlog(i32 %61, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %65)
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %60, %57, %32
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @cpu_to_le32(i64 %70)
  %72 = load %struct.ocfs2_block_check*, %struct.ocfs2_block_check** %7, align 8
  %73 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @cpu_to_le16(i64 %74)
  %76 = load %struct.ocfs2_block_check*, %struct.ocfs2_block_check** %7, align 8
  %77 = getelementptr inbounds %struct.ocfs2_block_check, %struct.ocfs2_block_check* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  ret i32 %78
}

declare dso_local i32 @ocfs2_blockcheck_inc_check(%struct.ocfs2_blockcheck_stats*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @memset(%struct.ocfs2_block_check*, i32, i32) #1

declare dso_local i64 @crc32_le(i32, i8*, i64) #1

declare dso_local i32 @ocfs2_blockcheck_inc_failure(%struct.ocfs2_blockcheck_stats*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32) #1

declare dso_local i64 @ocfs2_hamming_encode_block(i8*, i64) #1

declare dso_local i32 @ocfs2_hamming_fix_block(i8*, i64, i64) #1

declare dso_local i32 @ocfs2_blockcheck_inc_recover(%struct.ocfs2_blockcheck_stats*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @cpu_to_le16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
