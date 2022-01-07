; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_ciCompare.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_ciCompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.component_name = type { i32*, i32 }
%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ldtentry = type { i32, i32, i32* }
%struct.idtentry = type { i32, i32, i32* }
%struct.dtslot = type { i32, i32* }

@BT_LEAF = common dso_local global i32 0, align 4
@JFS_DIR_INDEX = common dso_local global i32 0, align 4
@DTLHDRDATALEN = common dso_local global i32 0, align 4
@DTLHDRDATALEN_LEGACY = common dso_local global i32 0, align 4
@DTIHDRDATALEN = common dso_local global i32 0, align 4
@JFS_OS2 = common dso_local global i32 0, align 4
@DTSLOTDATALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.component_name*, %struct.TYPE_5__*, i32, i32)* @ciCompare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciCompare(%struct.component_name* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.component_name*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ldtentry*, align 8
  %18 = alloca %struct.idtentry*, align 8
  %19 = alloca %struct.dtslot*, align 8
  %20 = alloca i32, align 4
  store %struct.component_name* %0, %struct.component_name** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %21 = load %struct.component_name*, %struct.component_name** %6, align 8
  %22 = getelementptr inbounds %struct.component_name, %struct.component_name* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %10, align 8
  %24 = load %struct.component_name*, %struct.component_name** %6, align 8
  %25 = getelementptr inbounds %struct.component_name, %struct.component_name* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %13, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @BT_LEAF, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = bitcast i32* %40 to %struct.ldtentry*
  store %struct.ldtentry* %41, %struct.ldtentry** %17, align 8
  %42 = load %struct.ldtentry*, %struct.ldtentry** %17, align 8
  %43 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %8, align 4
  %45 = load %struct.ldtentry*, %struct.ldtentry** %17, align 8
  %46 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %12, align 8
  %48 = load %struct.ldtentry*, %struct.ldtentry** %17, align 8
  %49 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @JFS_DIR_INDEX, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %34
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @DTLHDRDATALEN, align 4
  %58 = call i32 @min(i32 %56, i32 %57)
  store i32 %58, i32* %15, align 4
  br label %63

59:                                               ; preds = %34
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @DTLHDRDATALEN_LEGACY, align 4
  %62 = call i32 @min(i32 %60, i32 %61)
  store i32 %62, i32* %15, align 4
  br label %63

63:                                               ; preds = %59, %55
  br label %84

64:                                               ; preds = %4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = bitcast i32* %70 to %struct.idtentry*
  store %struct.idtentry* %71, %struct.idtentry** %18, align 8
  %72 = load %struct.idtentry*, %struct.idtentry** %18, align 8
  %73 = getelementptr inbounds %struct.idtentry, %struct.idtentry* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %8, align 4
  %75 = load %struct.idtentry*, %struct.idtentry** %18, align 8
  %76 = getelementptr inbounds %struct.idtentry, %struct.idtentry* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %12, align 8
  %78 = load %struct.idtentry*, %struct.idtentry** %18, align 8
  %79 = getelementptr inbounds %struct.idtentry, %struct.idtentry* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @DTIHDRDATALEN, align 4
  %83 = call i32 @min(i32 %81, i32 %82)
  store i32 %83, i32* %15, align 4
  br label %84

84:                                               ; preds = %64, %63
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @min(i32 %85, i32 %86)
  store i32 %87, i32* %15, align 4
  store i32 0, i32* %20, align 4
  br label %88

88:                                               ; preds = %116, %84
  %89 = load i32, i32* %20, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %123

92:                                               ; preds = %88
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @JFS_OS2, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* @JFS_OS2, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load i32*, i32** %12, align 8
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le16_to_cpu(i32 %100)
  %102 = call i32 @UniToupper(i32 %101)
  store i32 %102, i32* %11, align 4
  br label %107

103:                                              ; preds = %92
  %104 = load i32*, i32** %12, align 8
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @le16_to_cpu(i32 %105)
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %103, %98
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %11, align 4
  %111 = sub nsw i32 %109, %110
  store i32 %111, i32* %16, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = load i32, i32* %16, align 4
  store i32 %114, i32* %5, align 4
  br label %204

115:                                              ; preds = %107
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %20, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %20, align 4
  %119 = load i32*, i32** %10, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %10, align 8
  %121 = load i32*, i32** %12, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %12, align 8
  br label %88

123:                                              ; preds = %88
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* %13, align 4
  %126 = sub nsw i32 %125, %124
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %14, align 4
  %129 = sub nsw i32 %128, %127
  store i32 %129, i32* %14, align 4
  br label %130

130:                                              ; preds = %190, %123
  %131 = load i32, i32* %13, align 4
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32, i32* %14, align 4
  %135 = icmp sgt i32 %134, 0
  br label %136

136:                                              ; preds = %133, %130
  %137 = phi i1 [ false, %130 ], [ %135, %133 ]
  br i1 %137, label %138, label %200

138:                                              ; preds = %136
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = bitcast i32* %144 to %struct.dtslot*
  store %struct.dtslot* %145, %struct.dtslot** %19, align 8
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* @DTSLOTDATALEN, align 4
  %148 = call i32 @min(i32 %146, i32 %147)
  store i32 %148, i32* %15, align 4
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* %15, align 4
  %151 = call i32 @min(i32 %149, i32 %150)
  store i32 %151, i32* %15, align 4
  %152 = load %struct.dtslot*, %struct.dtslot** %19, align 8
  %153 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  store i32* %154, i32** %12, align 8
  store i32 0, i32* %20, align 4
  br label %155

155:                                              ; preds = %183, %138
  %156 = load i32, i32* %20, align 4
  %157 = load i32, i32* %15, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %190

159:                                              ; preds = %155
  %160 = load i32, i32* %9, align 4
  %161 = load i32, i32* @JFS_OS2, align 4
  %162 = and i32 %160, %161
  %163 = load i32, i32* @JFS_OS2, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %159
  %166 = load i32*, i32** %12, align 8
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @le16_to_cpu(i32 %167)
  %169 = call i32 @UniToupper(i32 %168)
  store i32 %169, i32* %11, align 4
  br label %174

170:                                              ; preds = %159
  %171 = load i32*, i32** %12, align 8
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @le16_to_cpu(i32 %172)
  store i32 %173, i32* %11, align 4
  br label %174

174:                                              ; preds = %170, %165
  %175 = load i32*, i32** %10, align 8
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %11, align 4
  %178 = sub nsw i32 %176, %177
  store i32 %178, i32* %16, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %174
  %181 = load i32, i32* %16, align 4
  store i32 %181, i32* %5, align 4
  br label %204

182:                                              ; preds = %174
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %20, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %20, align 4
  %186 = load i32*, i32** %10, align 8
  %187 = getelementptr inbounds i32, i32* %186, i32 1
  store i32* %187, i32** %10, align 8
  %188 = load i32*, i32** %12, align 8
  %189 = getelementptr inbounds i32, i32* %188, i32 1
  store i32* %189, i32** %12, align 8
  br label %155

190:                                              ; preds = %155
  %191 = load i32, i32* %15, align 4
  %192 = load i32, i32* %13, align 4
  %193 = sub nsw i32 %192, %191
  store i32 %193, i32* %13, align 4
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* %14, align 4
  %196 = sub nsw i32 %195, %194
  store i32 %196, i32* %14, align 4
  %197 = load %struct.dtslot*, %struct.dtslot** %19, align 8
  %198 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  store i32 %199, i32* %8, align 4
  br label %130

200:                                              ; preds = %136
  %201 = load i32, i32* %13, align 4
  %202 = load i32, i32* %14, align 4
  %203 = sub nsw i32 %201, %202
  store i32 %203, i32* %5, align 4
  br label %204

204:                                              ; preds = %200, %180, %113
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @UniToupper(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
