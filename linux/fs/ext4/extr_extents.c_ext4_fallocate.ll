; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_fallocate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_fallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }

@FALLOC_FL_COLLAPSE_RANGE = common dso_local global i32 0, align 4
@FALLOC_FL_INSERT_RANGE = common dso_local global i32 0, align 4
@FALLOC_FL_ZERO_RANGE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i64 0, align 8
@FALLOC_FL_KEEP_SIZE = common dso_local global i32 0, align 4
@FALLOC_FL_PUNCH_HOLE = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_CREATE_UNWRIT_EXT = common dso_local global i32 0, align 4
@EXT4_GET_BLOCKS_KEEP_SIZE = common dso_local global i32 0, align 4
@EXT4_INODE_EXTENTS = common dso_local global i32 0, align 4
@O_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext4_fallocate(%struct.file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.file*, %struct.file** %6, align 8
  %18 = call %struct.inode* @file_inode(%struct.file* %17)
  store %struct.inode* %18, %struct.inode** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.inode*, %struct.inode** %10, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %16, align 4
  %22 = load %struct.inode*, %struct.inode** %10, align 8
  %23 = call i64 @IS_ENCRYPTED(%struct.inode* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @FALLOC_FL_COLLAPSE_RANGE, align 4
  %28 = load i32, i32* @FALLOC_FL_INSERT_RANGE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @FALLOC_FL_ZERO_RANGE, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %26, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i64, i64* @EOPNOTSUPP, align 8
  %36 = sub nsw i64 0, %35
  store i64 %36, i64* %5, align 8
  br label %218

37:                                               ; preds = %25, %4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %40 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @FALLOC_FL_COLLAPSE_RANGE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @FALLOC_FL_ZERO_RANGE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @FALLOC_FL_INSERT_RANGE, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = and i32 %38, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %37
  %52 = load i64, i64* @EOPNOTSUPP, align 8
  %53 = sub nsw i64 0, %52
  store i64 %53, i64* %5, align 8
  br label %218

54:                                               ; preds = %37
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.inode*, %struct.inode** %10, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i64 @ext4_punch_hole(%struct.inode* %60, i32 %61, i32 %62)
  store i64 %63, i64* %5, align 8
  br label %218

64:                                               ; preds = %54
  %65 = load %struct.inode*, %struct.inode** %10, align 8
  %66 = call i32 @ext4_convert_inline_data(%struct.inode* %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %5, align 8
  br label %218

72:                                               ; preds = %64
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @FALLOC_FL_COLLAPSE_RANGE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.inode*, %struct.inode** %10, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i64 @ext4_collapse_range(%struct.inode* %78, i32 %79, i32 %80)
  store i64 %81, i64* %5, align 8
  br label %218

82:                                               ; preds = %72
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @FALLOC_FL_INSERT_RANGE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.inode*, %struct.inode** %10, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i64 @ext4_insert_range(%struct.inode* %88, i32 %89, i32 %90)
  store i64 %91, i64* %5, align 8
  br label %218

92:                                               ; preds = %82
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @FALLOC_FL_ZERO_RANGE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load %struct.file*, %struct.file** %6, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i64 @ext4_zero_range(%struct.file* %98, i32 %99, i32 %100, i32 %101)
  store i64 %102, i64* %5, align 8
  br label %218

103:                                              ; preds = %92
  %104 = load %struct.inode*, %struct.inode** %10, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @trace_ext4_fallocate_enter(%struct.inode* %104, i32 %105, i32 %106, i32 %107)
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %16, align 4
  %111 = lshr i32 %109, %110
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %16, align 4
  %115 = call i32 @EXT4_MAX_BLOCKS(i32 %112, i32 %113, i32 %114)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* @EXT4_GET_BLOCKS_CREATE_UNWRIT_EXT, align 4
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %103
  %122 = load i32, i32* @EXT4_GET_BLOCKS_KEEP_SIZE, align 4
  %123 = load i32, i32* %14, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %14, align 4
  br label %125

125:                                              ; preds = %121, %103
  %126 = load %struct.inode*, %struct.inode** %10, align 8
  %127 = call i32 @inode_lock(%struct.inode* %126)
  %128 = load %struct.inode*, %struct.inode** %10, align 8
  %129 = load i32, i32* @EXT4_INODE_EXTENTS, align 4
  %130 = call i32 @ext4_test_inode_flag(%struct.inode* %128, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %125
  %133 = load i64, i64* @EOPNOTSUPP, align 8
  %134 = sub nsw i64 0, %133
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %13, align 4
  br label %208

136:                                              ; preds = %125
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %168, label %141

141:                                              ; preds = %136
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %9, align 4
  %144 = add i32 %142, %143
  %145 = load %struct.inode*, %struct.inode** %10, align 8
  %146 = call i32 @i_size_read(%struct.inode* %145)
  %147 = icmp ugt i32 %144, %146
  br i1 %147, label %157, label %148

148:                                              ; preds = %141
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %9, align 4
  %151 = add i32 %149, %150
  %152 = load %struct.inode*, %struct.inode** %10, align 8
  %153 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %152)
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp ugt i32 %151, %155
  br i1 %156, label %157, label %168

157:                                              ; preds = %148, %141
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %9, align 4
  %160 = add i32 %158, %159
  store i32 %160, i32* %11, align 4
  %161 = load %struct.inode*, %struct.inode** %10, align 8
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @inode_newsize_ok(%struct.inode* %161, i32 %162)
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* %13, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %157
  br label %208

167:                                              ; preds = %157
  br label %168

168:                                              ; preds = %167, %148, %136
  %169 = load %struct.inode*, %struct.inode** %10, align 8
  %170 = call i32 @inode_dio_wait(%struct.inode* %169)
  %171 = load %struct.file*, %struct.file** %6, align 8
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %14, align 4
  %176 = call i32 @ext4_alloc_file_blocks(%struct.file* %171, i32 %172, i32 %173, i32 %174, i32 %175)
  store i32 %176, i32* %13, align 4
  %177 = load i32, i32* %13, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %168
  br label %208

180:                                              ; preds = %168
  %181 = load %struct.file*, %struct.file** %6, align 8
  %182 = getelementptr inbounds %struct.file, %struct.file* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @O_SYNC, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %207

187:                                              ; preds = %180
  %188 = load %struct.inode*, %struct.inode** %10, align 8
  %189 = getelementptr inbounds %struct.inode, %struct.inode* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call %struct.TYPE_3__* @EXT4_SB(i32 %190)
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %207

195:                                              ; preds = %187
  %196 = load %struct.inode*, %struct.inode** %10, align 8
  %197 = getelementptr inbounds %struct.inode, %struct.inode* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call %struct.TYPE_3__* @EXT4_SB(i32 %198)
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.inode*, %struct.inode** %10, align 8
  %203 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %202)
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @jbd2_complete_transaction(i64 %201, i32 %205)
  store i32 %206, i32* %13, align 4
  br label %207

207:                                              ; preds = %195, %187, %180
  br label %208

208:                                              ; preds = %207, %179, %166, %132
  %209 = load %struct.inode*, %struct.inode** %10, align 8
  %210 = call i32 @inode_unlock(%struct.inode* %209)
  %211 = load %struct.inode*, %struct.inode** %10, align 8
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* %12, align 4
  %214 = load i32, i32* %13, align 4
  %215 = call i32 @trace_ext4_fallocate_exit(%struct.inode* %211, i32 %212, i32 %213, i32 %214)
  %216 = load i32, i32* %13, align 4
  %217 = sext i32 %216 to i64
  store i64 %217, i64* %5, align 8
  br label %218

218:                                              ; preds = %208, %97, %87, %77, %69, %59, %51, %34
  %219 = load i64, i64* %5, align 8
  ret i64 %219
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i64 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i64 @ext4_punch_hole(%struct.inode*, i32, i32) #1

declare dso_local i32 @ext4_convert_inline_data(%struct.inode*) #1

declare dso_local i64 @ext4_collapse_range(%struct.inode*, i32, i32) #1

declare dso_local i64 @ext4_insert_range(%struct.inode*, i32, i32) #1

declare dso_local i64 @ext4_zero_range(%struct.file*, i32, i32, i32) #1

declare dso_local i32 @trace_ext4_fallocate_enter(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @EXT4_MAX_BLOCKS(i32, i32, i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ext4_test_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @inode_newsize_ok(%struct.inode*, i32) #1

declare dso_local i32 @inode_dio_wait(%struct.inode*) #1

declare dso_local i32 @ext4_alloc_file_blocks(%struct.file*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_3__* @EXT4_SB(i32) #1

declare dso_local i32 @jbd2_complete_transaction(i64, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @trace_ext4_fallocate_exit(%struct.inode*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
