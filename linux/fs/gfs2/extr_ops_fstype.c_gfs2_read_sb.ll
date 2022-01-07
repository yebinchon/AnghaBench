; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_gfs2_read_sb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_gfs2_read_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@GFS2_SB_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"can't read superblock\0A\00", align 1
@GFS2_BASIC_BLOCK_SHIFT = common dso_local global i32 0, align 4
@GFS2_NBBY = common dso_local global i32 0, align 4
@GFS2_DIR_MAX_DEPTH = common dso_local global i32 0, align 4
@GFS2_MAX_META_HEIGHT = common dso_local global i32 0, align 4
@GFS2_MIN_DIRENT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i32)* @gfs2_read_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_read_sb(%struct.gfs2_sbd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %16 = load i32, i32* @GFS2_SB_ADDR, align 4
  %17 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %18 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = ashr i32 %16, %19
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @gfs2_read_super(%struct.gfs2_sbd* %15, i32 %20, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %30 = call i32 @fs_err(%struct.gfs2_sbd* %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %3, align 4
  br label %253

33:                                               ; preds = %2
  %34 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %35 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %34, i32 0, i32 14
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @GFS2_BASIC_BLOCK_SHIFT, align 4
  %39 = sub nsw i32 %37, %38
  %40 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %41 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %43 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @BIT(i32 %44)
  %46 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %47 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %49 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %48, i32 0, i32 14
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = sub i64 %52, 4
  %54 = udiv i64 %53, 4
  %55 = trunc i64 %54 to i32
  %56 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %57 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %59 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %58, i32 0, i32 14
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 %62, 4
  %64 = udiv i64 %63, 4
  %65 = trunc i64 %64 to i32
  %66 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %67 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %69 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %68, i32 0, i32 14
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = sub i64 %72, 4
  %74 = trunc i64 %73 to i32
  %75 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %76 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %78 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %77, i32 0, i32 14
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sdiv i32 %80, 2
  %82 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %83 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 4
  %84 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %85 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %84, i32 0, i32 14
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %87, 1
  %89 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %90 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 8
  %91 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %92 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = udiv i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %98 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %97, i32 0, i32 7
  store i32 %96, i32* %98, align 4
  %99 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %100 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %99, i32 0, i32 14
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = sub i64 %103, 4
  %105 = udiv i64 %104, 4
  %106 = trunc i64 %105 to i32
  %107 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %108 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %107, i32 0, i32 8
  store i32 %106, i32* %108, align 8
  %109 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %110 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %109, i32 0, i32 14
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = sub i64 %113, 4
  %115 = load i32, i32* @GFS2_NBBY, align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 %114, %116
  %118 = trunc i64 %117 to i32
  %119 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %120 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %119, i32 0, i32 9
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* @GFS2_DIR_MAX_DEPTH, align 4
  %122 = call i32 @BIT(i32 %121)
  %123 = sext i32 %122 to i64
  %124 = mul i64 4, %123
  %125 = trunc i64 %124 to i32
  %126 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %127 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @DIV_ROUND_UP(i32 %125, i32 %128)
  store i32 %129, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %130 = load i32, i32* %6, align 4
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %137, %33
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %134 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = icmp sgt i32 %132, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %131
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %140 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @DIV_ROUND_UP(i32 %138, i32 %141)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %7, align 4
  br label %131

146:                                              ; preds = %131
  %147 = load i32, i32* @GFS2_DIR_MAX_DEPTH, align 4
  %148 = add nsw i32 2, %147
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %149, %150
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %151, %152
  %154 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %155 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %154, i32 0, i32 10
  store i32 %153, i32* %155, align 8
  %156 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %157 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %156, i32 0, i32 14
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = sub i64 %160, 4
  %162 = trunc i64 %161 to i32
  %163 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %164 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %163, i32 0, i32 11
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  store i32 %162, i32* %166, align 4
  %167 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %168 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %167, i32 0, i32 14
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %172 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = mul nsw i32 %170, %173
  %175 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %176 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %175, i32 0, i32 11
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  store i32 %174, i32* %178, align 4
  store i32 2, i32* %10, align 4
  br label %179

179:                                              ; preds = %220, %146
  %180 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %181 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %180, i32 0, i32 11
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %10, align 4
  %184 = sub i32 %183, 1
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %182, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %189 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = mul nsw i32 %187, %190
  store i32 %191, i32* %12, align 4
  %192 = load i32, i32* %12, align 4
  store i32 %192, i32* %13, align 4
  %193 = load i32, i32* %13, align 4
  %194 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %195 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @do_div(i32 %193, i32 %196)
  store i32 %197, i32* %14, align 4
  %198 = load i32, i32* %13, align 4
  %199 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %200 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %199, i32 0, i32 11
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %10, align 4
  %203 = sub i32 %202, 1
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %198, %206
  br i1 %207, label %211, label %208

208:                                              ; preds = %179
  %209 = load i32, i32* %14, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %208, %179
  br label %223

212:                                              ; preds = %208
  %213 = load i32, i32* %12, align 4
  %214 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %215 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %214, i32 0, i32 11
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %10, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  store i32 %213, i32* %219, align 4
  br label %220

220:                                              ; preds = %212
  %221 = load i32, i32* %10, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %10, align 4
  br label %179

223:                                              ; preds = %211
  %224 = load i32, i32* %10, align 4
  %225 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %226 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %225, i32 0, i32 12
  store i32 %224, i32* %226, align 8
  %227 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %228 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %227, i32 0, i32 11
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %10, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  store i32 -1, i32* %232, align 4
  %233 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %234 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %235 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %234, i32 0, i32 12
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @GFS2_MAX_META_HEIGHT, align 4
  %238 = icmp ule i32 %236, %237
  %239 = zext i1 %238 to i32
  %240 = call i32 @gfs2_assert(%struct.gfs2_sbd* %233, i32 %239)
  %241 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %242 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %241, i32 0, i32 14
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = sext i32 %244 to i64
  %246 = sub i64 %245, 4
  %247 = load i32, i32* @GFS2_MIN_DIRENT_SIZE, align 4
  %248 = sext i32 %247 to i64
  %249 = udiv i64 %246, %248
  %250 = trunc i64 %249 to i32
  %251 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %252 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %251, i32 0, i32 13
  store i32 %250, i32* %252, align 4
  store i32 0, i32* %3, align 4
  br label %253

253:                                              ; preds = %223, %31
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

declare dso_local i32 @gfs2_read_super(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @gfs2_assert(%struct.gfs2_sbd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
