; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_imap.c_diAllocBit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_imap.c_diAllocBit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inomap = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.iag = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32 }
%struct.metapage = type { i64 }

@L2INOSPEREXT = common dso_local global i32 0, align 4
@INOSPEREXT = common dso_local global i32 0, align 4
@HIGHORDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"iag inconsistent\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ONES = common dso_local global i32 0, align 4
@L2EXTSPERSUM = common dso_local global i32 0, align 4
@EXTSPERSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inomap*, %struct.iag*, i32)* @diAllocBit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diAllocBit(%struct.inomap* %0, %struct.iag* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inomap*, align 8
  %6 = alloca %struct.iag*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.metapage*, align 8
  %14 = alloca %struct.metapage*, align 8
  %15 = alloca %struct.iag*, align 8
  %16 = alloca %struct.iag*, align 8
  %17 = alloca i32, align 4
  store %struct.inomap* %0, %struct.inomap** %5, align 8
  store %struct.iag* %1, %struct.iag** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.metapage* null, %struct.metapage** %13, align 8
  store %struct.metapage* null, %struct.metapage** %14, align 8
  store %struct.iag* null, %struct.iag** %15, align 8
  store %struct.iag* null, %struct.iag** %16, align 8
  %18 = load %struct.iag*, %struct.iag** %6, align 8
  %19 = getelementptr inbounds %struct.iag, %struct.iag* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @cpu_to_le32(i32 1)
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %72

23:                                               ; preds = %3
  %24 = load %struct.iag*, %struct.iag** %6, align 8
  %25 = getelementptr inbounds %struct.iag, %struct.iag* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @le32_to_cpu(i32 %26)
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = load %struct.inomap*, %struct.inomap** %5, align 8
  %31 = load %struct.iag*, %struct.iag** %6, align 8
  %32 = getelementptr inbounds %struct.iag, %struct.iag* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @le32_to_cpu(i32 %33)
  %35 = call i32 @diIAGRead(%struct.inomap* %30, i32 %34, %struct.metapage** %13)
  store i32 %35, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %4, align 4
  br label %250

39:                                               ; preds = %29
  %40 = load %struct.metapage*, %struct.metapage** %13, align 8
  %41 = getelementptr inbounds %struct.metapage, %struct.metapage* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.iag*
  store %struct.iag* %43, %struct.iag** %15, align 8
  br label %44

44:                                               ; preds = %39, %23
  %45 = load %struct.iag*, %struct.iag** %6, align 8
  %46 = getelementptr inbounds %struct.iag, %struct.iag* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le32_to_cpu(i32 %47)
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %44
  %51 = load %struct.inomap*, %struct.inomap** %5, align 8
  %52 = load %struct.iag*, %struct.iag** %6, align 8
  %53 = getelementptr inbounds %struct.iag, %struct.iag* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le32_to_cpu(i32 %54)
  %56 = call i32 @diIAGRead(%struct.inomap* %51, i32 %55, %struct.metapage** %14)
  store i32 %56, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %50
  %59 = load %struct.metapage*, %struct.metapage** %13, align 8
  %60 = icmp ne %struct.metapage* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.metapage*, %struct.metapage** %13, align 8
  %63 = call i32 @release_metapage(%struct.metapage* %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %4, align 4
  br label %250

66:                                               ; preds = %50
  %67 = load %struct.metapage*, %struct.metapage** %14, align 8
  %68 = getelementptr inbounds %struct.metapage, %struct.metapage* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.iag*
  store %struct.iag* %70, %struct.iag** %16, align 8
  br label %71

71:                                               ; preds = %66, %44
  br label %72

72:                                               ; preds = %71, %3
  %73 = load %struct.iag*, %struct.iag** %6, align 8
  %74 = getelementptr inbounds %struct.iag, %struct.iag* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @le64_to_cpu(i32 %75)
  %77 = load %struct.inomap*, %struct.inomap** %5, align 8
  %78 = getelementptr inbounds %struct.inomap, %struct.inomap* %77, i32 0, i32 2
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @JFS_SBI(i32 %81)
  %83 = call i32 @BLKTOAG(i32 %76, i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @L2INOSPEREXT, align 4
  %86 = ashr i32 %84, %85
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @INOSPEREXT, align 4
  %89 = sub nsw i32 %88, 1
  %90 = and i32 %87, %89
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* @HIGHORDER, align 4
  %92 = load i32, i32* %9, align 4
  %93 = ashr i32 %91, %92
  store i32 %93, i32* %17, align 4
  %94 = load %struct.iag*, %struct.iag** %6, align 8
  %95 = getelementptr inbounds %struct.iag, %struct.iag* %94, i32 0, i32 6
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le32_to_cpu(i32 %100)
  %102 = load i32, i32* %17, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %126, label %105

105:                                              ; preds = %72
  %106 = load %struct.iag*, %struct.iag** %6, align 8
  %107 = getelementptr inbounds %struct.iag, %struct.iag* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @le32_to_cpu(i32 %112)
  %114 = load i32, i32* %17, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %126, label %117

117:                                              ; preds = %105
  %118 = load %struct.iag*, %struct.iag** %6, align 8
  %119 = getelementptr inbounds %struct.iag, %struct.iag* %118, i32 0, i32 5
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = call i64 @addressPXD(i32* %123)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %147

126:                                              ; preds = %117, %105, %72
  %127 = load %struct.metapage*, %struct.metapage** %13, align 8
  %128 = icmp ne %struct.metapage* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.metapage*, %struct.metapage** %13, align 8
  %131 = call i32 @release_metapage(%struct.metapage* %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = load %struct.metapage*, %struct.metapage** %14, align 8
  %134 = icmp ne %struct.metapage* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load %struct.metapage*, %struct.metapage** %14, align 8
  %137 = call i32 @release_metapage(%struct.metapage* %136)
  br label %138

138:                                              ; preds = %135, %132
  %139 = load %struct.inomap*, %struct.inomap** %5, align 8
  %140 = getelementptr inbounds %struct.inomap, %struct.inomap* %139, i32 0, i32 2
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @jfs_error(i32 %143, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %145 = load i32, i32* @EIO, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %4, align 4
  br label %250

147:                                              ; preds = %117
  %148 = load i32, i32* %17, align 4
  %149 = call i32 @cpu_to_le32(i32 %148)
  %150 = load %struct.iag*, %struct.iag** %6, align 8
  %151 = getelementptr inbounds %struct.iag, %struct.iag* %150, i32 0, i32 4
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %149
  store i32 %157, i32* %155, align 4
  %158 = load %struct.iag*, %struct.iag** %6, align 8
  %159 = getelementptr inbounds %struct.iag, %struct.iag* %158, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @ONES, align 4
  %166 = call i32 @cpu_to_le32(i32 %165)
  %167 = icmp eq i32 %164, %166
  br i1 %167, label %168, label %188

168:                                              ; preds = %147
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* @L2EXTSPERSUM, align 4
  %171 = ashr i32 %169, %170
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @EXTSPERSUM, align 4
  %174 = sub nsw i32 %173, 1
  %175 = and i32 %172, %174
  store i32 %175, i32* %9, align 4
  %176 = load i32, i32* @HIGHORDER, align 4
  %177 = load i32, i32* %9, align 4
  %178 = ashr i32 %176, %177
  %179 = call i32 @cpu_to_le32(i32 %178)
  %180 = load %struct.iag*, %struct.iag** %6, align 8
  %181 = getelementptr inbounds %struct.iag, %struct.iag* %180, i32 0, i32 3
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %11, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %179
  store i32 %187, i32* %185, align 4
  br label %188

188:                                              ; preds = %168, %147
  %189 = load %struct.iag*, %struct.iag** %6, align 8
  %190 = getelementptr inbounds %struct.iag, %struct.iag* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @cpu_to_le32(i32 1)
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %234

194:                                              ; preds = %188
  %195 = load %struct.metapage*, %struct.metapage** %13, align 8
  %196 = icmp ne %struct.metapage* %195, null
  br i1 %196, label %197, label %205

197:                                              ; preds = %194
  %198 = load %struct.iag*, %struct.iag** %6, align 8
  %199 = getelementptr inbounds %struct.iag, %struct.iag* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.iag*, %struct.iag** %15, align 8
  %202 = getelementptr inbounds %struct.iag, %struct.iag* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 4
  %203 = load %struct.metapage*, %struct.metapage** %13, align 8
  %204 = call i32 @write_metapage(%struct.metapage* %203)
  br label %205

205:                                              ; preds = %197, %194
  %206 = load %struct.metapage*, %struct.metapage** %14, align 8
  %207 = icmp ne %struct.metapage* %206, null
  br i1 %207, label %208, label %216

208:                                              ; preds = %205
  %209 = load %struct.iag*, %struct.iag** %6, align 8
  %210 = getelementptr inbounds %struct.iag, %struct.iag* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.iag*, %struct.iag** %16, align 8
  %213 = getelementptr inbounds %struct.iag, %struct.iag* %212, i32 0, i32 2
  store i32 %211, i32* %213, align 8
  %214 = load %struct.metapage*, %struct.metapage** %14, align 8
  %215 = call i32 @write_metapage(%struct.metapage* %214)
  br label %228

216:                                              ; preds = %205
  %217 = load %struct.iag*, %struct.iag** %6, align 8
  %218 = getelementptr inbounds %struct.iag, %struct.iag* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @le32_to_cpu(i32 %219)
  %221 = load %struct.inomap*, %struct.inomap** %5, align 8
  %222 = getelementptr inbounds %struct.inomap, %struct.inomap* %221, i32 0, i32 1
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %222, align 8
  %224 = load i32, i32* %10, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  store i32 %220, i32* %227, align 4
  br label %228

228:                                              ; preds = %216, %208
  %229 = call i32 @cpu_to_le32(i32 -1)
  %230 = load %struct.iag*, %struct.iag** %6, align 8
  %231 = getelementptr inbounds %struct.iag, %struct.iag* %230, i32 0, i32 1
  store i32 %229, i32* %231, align 4
  %232 = load %struct.iag*, %struct.iag** %6, align 8
  %233 = getelementptr inbounds %struct.iag, %struct.iag* %232, i32 0, i32 2
  store i32 %229, i32* %233, align 8
  br label %234

234:                                              ; preds = %228, %188
  %235 = load %struct.iag*, %struct.iag** %6, align 8
  %236 = getelementptr inbounds %struct.iag, %struct.iag* %235, i32 0, i32 0
  %237 = call i32 @le32_add_cpu(i32* %236, i32 -1)
  %238 = load %struct.inomap*, %struct.inomap** %5, align 8
  %239 = getelementptr inbounds %struct.inomap, %struct.inomap* %238, i32 0, i32 1
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %239, align 8
  %241 = load i32, i32* %10, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = sub nsw i32 %245, 1
  store i32 %246, i32* %244, align 4
  %247 = load %struct.inomap*, %struct.inomap** %5, align 8
  %248 = getelementptr inbounds %struct.inomap, %struct.inomap* %247, i32 0, i32 0
  %249 = call i32 @atomic_dec(i32* %248)
  store i32 0, i32* %4, align 4
  br label %250

250:                                              ; preds = %234, %138, %64, %37
  %251 = load i32, i32* %4, align 4
  ret i32 %251
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @diIAGRead(%struct.inomap*, i32, %struct.metapage**) #1

declare dso_local i32 @release_metapage(%struct.metapage*) #1

declare dso_local i32 @BLKTOAG(i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @JFS_SBI(i32) #1

declare dso_local i64 @addressPXD(i32*) #1

declare dso_local i32 @jfs_error(i32, i8*) #1

declare dso_local i32 @write_metapage(%struct.metapage*) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
