; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_file_fallocate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_file_fallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.fuse_fallocate_in* }
%struct.fuse_fallocate_in = type { i64, i64, i32, i32 }
%struct.file = type { %struct.fuse_file* }
%struct.fuse_file = type { i32, i32, %struct.fuse_conn* }
%struct.fuse_conn = type { i32, i64 }
%struct.inode = type { i32 }
%struct.fuse_inode = type { i32 }

@args = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@FALLOC_FL_KEEP_SIZE = common dso_local global i32 0, align 4
@FALLOC_FL_PUNCH_HOLE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i64 0, align 8
@FUSE_I_SIZE_UNSTABLE = common dso_local global i32 0, align 4
@FUSE_FALLOCATE = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64, i64)* @fuse_file_fallocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fuse_file_fallocate(%struct.file* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fuse_file*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.fuse_inode*, align 8
  %13 = alloca %struct.fuse_conn*, align 8
  %14 = alloca %struct.fuse_fallocate_in, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load %struct.file*, %struct.file** %6, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load %struct.fuse_file*, %struct.fuse_file** %20, align 8
  store %struct.fuse_file* %21, %struct.fuse_file** %10, align 8
  %22 = load %struct.file*, %struct.file** %6, align 8
  %23 = call %struct.inode* @file_inode(%struct.file* %22)
  store %struct.inode* %23, %struct.inode** %11, align 8
  %24 = load %struct.inode*, %struct.inode** %11, align 8
  %25 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %24)
  store %struct.fuse_inode* %25, %struct.fuse_inode** %12, align 8
  %26 = load %struct.fuse_file*, %struct.fuse_file** %10, align 8
  %27 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %26, i32 0, i32 2
  %28 = load %struct.fuse_conn*, %struct.fuse_conn** %27, align 8
  store %struct.fuse_conn* %28, %struct.fuse_conn** %13, align 8
  %29 = call i32 @FUSE_ARGS(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 @args)
  %30 = getelementptr inbounds %struct.fuse_fallocate_in, %struct.fuse_fallocate_in* %14, i32 0, i32 0
  %31 = load i64, i64* %8, align 8
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %struct.fuse_fallocate_in, %struct.fuse_fallocate_in* %14, i32 0, i32 1
  %33 = load i64, i64* %9, align 8
  store i64 %33, i64* %32, align 8
  %34 = getelementptr inbounds %struct.fuse_fallocate_in, %struct.fuse_fallocate_in* %14, i32 0, i32 2
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %34, align 8
  %36 = getelementptr inbounds %struct.fuse_fallocate_in, %struct.fuse_fallocate_in* %14, i32 0, i32 3
  %37 = load %struct.fuse_file*, %struct.fuse_file** %10, align 8
  %38 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %36, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %44, %4
  %50 = phi i1 [ true, %4 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %54 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %55 = or i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = and i32 %52, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load i64, i64* @EOPNOTSUPP, align 8
  %61 = sub nsw i64 0, %60
  store i64 %61, i64* %5, align 8
  br label %210

62:                                               ; preds = %49
  %63 = load %struct.fuse_conn*, %struct.fuse_conn** %13, align 8
  %64 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i64, i64* @EOPNOTSUPP, align 8
  %69 = sub nsw i64 0, %68
  store i64 %69, i64* %5, align 8
  br label %210

70:                                               ; preds = %62
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %70
  %74 = load %struct.inode*, %struct.inode** %11, align 8
  %75 = call i32 @inode_lock(%struct.inode* %74)
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %73
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* %9, align 8
  %83 = add nsw i64 %81, %82
  %84 = sub nsw i64 %83, 1
  store i64 %84, i64* %17, align 8
  %85 = load %struct.inode*, %struct.inode** %11, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %17, align 8
  %88 = call i32 @fuse_writeback_range(%struct.inode* %85, i64 %86, i64 %87)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  br label %191

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %92, %73
  br label %94

94:                                               ; preds = %93, %70
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %116, label %99

99:                                               ; preds = %94
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* %9, align 8
  %102 = add nsw i64 %100, %101
  %103 = load %struct.inode*, %struct.inode** %11, align 8
  %104 = call i64 @i_size_read(%struct.inode* %103)
  %105 = icmp sgt i64 %102, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %99
  %107 = load %struct.inode*, %struct.inode** %11, align 8
  %108 = load i64, i64* %8, align 8
  %109 = load i64, i64* %9, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @inode_newsize_ok(%struct.inode* %107, i64 %110)
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %191

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115, %99, %94
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* @FUSE_I_SIZE_UNSTABLE, align 4
  %123 = load %struct.fuse_inode*, %struct.fuse_inode** %12, align 8
  %124 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %123, i32 0, i32 0
  %125 = call i32 @set_bit(i32 %122, i32* %124)
  br label %126

126:                                              ; preds = %121, %116
  %127 = load i32, i32* @FUSE_FALLOCATE, align 4
  store i32 %127, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @args, i32 0, i32 3), align 4
  %128 = load %struct.fuse_file*, %struct.fuse_file** %10, align 8
  %129 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  store i32 %130, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @args, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @args, i32 0, i32 0), align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @args, i32 0, i32 1), align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  store i32 24, i32* %133, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @args, i32 0, i32 1), align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  store %struct.fuse_fallocate_in* %14, %struct.fuse_fallocate_in** %136, align 8
  %137 = load %struct.fuse_conn*, %struct.fuse_conn** %13, align 8
  %138 = call i32 @fuse_simple_request(%struct.fuse_conn* %137, %struct.TYPE_6__* @args)
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* %15, align 4
  %140 = load i32, i32* @ENOSYS, align 4
  %141 = sub nsw i32 0, %140
  %142 = icmp eq i32 %139, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %126
  %144 = load %struct.fuse_conn*, %struct.fuse_conn** %13, align 8
  %145 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %144, i32 0, i32 0
  store i32 1, i32* %145, align 8
  %146 = load i64, i64* @EOPNOTSUPP, align 8
  %147 = sub nsw i64 0, %146
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %15, align 4
  br label %149

