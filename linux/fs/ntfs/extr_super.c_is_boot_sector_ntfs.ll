; ModuleID = '/home/carl/AnghaBench/linux/fs/ntfs/extr_super.c_is_boot_sector_ntfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ntfs/extr_super.c_is_boot_sector_ntfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i64, i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Invalid boot sector checksum.\00", align 1
@magicNTFS = common dso_local global i64 0, align 8
@NTFS_MAX_CLUSTER_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid end of sector marker.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.TYPE_5__*, i32)* @is_boot_sector_ntfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_boot_sector_ntfs(%struct.super_block* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = bitcast %struct.TYPE_5__* %10 to i8*
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 5
  %14 = bitcast i64* %13 to i8*
  %15 = icmp ult i8* %11, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %52, label %24

24:                                               ; preds = %21
  store i64 0, i64* %9, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = bitcast %struct.TYPE_5__* %25 to i32*
  store i32* %26, i32** %8, align 8
  br label %27

27:                                               ; preds = %38, %24
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 5
  %31 = bitcast i64* %30 to i32*
  %32 = icmp ult i32* %28, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load i32*, i32** %8, align 8
  %35 = call i64 @le32_to_cpup(i32* %34)
  %36 = load i64, i64* %9, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %33
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %8, align 8
  br label %27

41:                                               ; preds = %27
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @le32_to_cpu(i64 %44)
  %46 = load i64, i64* %9, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.super_block*, %struct.super_block** %5, align 8
  %50 = call i32 @ntfs_warning(%struct.super_block* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %41
  br label %52

52:                                               ; preds = %51, %21, %16, %3
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @magicNTFS, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %186

59:                                               ; preds = %52
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @le16_to_cpu(i32 %63)
  %65 = icmp slt i32 %64, 256
  br i1 %65, label %73, label %66

66:                                               ; preds = %59
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @le16_to_cpu(i32 %70)
  %72 = icmp sgt i32 %71, 4096
  br i1 %72, label %73, label %74

73:                                               ; preds = %66, %59
  br label %186

74:                                               ; preds = %66
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  switch i32 %78, label %80 [
    i32 1, label %79
    i32 2, label %79
    i32 4, label %79
    i32 8, label %79
    i32 16, label %79
    i32 32, label %79
    i32 64, label %79
    i32 128, label %79
  ]

79:                                               ; preds = %74, %74, %74, %74, %74, %74, %74, %74
  br label %81

80:                                               ; preds = %74
  br label %186

81:                                               ; preds = %79
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @le16_to_cpu(i32 %85)
  %87 = sext i32 %86 to i64
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = mul nsw i64 %87, %92
  %94 = load i64, i64* @NTFS_MAX_CLUSTER_SIZE, align 8
  %95 = icmp sgt i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %81
  br label %186

97:                                               ; preds = %81
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @le16_to_cpu(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %138, label %104

104:                                              ; preds = %97
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @le16_to_cpu(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %138, label %111

111:                                              ; preds = %104
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @le16_to_cpu(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %138, label %118

118:                                              ; preds = %111
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @le16_to_cpu(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %138, label %125

125:                                              ; preds = %118
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @le32_to_cpu(i64 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %125
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %132, %125, %118, %111, %104, %97
  br label %186

139:                                              ; preds = %132
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %142, 225
  br i1 %143, label %149, label %144

144:                                              ; preds = %139
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = icmp sgt i32 %147, 247
  br i1 %148, label %149, label %156

149:                                              ; preds = %144, %139
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  switch i32 %152, label %154 [
    i32 1, label %153
    i32 2, label %153
    i32 4, label %153
    i32 8, label %153
    i32 16, label %153
    i32 32, label %153
    i32 64, label %153
  ]

153:                                              ; preds = %149, %149, %149, %149, %149, %149, %149
  br label %155

154:                                              ; preds = %149
  br label %186

155:                                              ; preds = %153
  br label %156

156:                                              ; preds = %155, %144
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %159, 225
  br i1 %160, label %166, label %161

161:                                              ; preds = %156
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = icmp sgt i32 %164, 247
  br i1 %165, label %166, label %173

166:                                              ; preds = %161, %156
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  switch i32 %169, label %171 [
    i32 1, label %170
    i32 2, label %170
    i32 4, label %170
    i32 8, label %170
    i32 16, label %170
    i32 32, label %170
    i32 64, label %170
  ]

170:                                              ; preds = %166, %166, %166, %166, %166, %166, %166
  br label %172

171:                                              ; preds = %166
  br label %186

172:                                              ; preds = %170
  br label %173

173:                                              ; preds = %172, %161
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %185, label %176

176:                                              ; preds = %173
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = call i64 @cpu_to_le16(i32 43605)
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = load %struct.super_block*, %struct.super_block** %5, align 8
  %184 = call i32 @ntfs_warning(%struct.super_block* %183, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %185

185:                                              ; preds = %182, %176, %173
  store i32 1, i32* %4, align 4
  br label %187

186:                                              ; preds = %171, %154, %138, %96, %80, %73, %58
  store i32 0, i32* %4, align 4
  br label %187

187:                                              ; preds = %186, %185
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i64 @le32_to_cpup(i32*) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @ntfs_warning(%struct.super_block*, i8*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
