; ModuleID = '/home/carl/AnghaBench/linux/fs/ntfs/extr_aops.c_ntfs_bmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ntfs/extr_aops.c_ntfs_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.TYPE_14__ = type { i64, i64, i8, %struct.TYPE_12__, i32, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i8, i8, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i8 }

@.str = private unnamed_addr constant [49 x i8] c"Entering for mft_no 0x%lx, logical block 0x%llx.\00", align 1
@AT_DATA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"BMAP does not make sense for %s attributes, returning 0.\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"non-data\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"resident\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"encrypted\00", align 1
@LCN_HOLE = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"Not enough memory to complete mapping for inode 0x%lx.  Returning 0.\00", align 1
@.str.6 = private unnamed_addr constant [71 x i8] c"Failed to complete mapping for inode 0x%lx.  Run chkdsk.  Returning 0.\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Done (returning hole).\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"Physical block 0x%llx is too large to be returned, returning 0.\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Done (returning block 0x%llx).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.address_space*, i8)* @ntfs_bmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @ntfs_bmap(%struct.address_space* %0, i8 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  store %struct.address_space* %0, %struct.address_space** %4, align 8
  store i8 %1, i8* %5, align 1
  %17 = load %struct.address_space*, %struct.address_space** %4, align 8
  %18 = getelementptr inbounds %struct.address_space, %struct.address_space* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_14__* @NTFS_I(i32 %19)
  store %struct.TYPE_14__* %20, %struct.TYPE_14__** %12, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %13, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i8, i8* %5, align 1
  %28 = zext i8 %27 to i64
  %29 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %28)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AT_DATA, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %2
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %37 = call i32 @NInoNonResident(%struct.TYPE_14__* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %41 = call i64 @NInoEncrypted(%struct.TYPE_14__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %39, %35, %2
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @AT_DATA, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %60

53:                                               ; preds = %43
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %55 = call i32 @NInoNonResident(%struct.TYPE_14__* %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)
  br label %60

60:                                               ; preds = %53, %52
  %61 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %52 ], [ %59, %53 ]
  %62 = call i32 (%struct.TYPE_15__*, i8*, ...) @ntfs_error(%struct.TYPE_15__* %46, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  store i8 0, i8* %3, align 1
  br label %238

63:                                               ; preds = %39
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %65 = call i32 @NInoCompressed(%struct.TYPE_14__* %64)
  %66 = call i32 @BUG_ON(i32 %65)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %68 = call i32 @NInoMstProtected(%struct.TYPE_14__* %67)
  %69 = call i32 @BUG_ON(i32 %68)
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %10, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load i8, i8* %78, align 8
  store i8 %79, i8* %15, align 1
  %80 = load i8, i8* %5, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8, i8* %15, align 1
  %83 = zext i8 %82 to i32
  %84 = shl i32 %81, %83
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %6, align 1
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 4
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @read_lock_irqsave(i32* %87, i64 %88)
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  %92 = load i8, i8* %91, align 8
  store i8 %92, i8* %7, align 1
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %94 = call i32 @VFS_I(%struct.TYPE_14__* %93)
  %95 = call zeroext i8 @i_size_read(i32 %94)
  store i8 %95, i8* %8, align 1
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 4
  %98 = load i64, i64* %11, align 8
  %99 = call i32 @read_unlock_irqrestore(i32* %97, i64 %98)
  %100 = load i8, i8* %6, align 1
  %101 = zext i8 %100 to i32
  %102 = load i8, i8* %7, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp sge i32 %101, %103
  br i1 %104, label %121, label %105

105:                                              ; preds = %63
  %106 = load i8, i8* %6, align 1
  %107 = zext i8 %106 to i64
  %108 = load i64, i64* %10, align 8
  %109 = add i64 %107, %108
  %110 = load i8, i8* %7, align 1
  %111 = zext i8 %110 to i64
  %112 = icmp ugt i64 %109, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %105
  %114 = load i8, i8* %7, align 1
  %115 = zext i8 %114 to i32
  %116 = load i8, i8* %8, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp slt i32 %115, %117
  br label %119

119:                                              ; preds = %113, %105
  %120 = phi i1 [ false, %105 ], [ %118, %113 ]
  br label %121

121:                                              ; preds = %119, %63
  %122 = phi i1 [ true, %63 ], [ %120, %119 ]
  %123 = zext i1 %122 to i32
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %181

127:                                              ; preds = %121
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i8, i8* %129, align 8
  store i8 %130, i8* %16, align 1
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = call i32 @down_read(i32* %133)
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %136 = load i8, i8* %6, align 1
  %137 = zext i8 %136 to i32
  %138 = load i8, i8* %16, align 1
  %139 = zext i8 %138 to i32
  %140 = ashr i32 %137, %139
  %141 = trunc i32 %140 to i8
  %142 = call zeroext i8 @ntfs_attr_vcn_to_lcn_nolock(%struct.TYPE_14__* %135, i8 zeroext %141, i32 0)
  store i8 %142, i8* %9, align 1
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = call i32 @up_read(i32* %145)
  %147 = load i8, i8* %9, align 1
  %148 = zext i8 %147 to i32
  %149 = load i8, i8* @LCN_HOLE, align 1
  %150 = zext i8 %149 to i32
  %151 = icmp slt i32 %148, %150
  %152 = zext i1 %151 to i32
  %153 = call i64 @unlikely(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %176

155:                                              ; preds = %127
  %156 = load i8, i8* %9, align 1
  %157 = zext i8 %156 to i32
  switch i32 %157, label %167 [
    i32 129, label %158
    i32 128, label %159
  ]

158:                                              ; preds = %155
  br label %181

159:                                              ; preds = %155
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %161, align 8
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = call i32 (%struct.TYPE_15__*, i8*, ...) @ntfs_error(%struct.TYPE_15__* %162, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i64 %165)
  br label %175

167:                                              ; preds = %155
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %169, align 8
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call i32 (%struct.TYPE_15__*, i8*, ...) @ntfs_error(%struct.TYPE_15__* %170, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0), i64 %173)
  br label %175

175:                                              ; preds = %167, %159
  store i8 0, i8* %3, align 1
  br label %238

176:                                              ; preds = %127
  %177 = load i8, i8* %9, align 1
  %178 = zext i8 %177 to i32
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  br label %181

181:                                              ; preds = %180, %158, %126
  %182 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  store i8 0, i8* %3, align 1
  br label %238

183:                                              ; preds = %176
  %184 = load i8, i8* %6, align 1
  %185 = zext i8 %184 to i32
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 1
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = and i32 %185, %189
  store i32 %190, i32* %14, align 4
  %191 = call i64 @unlikely(i32 0)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %221

193:                                              ; preds = %183
  %194 = load i8, i8* %9, align 1
  %195 = zext i8 %194 to i32
  %196 = load i8, i8* %16, align 1
  %197 = zext i8 %196 to i32
  %198 = shl i32 %195, %197
  %199 = load i32, i32* %14, align 4
  %200 = add i32 %198, %199
  %201 = load i8, i8* %15, align 1
  %202 = zext i8 %201 to i32
  %203 = lshr i32 %200, %202
  %204 = trunc i32 %203 to i8
  store i8 %204, i8* %9, align 1
  store i8 %204, i8* %5, align 1
  %205 = load i8, i8* %5, align 1
  %206 = zext i8 %205 to i32
  %207 = load i8, i8* %9, align 1
  %208 = zext i8 %207 to i32
  %209 = icmp ne i32 %206, %208
  %210 = zext i1 %209 to i32
  %211 = call i64 @unlikely(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %193
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %215, align 8
  %217 = load i8, i8* %9, align 1
  %218 = zext i8 %217 to i64
  %219 = call i32 (%struct.TYPE_15__*, i8*, ...) @ntfs_error(%struct.TYPE_15__* %216, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i64 0, i64 0), i64 %218)
  store i8 0, i8* %3, align 1
  br label %238

220:                                              ; preds = %193
  br label %233

221:                                              ; preds = %183
  %222 = load i8, i8* %9, align 1
  %223 = zext i8 %222 to i32
  %224 = load i8, i8* %16, align 1
  %225 = zext i8 %224 to i32
  %226 = shl i32 %223, %225
  %227 = load i32, i32* %14, align 4
  %228 = add i32 %226, %227
  %229 = load i8, i8* %15, align 1
  %230 = zext i8 %229 to i32
  %231 = lshr i32 %228, %230
  %232 = trunc i32 %231 to i8
  store i8 %232, i8* %5, align 1
  br label %233

233:                                              ; preds = %221, %220
  %234 = load i8, i8* %9, align 1
  %235 = zext i8 %234 to i64
  %236 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i64 %235)
  %237 = load i8, i8* %5, align 1
  store i8 %237, i8* %3, align 1
  br label %238

238:                                              ; preds = %233, %213, %181, %175, %60
  %239 = load i8, i8* %3, align 1
  ret i8 %239
}

declare dso_local %struct.TYPE_14__* @NTFS_I(i32) #1

declare dso_local i32 @ntfs_debug(i8*, ...) #1

declare dso_local i32 @NInoNonResident(%struct.TYPE_14__*) #1

declare dso_local i64 @NInoEncrypted(%struct.TYPE_14__*) #1

declare dso_local i32 @ntfs_error(%struct.TYPE_15__*, i8*, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @NInoCompressed(%struct.TYPE_14__*) #1

declare dso_local i32 @NInoMstProtected(%struct.TYPE_14__*) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @i_size_read(i32) #1

declare dso_local i32 @VFS_I(%struct.TYPE_14__*) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local zeroext i8 @ntfs_attr_vcn_to_lcn_nolock(%struct.TYPE_14__*, i8 zeroext, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