149:                                              ; preds = %143, %126
  %150 = load i32, i32* %15, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  br label %191

153:                                              ; preds = %149
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %175, label %158

158:                                              ; preds = %153
  %159 = load %struct.inode*, %struct.inode** %11, align 8
  %160 = load i64, i64* %8, align 8
  %161 = load i64, i64* %9, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i32 @fuse_write_update_size(%struct.inode* %159, i64 %162)
  store i32 %163, i32* %18, align 4
  %164 = load i32, i32* %18, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %158
  %167 = load %struct.fuse_conn*, %struct.fuse_conn** %13, align 8
  %168 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load %struct.file*, %struct.file** %6, align 8
  %173 = call i32 @file_update_time(%struct.file* %172)
  br label %174

174:                                              ; preds = %171, %166, %158
  br label %175

175:                                              ; preds = %174, %153
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* @FALLOC_FL_PUNCH_HOLE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %175
  %181 = load %struct.inode*, %struct.inode** %11, align 8
  %182 = load i64, i64* %8, align 8
  %183 = load i64, i64* %8, align 8
  %184 = load i64, i64* %9, align 8
  %185 = add nsw i64 %183, %184
  %186 = sub nsw i64 %185, 1
  %187 = call i32 @truncate_pagecache_range(%struct.inode* %181, i64 %182, i64 %186)
  br label %188

188:                                              ; preds = %180, %175
  %189 = load %struct.inode*, %struct.inode** %11, align 8
  %190 = call i32 @fuse_invalidate_attr(%struct.inode* %189)
  br label %191

191:                                              ; preds = %188, %152, %114, %91
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* @FALLOC_FL_KEEP_SIZE, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %201, label %196

196:                                              ; preds = %191
  %197 = load i32, i32* @FUSE_I_SIZE_UNSTABLE, align 4
  %198 = load %struct.fuse_inode*, %struct.fuse_inode** %12, align 8
  %199 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %198, i32 0, i32 0
  %200 = call i32 @clear_bit(i32 %197, i32* %199)
  br label %201

201:                                              ; preds = %196, %191
  %202 = load i32, i32* %16, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = load %struct.inode*, %struct.inode** %11, align 8
  %206 = call i32 @inode_unlock(%struct.inode* %205)
  br label %207

207:                                              ; preds = %204, %201
  %208 = load i32, i32* %15, align 4
  %209 = sext i32 %208 to i64
  store i64 %209, i64* %5, align 8
  br label %210

210:                                              ; preds = %207, %67, %59
  %211 = load i64, i64* %5, align 8
  ret i64 %211
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @FUSE_ARGS(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @fuse_writeback_range(%struct.inode*, i64, i64) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @inode_newsize_ok(%struct.inode*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @fuse_simple_request(%struct.fuse_conn*, %struct.TYPE_6__*) #1

declare dso_local i32 @fuse_write_update_size(%struct.inode*, i64) #1

declare dso_local i32 @file_update_time(%struct.file*) #1

declare dso_local i32 @truncate_pagecache_range(%struct.inode*, i64, i64) #1

declare dso_local i32 @fuse_invalidate_attr(%struct.inode*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
