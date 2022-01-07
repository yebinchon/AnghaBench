; ModuleID = '/home/carl/AnghaBench/linux/fs/ntfs/extr_super.c_read_ntfs_boot_sector.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ntfs/extr_super.c_read_ntfs_boot_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64 }
%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Unable to read %s boot sector.\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Primary boot sector is invalid.\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@ON_ERRORS_RECOVER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [74 x i8] c"Mount option errors=recover not used. Aborting without trying to recover.\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"backup\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Could not find a valid backup boot sector.\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"Hot-fix: Recovering invalid primary boot sector from backup copy.\00", align 1
@NTFS_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [66 x i8] c"Hot-fix: Device write error while recovering primary boot sector.\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"Hot-fix: Recovery of primary boot sector failed: Read-only mount.\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Using backup boot sector.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.super_block*, i32)* @read_ntfs_boot_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @read_ntfs_boot_sector(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = call %struct.TYPE_2__* @NTFS_SB(%struct.super_block* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = call %struct.buffer_head* @sb_bread(%struct.super_block* %14, i32 0)
  store %struct.buffer_head* %15, %struct.buffer_head** %7, align 8
  %16 = icmp ne %struct.buffer_head* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %2
  %18 = load %struct.super_block*, %struct.super_block** %4, align 8
  %19 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %20 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @is_boot_sector_ntfs(%struct.super_block* %18, i32* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %27, %struct.buffer_head** %3, align 8
  br label %173

28:                                               ; preds = %17
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load %struct.super_block*, %struct.super_block** %4, align 8
  %33 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %28
  br label %43

35:                                               ; preds = %2
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %35
  %39 = load %struct.super_block*, %struct.super_block** %4, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %39, i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %38, %35
  br label %43

43:                                               ; preds = %42, %34
  %44 = load %struct.super_block*, %struct.super_block** %4, align 8
  %45 = call %struct.TYPE_2__* @NTFS_SB(%struct.super_block* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ON_ERRORS_RECOVER, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %43
  %52 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %53 = icmp ne %struct.buffer_head* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %56 = call i32 @brelse(%struct.buffer_head* %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load %struct.super_block*, %struct.super_block** %4, align 8
  %62 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %61, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %57
  store %struct.buffer_head* null, %struct.buffer_head** %3, align 8
  br label %173

64:                                               ; preds = %43
  %65 = load %struct.super_block*, %struct.super_block** %4, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sub nsw i32 %66, 1
  %68 = call %struct.buffer_head* @sb_bread(%struct.super_block* %65, i32 %67)
  store %struct.buffer_head* %68, %struct.buffer_head** %8, align 8
  %69 = icmp ne %struct.buffer_head* %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = load %struct.super_block*, %struct.super_block** %4, align 8
  %72 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %73 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i32*
  %76 = load i32, i32* %5, align 4
  %77 = call i64 @is_boot_sector_ntfs(%struct.super_block* %71, i32* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  br label %131

80:                                               ; preds = %70
  %81 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %82 = call i32 @brelse(%struct.buffer_head* %81)
  br label %91

83:                                               ; preds = %64
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = load %struct.super_block*, %struct.super_block** %4, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %87, i8* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %90

90:                                               ; preds = %86, %83
  br label %91

91:                                               ; preds = %90, %80
  %92 = load %struct.super_block*, %struct.super_block** %4, align 8
  %93 = load i32, i32* %9, align 4
  %94 = ashr i32 %93, 1
  %95 = call %struct.buffer_head* @sb_bread(%struct.super_block* %92, i32 %94)
  store %struct.buffer_head* %95, %struct.buffer_head** %8, align 8
  %96 = icmp ne %struct.buffer_head* %95, null
  br i1 %96, label %97, label %116

97:                                               ; preds = %91
  %98 = load %struct.super_block*, %struct.super_block** %4, align 8
  %99 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %100 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i32*
  %103 = load i32, i32* %5, align 4
  %104 = call i64 @is_boot_sector_ntfs(%struct.super_block* %98, i32* %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %97
  br label %131

107:                                              ; preds = %97
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load %struct.super_block*, %struct.super_block** %4, align 8
  %112 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %111, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %107
  %114 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %115 = call i32 @brelse(%struct.buffer_head* %114)
  br label %124

116:                                              ; preds = %91
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %116
  %120 = load %struct.super_block*, %struct.super_block** %4, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %120, i8* %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %123

123:                                              ; preds = %119, %116
  br label %124

124:                                              ; preds = %123, %113
  %125 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %126 = icmp ne %struct.buffer_head* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %129 = call i32 @brelse(%struct.buffer_head* %128)
  br label %130

130:                                              ; preds = %127, %124
  store %struct.buffer_head* null, %struct.buffer_head** %3, align 8
  br label %173

131:                                              ; preds = %106, %79
  %132 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %133 = icmp ne %struct.buffer_head* %132, null
  br i1 %133, label %134, label %169

134:                                              ; preds = %131
  %135 = load %struct.super_block*, %struct.super_block** %4, align 8
  %136 = call i32 @sb_rdonly(%struct.super_block* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %163, label %138

138:                                              ; preds = %134
  %139 = load %struct.super_block*, %struct.super_block** %4, align 8
  %140 = call i32 @ntfs_warning(%struct.super_block* %139, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0))
  %141 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %142 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %145 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* @NTFS_BLOCK_SIZE, align 4
  %148 = call i32 @memcpy(i64 %143, i64 %146, i32 %147)
  %149 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %150 = call i32 @mark_buffer_dirty(%struct.buffer_head* %149)
  %151 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %152 = call i32 @sync_dirty_buffer(%struct.buffer_head* %151)
  %153 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %154 = call i64 @buffer_uptodate(%struct.buffer_head* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %138
  %157 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %158 = call i32 @brelse(%struct.buffer_head* %157)
  %159 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %159, %struct.buffer_head** %3, align 8
  br label %173

160:                                              ; preds = %138
  %161 = load %struct.super_block*, %struct.super_block** %4, align 8
  %162 = call i32 (%struct.super_block*, i8*, ...) @ntfs_error(%struct.super_block* %161, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0))
  br label %166

163:                                              ; preds = %134
  %164 = load %struct.super_block*, %struct.super_block** %4, align 8
  %165 = call i32 @ntfs_warning(%struct.super_block* %164, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i64 0, i64 0))
  br label %166

166:                                              ; preds = %163, %160
  %167 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %168 = call i32 @brelse(%struct.buffer_head* %167)
  br label %169

169:                                              ; preds = %166, %131
  %170 = load %struct.super_block*, %struct.super_block** %4, align 8
  %171 = call i32 @ntfs_warning(%struct.super_block* %170, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %172 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* %172, %struct.buffer_head** %3, align 8
  br label %173

173:                                              ; preds = %169, %156, %130, %63, %26
  %174 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  ret %struct.buffer_head* %174
}

declare dso_local %struct.TYPE_2__* @NTFS_SB(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i64 @is_boot_sector_ntfs(%struct.super_block*, i32*, i32) #1

declare dso_local i32 @ntfs_error(%struct.super_block*, i8*, ...) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @ntfs_warning(%struct.super_block*, i8*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
