; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_misc.c_udf_read_tagged.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_misc.c_udf_read_tagged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64 }
%struct.super_block = type { i32 }
%struct.tag = type { i64, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [36 x i8] c"read failed, block=%u, location=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"location mismatch block %u, tag %u != %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"tag checksum failed, block %u: 0x%02x != 0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"tag version 0x%04x != 0x0002 || 0x0003, block %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Crc failure block %u: crc = %u, crclen = %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @udf_read_tagged(%struct.super_block* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.tag*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  br label %131

16:                                               ; preds = %4
  %17 = load %struct.super_block*, %struct.super_block** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.buffer_head* @udf_tread(%struct.super_block* %17, i32 %18)
  store %struct.buffer_head* %19, %struct.buffer_head** %11, align 8
  %20 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %21 = icmp ne %struct.buffer_head* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = load %struct.super_block*, %struct.super_block** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 (%struct.super_block*, i8*, i32, i32, ...) @udf_err(%struct.super_block* %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  br label %131

27:                                               ; preds = %16
  %28 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.tag*
  store %struct.tag* %31, %struct.tag** %10, align 8
  %32 = load %struct.tag*, %struct.tag** %10, align 8
  %33 = getelementptr inbounds %struct.tag, %struct.tag* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @le16_to_cpu(i64 %34)
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.tag*, %struct.tag** %10, align 8
  %39 = getelementptr inbounds %struct.tag, %struct.tag* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @le32_to_cpu(i32 %40)
  %42 = icmp ne i32 %37, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %27
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.tag*, %struct.tag** %10, align 8
  %46 = getelementptr inbounds %struct.tag, %struct.tag* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @le32_to_cpu(i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @udf_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %48, i32 %49)
  br label %128

51:                                               ; preds = %27
  %52 = load %struct.tag*, %struct.tag** %10, align 8
  %53 = call i64 @udf_tag_checksum(%struct.tag* %52)
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load %struct.tag*, %struct.tag** %10, align 8
  %56 = getelementptr inbounds %struct.tag, %struct.tag* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %51
  %60 = load %struct.super_block*, %struct.super_block** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i64, i64* %12, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.tag*, %struct.tag** %10, align 8
  %65 = getelementptr inbounds %struct.tag, %struct.tag* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (%struct.super_block*, i8*, i32, i32, ...) @udf_err(%struct.super_block* %60, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %63, i64 %66)
  br label %128

68:                                               ; preds = %51
  %69 = load %struct.tag*, %struct.tag** %10, align 8
  %70 = getelementptr inbounds %struct.tag, %struct.tag* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @cpu_to_le16(i32 2)
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %68
  %75 = load %struct.tag*, %struct.tag** %10, align 8
  %76 = getelementptr inbounds %struct.tag, %struct.tag* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @cpu_to_le16(i32 3)
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load %struct.super_block*, %struct.super_block** %6, align 8
  %82 = load %struct.tag*, %struct.tag** %10, align 8
  %83 = getelementptr inbounds %struct.tag, %struct.tag* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @le16_to_cpu(i64 %84)
  %86 = load i32, i32* %7, align 4
  %87 = call i32 (%struct.super_block*, i8*, i32, i32, ...) @udf_err(%struct.super_block* %81, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %85, i32 %86)
  br label %128

88:                                               ; preds = %74, %68
  %89 = load %struct.tag*, %struct.tag** %10, align 8
  %90 = getelementptr inbounds %struct.tag, %struct.tag* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @le16_to_cpu(i64 %91)
  %93 = sext i32 %92 to i64
  %94 = add i64 %93, 48
  %95 = load %struct.super_block*, %struct.super_block** %6, align 8
  %96 = getelementptr inbounds %struct.super_block, %struct.super_block* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = icmp ugt i64 %94, %98
  br i1 %99, label %115, label %100

100:                                              ; preds = %88
  %101 = load %struct.tag*, %struct.tag** %10, align 8
  %102 = getelementptr inbounds %struct.tag, %struct.tag* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @le16_to_cpu(i64 %103)
  %105 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %106 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %107, 48
  %109 = load %struct.tag*, %struct.tag** %10, align 8
  %110 = getelementptr inbounds %struct.tag, %struct.tag* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @le16_to_cpu(i64 %111)
  %113 = call i32 @crc_itu_t(i32 0, i64 %108, i32 %112)
  %114 = icmp eq i32 %104, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %100, %88
  %116 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  store %struct.buffer_head* %116, %struct.buffer_head** %5, align 8
  br label %131

117:                                              ; preds = %100
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.tag*, %struct.tag** %10, align 8
  %120 = getelementptr inbounds %struct.tag, %struct.tag* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @le16_to_cpu(i64 %121)
  %123 = load %struct.tag*, %struct.tag** %10, align 8
  %124 = getelementptr inbounds %struct.tag, %struct.tag* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @le16_to_cpu(i64 %125)
  %127 = call i32 @udf_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %118, i32 %122, i32 %126)
  br label %128

128:                                              ; preds = %117, %80, %59, %43
  %129 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %130 = call i32 @brelse(%struct.buffer_head* %129)
  store %struct.buffer_head* null, %struct.buffer_head** %5, align 8
  br label %131

131:                                              ; preds = %128, %115, %22, %15
  %132 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  ret %struct.buffer_head* %132
}

declare dso_local %struct.buffer_head* @udf_tread(%struct.super_block*, i32) #1

declare dso_local i32 @udf_err(%struct.super_block*, i8*, i32, i32, ...) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @udf_debug(i8*, i32, i32, i32) #1

declare dso_local i64 @udf_tag_checksum(%struct.tag*) #1

declare dso_local i64 @cpu_to_le16(i32) #1

declare dso_local i32 @crc_itu_t(i32, i64, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
