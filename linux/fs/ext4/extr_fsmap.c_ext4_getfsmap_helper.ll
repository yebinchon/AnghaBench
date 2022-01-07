; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_fsmap.c_ext4_getfsmap_helper.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_fsmap.c_ext4_getfsmap_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_getfsmap_info = type { i64, i32 (%struct.ext4_fsmap*, i32)*, %struct.TYPE_2__*, i32, i32, i64 }
%struct.ext4_fsmap = type opaque
%struct.TYPE_2__ = type { i64, i64 }
%struct.ext4_fsmap.0 = type { i64, i64, i8*, i32, i32 }
%struct.ext4_sb_info = type { i32 }

@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EXT4_QUERY_RANGE_CONTINUE = common dso_local global i32 0, align 4
@EXT4_QUERY_RANGE_ABORT = common dso_local global i32 0, align 4
@EXT4_FMR_OWN_UNKNOWN = common dso_local global i32 0, align 4
@FMR_OF_SPECIAL_OWNER = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ext4_getfsmap_info*, %struct.ext4_fsmap.0*)* @ext4_getfsmap_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_getfsmap_helper(%struct.super_block* %0, %struct.ext4_getfsmap_info* %1, %struct.ext4_fsmap.0* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ext4_getfsmap_info*, align 8
  %7 = alloca %struct.ext4_fsmap.0*, align 8
  %8 = alloca %struct.ext4_fsmap.0, align 8
  %9 = alloca %struct.ext4_sb_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.ext4_getfsmap_info* %1, %struct.ext4_getfsmap_info** %6, align 8
  store %struct.ext4_fsmap.0* %2, %struct.ext4_fsmap.0** %7, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %14)
  store %struct.ext4_sb_info* %15, %struct.ext4_sb_info** %9, align 8
  %16 = load %struct.ext4_fsmap.0*, %struct.ext4_fsmap.0** %7, align 8
  %17 = getelementptr inbounds %struct.ext4_fsmap.0, %struct.ext4_fsmap.0* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load i32, i32* @current, align 4
  %20 = call i64 @fatal_signal_pending(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINTR, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %266

25:                                               ; preds = %3
  %26 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %27 = load %struct.ext4_fsmap.0*, %struct.ext4_fsmap.0** %7, align 8
  %28 = call i64 @ext4_getfsmap_rec_before_low_key(%struct.ext4_getfsmap_info* %26, %struct.ext4_fsmap.0* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  %31 = load %struct.ext4_fsmap.0*, %struct.ext4_fsmap.0** %7, align 8
  %32 = getelementptr inbounds %struct.ext4_fsmap.0, %struct.ext4_fsmap.0* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = add nsw i64 %34, %33
  store i64 %35, i64* %10, align 8
  %36 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %37 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %44 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %41, %30
  %46 = load i32, i32* @EXT4_QUERY_RANGE_CONTINUE, align 4
  store i32 %46, i32* %4, align 4
  br label %266

47:                                               ; preds = %25
  %48 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %49 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %97

54:                                               ; preds = %47
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %57 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %55, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %62 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  br label %67

67:                                               ; preds = %60, %54
  %68 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %69 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @EXT4_QUERY_RANGE_CONTINUE, align 4
  store i32 %73, i32* %4, align 4
  br label %266

74:                                               ; preds = %67
  %75 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %76 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %78, align 8
  %81 = load %struct.ext4_fsmap.0*, %struct.ext4_fsmap.0** %7, align 8
  %82 = getelementptr inbounds %struct.ext4_fsmap.0, %struct.ext4_fsmap.0* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %10, align 8
  %85 = add nsw i64 %84, %83
  store i64 %85, i64* %10, align 8
  %86 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %87 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %10, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %74
  %92 = load i64, i64* %10, align 8
  %93 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %94 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %91, %74
  %96 = load i32, i32* @EXT4_QUERY_RANGE_CONTINUE, align 4
  store i32 %96, i32* %4, align 4
  br label %266

97:                                               ; preds = %47
  %98 = load i64, i64* %10, align 8
  %99 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %100 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %98, %101
  br i1 %102, label %103, label %175

103:                                              ; preds = %97
  %104 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %105 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %104, i32 0, i32 2
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %110 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %109, i32 0, i32 2
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp sge i64 %108, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %103
  %116 = load i32, i32* @EXT4_QUERY_RANGE_ABORT, align 4
  store i32 %116, i32* %4, align 4
  br label %266

117:                                              ; preds = %103
  %118 = load %struct.super_block*, %struct.super_block** %5, align 8
  %119 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %120 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @ext4_get_group_no_and_offset(%struct.super_block* %118, i64 %121, i32* %11, i32* %12)
  %123 = load %struct.super_block*, %struct.super_block** %5, align 8
  %124 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %125 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %9, align 8
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @EXT4_C2B(%struct.ext4_sb_info* %128, i32 %129)
  %131 = load i64, i64* %10, align 8
  %132 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %133 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = sub nsw i64 %131, %134
  %136 = load i32, i32* @EXT4_FMR_OWN_UNKNOWN, align 4
  %137 = call i32 @trace_ext4_fsmap_mapping(%struct.super_block* %123, i32 %126, i32 %127, i32 %130, i64 %135, i32 %136)
  %138 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %139 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.ext4_fsmap.0, %struct.ext4_fsmap.0* %8, i32 0, i32 4
  store i32 %140, i32* %141, align 4
  %142 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %143 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.ext4_fsmap.0, %struct.ext4_fsmap.0* %8, i32 0, i32 0
  store i64 %144, i64* %145, align 8
  %146 = load i32, i32* @EXT4_FMR_OWN_UNKNOWN, align 4
  %147 = getelementptr inbounds %struct.ext4_fsmap.0, %struct.ext4_fsmap.0* %8, i32 0, i32 3
  store i32 %146, i32* %147, align 8
  %148 = load i64, i64* %10, align 8
  %149 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %150 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = sub nsw i64 %148, %151
  %153 = getelementptr inbounds %struct.ext4_fsmap.0, %struct.ext4_fsmap.0* %8, i32 0, i32 1
  store i64 %152, i64* %153, align 8
  %154 = load i8*, i8** @FMR_OF_SPECIAL_OWNER, align 8
  %155 = getelementptr inbounds %struct.ext4_fsmap.0, %struct.ext4_fsmap.0* %8, i32 0, i32 2
  store i8* %154, i8** %155, align 8
  %156 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %157 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %156, i32 0, i32 1
  %158 = load i32 (%struct.ext4_fsmap*, i32)*, i32 (%struct.ext4_fsmap*, i32)** %157, align 8
  %159 = bitcast %struct.ext4_fsmap.0* %8 to %struct.ext4_fsmap*
  %160 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %161 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = call i32 %158(%struct.ext4_fsmap* %159, i32 %162)
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* %13, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %117
  %167 = load i32, i32* %13, align 4
  store i32 %167, i32* %4, align 4
  br label %266

168:                                              ; preds = %117
  %169 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %170 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %169, i32 0, i32 2
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %173, 1
  store i64 %174, i64* %172, align 8
  br label %175

175:                                              ; preds = %168, %97
  %176 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %177 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %176, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %175
  br label %249

181:                                              ; preds = %175
  %182 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %183 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %182, i32 0, i32 2
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %188 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %187, i32 0, i32 2
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp sge i64 %186, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %181
  %194 = load i32, i32* @EXT4_QUERY_RANGE_ABORT, align 4
  store i32 %194, i32* %4, align 4
  br label %266

195:                                              ; preds = %181
  %196 = load %struct.super_block*, %struct.super_block** %5, align 8
  %197 = load i64, i64* %10, align 8
  %198 = call i32 @ext4_get_group_no_and_offset(%struct.super_block* %196, i64 %197, i32* %11, i32* %12)
  %199 = load %struct.super_block*, %struct.super_block** %5, align 8
  %200 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %201 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %11, align 4
  %204 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %9, align 8
  %205 = load i32, i32* %12, align 4
  %206 = call i32 @EXT4_C2B(%struct.ext4_sb_info* %204, i32 %205)
  %207 = load %struct.ext4_fsmap.0*, %struct.ext4_fsmap.0** %7, align 8
  %208 = getelementptr inbounds %struct.ext4_fsmap.0, %struct.ext4_fsmap.0* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.ext4_fsmap.0*, %struct.ext4_fsmap.0** %7, align 8
  %211 = getelementptr inbounds %struct.ext4_fsmap.0, %struct.ext4_fsmap.0* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @trace_ext4_fsmap_mapping(%struct.super_block* %199, i32 %202, i32 %203, i32 %206, i64 %209, i32 %212)
  %214 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %215 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 4
  %217 = getelementptr inbounds %struct.ext4_fsmap.0, %struct.ext4_fsmap.0* %8, i32 0, i32 4
  store i32 %216, i32* %217, align 4
  %218 = load i64, i64* %10, align 8
  %219 = getelementptr inbounds %struct.ext4_fsmap.0, %struct.ext4_fsmap.0* %8, i32 0, i32 0
  store i64 %218, i64* %219, align 8
  %220 = load %struct.ext4_fsmap.0*, %struct.ext4_fsmap.0** %7, align 8
  %221 = getelementptr inbounds %struct.ext4_fsmap.0, %struct.ext4_fsmap.0* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = getelementptr inbounds %struct.ext4_fsmap.0, %struct.ext4_fsmap.0* %8, i32 0, i32 3
  store i32 %222, i32* %223, align 8
  %224 = load i8*, i8** @FMR_OF_SPECIAL_OWNER, align 8
  %225 = getelementptr inbounds %struct.ext4_fsmap.0, %struct.ext4_fsmap.0* %8, i32 0, i32 2
  store i8* %224, i8** %225, align 8
  %226 = load %struct.ext4_fsmap.0*, %struct.ext4_fsmap.0** %7, align 8
  %227 = getelementptr inbounds %struct.ext4_fsmap.0, %struct.ext4_fsmap.0* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = getelementptr inbounds %struct.ext4_fsmap.0, %struct.ext4_fsmap.0* %8, i32 0, i32 1
  store i64 %228, i64* %229, align 8
  %230 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %231 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %230, i32 0, i32 1
  %232 = load i32 (%struct.ext4_fsmap*, i32)*, i32 (%struct.ext4_fsmap*, i32)** %231, align 8
  %233 = bitcast %struct.ext4_fsmap.0* %8 to %struct.ext4_fsmap*
  %234 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %235 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = call i32 %232(%struct.ext4_fsmap* %233, i32 %236)
  store i32 %237, i32* %13, align 4
  %238 = load i32, i32* %13, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %195
  %241 = load i32, i32* %13, align 4
  store i32 %241, i32* %4, align 4
  br label %266

242:                                              ; preds = %195
  %243 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %244 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %243, i32 0, i32 2
  %245 = load %struct.TYPE_2__*, %struct.TYPE_2__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = add nsw i64 %247, 1
  store i64 %248, i64* %246, align 8
  br label %249

249:                                              ; preds = %242, %180
  %250 = load %struct.ext4_fsmap.0*, %struct.ext4_fsmap.0** %7, align 8
  %251 = getelementptr inbounds %struct.ext4_fsmap.0, %struct.ext4_fsmap.0* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* %10, align 8
  %254 = add nsw i64 %253, %252
  store i64 %254, i64* %10, align 8
  %255 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %256 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* %10, align 8
  %259 = icmp slt i64 %257, %258
  br i1 %259, label %260, label %264

260:                                              ; preds = %249
  %261 = load i64, i64* %10, align 8
  %262 = load %struct.ext4_getfsmap_info*, %struct.ext4_getfsmap_info** %6, align 8
  %263 = getelementptr inbounds %struct.ext4_getfsmap_info, %struct.ext4_getfsmap_info* %262, i32 0, i32 0
  store i64 %261, i64* %263, align 8
  br label %264

264:                                              ; preds = %260, %249
  %265 = load i32, i32* @EXT4_QUERY_RANGE_CONTINUE, align 4
  store i32 %265, i32* %4, align 4
  br label %266

266:                                              ; preds = %264, %240, %193, %166, %115, %95, %72, %45, %22
  %267 = load i32, i32* %4, align 4
  ret i32 %267
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i64 @fatal_signal_pending(i32) #1

declare dso_local i64 @ext4_getfsmap_rec_before_low_key(%struct.ext4_getfsmap_info*, %struct.ext4_fsmap.0*) #1

declare dso_local i32 @ext4_get_group_no_and_offset(%struct.super_block*, i64, i32*, i32*) #1

declare dso_local i32 @trace_ext4_fsmap_mapping(%struct.super_block*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @EXT4_C2B(%struct.ext4_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
