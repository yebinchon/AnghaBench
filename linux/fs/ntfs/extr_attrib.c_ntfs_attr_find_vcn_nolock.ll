; ModuleID = '/home/carl/AnghaBench/linux/fs/ntfs/extr_attrib.c_ntfs_attr_find_vcn_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ntfs/extr_attrib.c_ntfs_attr_find_vcn_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_14__*, %struct.TYPE_13__, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"Entering for i_ino 0x%lx, vcn 0x%llx, with%s ctx.\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@LCN_HOLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"Done.\00", align 1
@LCN_RL_NOT_MAPPED = common dso_local global i64 0, align 8
@LCN_ENOENT = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed with error code %i.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @ntfs_attr_find_vcn_nolock(%struct.TYPE_16__* %0, i64 %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %13 = icmp ne %struct.TYPE_16__* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %22 = icmp ne %struct.TYPE_17__* %21, null
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %25 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %19, i64 %20, i8* %24)
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = call i32 @NInoNonResident(%struct.TYPE_16__* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i64, i64* %6, align 8
  %33 = icmp slt i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = icmp ne %struct.TYPE_15__* %39, null
  br i1 %40, label %63, label %41

41:                                               ; preds = %3
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 2
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @read_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %41
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 2
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @read_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  %57 = call %struct.TYPE_15__* @ERR_PTR(i32 %56)
  store %struct.TYPE_15__* %57, %struct.TYPE_15__** %4, align 8
  br label %204

58:                                               ; preds = %41
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 2
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @read_unlock_irqrestore(i32* %60, i64 %61)
  br label %63

63:                                               ; preds = %58, %3
  br label %64

64:                                               ; preds = %170, %63
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %67, align 8
  store %struct.TYPE_15__* %68, %struct.TYPE_15__** %9, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %70 = icmp ne %struct.TYPE_15__* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = load i64, i64* %6, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp sge i64 %72, %76
  br label %78

78:                                               ; preds = %71, %64
  %79 = phi i1 [ false, %64 ], [ %77, %71 ]
  %80 = zext i1 %79 to i32
  %81 = call i64 @likely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %142

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %113, %83
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @likely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %116

90:                                               ; preds = %84
  %91 = load i64, i64* %6, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i64 1
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp slt i64 %91, %95
  %97 = zext i1 %96 to i32
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %90
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @LCN_HOLE, align 8
  %105 = icmp sge i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i64 @likely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %100
  %110 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %111, %struct.TYPE_15__** %4, align 8
  br label %204

112:                                              ; preds = %100
  br label %116

113:                                              ; preds = %90
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 1
  store %struct.TYPE_15__* %115, %struct.TYPE_15__** %9, align 8
  br label %84

116:                                              ; preds = %112, %84
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @LCN_RL_NOT_MAPPED, align 8
  %121 = icmp ne i64 %119, %120
  %122 = zext i1 %121 to i32
  %123 = call i64 @likely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %116
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @LCN_ENOENT, align 8
  %130 = icmp eq i64 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i64 @likely(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %125
  %135 = load i32, i32* @ENOENT, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %10, align 4
  br label %140

137:                                              ; preds = %125
  %138 = load i32, i32* @EIO, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %137, %134
  br label %141

141:                                              ; preds = %140, %116
  br label %142

142:                                              ; preds = %141, %78
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %181, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %181, label %148

148:                                              ; preds = %145
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @IS_ERR(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %148
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @PTR_ERR(i32 %157)
  store i32 %158, i32* %10, align 4
  br label %172

159:                                              ; preds = %148
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %161 = load i64, i64* %6, align 8
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %163 = call i32 @ntfs_map_runlist_nolock(%struct.TYPE_16__* %160, i64 %161, %struct.TYPE_17__* %162)
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %10, align 4
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  %167 = zext i1 %166 to i32
  %168 = call i64 @likely(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %159
  store i32 1, i32* %11, align 4
  br label %64

171:                                              ; preds = %159
  br label %172

172:                                              ; preds = %171, %154
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* @EINVAL, align 4
  %175 = sub nsw i32 0, %174
  %176 = icmp eq i32 %173, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load i32, i32* @EIO, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %10, align 4
  br label %180

180:                                              ; preds = %177, %172
  br label %188

181:                                              ; preds = %145, %142
  %182 = load i32, i32* %10, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %181
  %185 = load i32, i32* @EIO, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %10, align 4
  br label %187

187:                                              ; preds = %184, %181
  br label %188

188:                                              ; preds = %187, %180
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* @ENOENT, align 4
  %191 = sub nsw i32 0, %190
  %192 = icmp ne i32 %189, %191
  br i1 %192, label %193, label %201

193:                                              ; preds = %188
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %10, align 4
  %200 = call i32 @ntfs_error(i32 %198, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %199)
  br label %201

201:                                              ; preds = %193, %188
  %202 = load i32, i32* %10, align 4
  %203 = call %struct.TYPE_15__* @ERR_PTR(i32 %202)
  store %struct.TYPE_15__* %203, %struct.TYPE_15__** %4, align 8
  br label %204

204:                                              ; preds = %201, %109, %50
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  ret %struct.TYPE_15__* %205
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ntfs_debug(i8*, ...) #1

declare dso_local i32 @NInoNonResident(%struct.TYPE_16__*) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.TYPE_15__* @ERR_PTR(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ntfs_map_runlist_nolock(%struct.TYPE_16__*, i64, %struct.TYPE_17__*) #1

declare dso_local i32 @ntfs_error(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
