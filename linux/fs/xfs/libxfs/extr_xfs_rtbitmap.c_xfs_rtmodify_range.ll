; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rtbitmap.c_xfs_rtmodify_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_rtbitmap.c_xfs_rtmodify_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@XFS_NBWORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_rtmodify_range(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @XFS_BITTOBLOCK(i32* %23, i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %14, align 4
  %29 = call i32 @xfs_rtbuf_get(i32* %26, i32* %27, i32 %28, i32 0, %struct.TYPE_4__** %15)
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %17, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %5
  %33 = load i32, i32* %17, align 4
  store i32 %33, i32* %6, align 4
  br label %240

34:                                               ; preds = %5
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %16, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @XFS_BITTOWORD(i32* %38, i32 %39)
  store i32 %40, i32* %22, align 4
  %41 = load i32*, i32** %16, align 8
  %42 = load i32, i32* %22, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32* %44, i32** %12, align 8
  store i32* %44, i32** %18, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @XFS_NBWORD, align 4
  %47 = sub nsw i32 %46, 1
  %48 = and i32 %45, %47
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %11, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %129

53:                                               ; preds = %34
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* @XFS_NBWORD, align 4
  %58 = call i32 @XFS_RTMIN(i32 %56, i32 %57)
  store i32 %58, i32* %20, align 4
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* %13, align 4
  %61 = sub nsw i32 %59, %60
  %62 = shl i32 1, %61
  %63 = sub nsw i32 %62, 1
  %64 = load i32, i32* %13, align 4
  %65 = shl i32 %63, %64
  store i32 %65, i32* %21, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %53
  %69 = load i32, i32* %21, align 4
  %70 = load i32*, i32** %12, align 8
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %69
  store i32 %72, i32* %70, align 4
  br label %79

73:                                               ; preds = %53
  %74 = load i32, i32* %21, align 4
  %75 = xor i32 %74, -1
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %75
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %73, %68
  %80 = load i32, i32* %20, align 4
  %81 = load i32, i32* %13, align 4
  %82 = sub nsw i32 %80, %81
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %22, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %22, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @XFS_BLOCKWSIZE(i32* %85)
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %125

88:                                               ; preds = %79
  %89 = load i32, i32* %19, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %125

92:                                               ; preds = %88
  %93 = load i32*, i32** %8, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %95 = load i32*, i32** %18, align 8
  %96 = bitcast i32* %95 to i8*
  %97 = load i32*, i32** %16, align 8
  %98 = bitcast i32* %97 to i8*
  %99 = ptrtoint i8* %96 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  %103 = load i32*, i32** %12, align 8
  %104 = bitcast i32* %103 to i8*
  %105 = load i32*, i32** %16, align 8
  %106 = bitcast i32* %105 to i8*
  %107 = ptrtoint i8* %104 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  %110 = trunc i64 %109 to i32
  %111 = call i32 @xfs_trans_log_buf(i32* %93, %struct.TYPE_4__* %94, i32 %102, i32 %110)
  %112 = load i32*, i32** %7, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %14, align 4
  %116 = call i32 @xfs_rtbuf_get(i32* %112, i32* %113, i32 %115, i32 0, %struct.TYPE_4__** %15)
  store i32 %116, i32* %17, align 4
  %117 = load i32, i32* %17, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %92
  %120 = load i32, i32* %17, align 4
  store i32 %120, i32* %6, align 4
  br label %240

121:                                              ; preds = %92
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  store i32* %124, i32** %16, align 8
  store i32* %124, i32** %12, align 8
  store i32* %124, i32** %18, align 8
  store i32 0, i32* %22, align 4
  br label %128

125:                                              ; preds = %88, %79
  %126 = load i32*, i32** %12, align 8
  %127 = getelementptr inbounds i32, i32* %126, i32 1
  store i32* %127, i32** %12, align 8
  br label %128

128:                                              ; preds = %125, %121
  br label %130

129:                                              ; preds = %34
  store i32 0, i32* %19, align 4
  br label %130

130:                                              ; preds = %129, %128
  br label %131

131:                                              ; preds = %188, %130
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %19, align 4
  %134 = sub nsw i32 %132, %133
  %135 = load i32, i32* @XFS_NBWORD, align 4
  %136 = icmp sge i32 %134, %135
  br i1 %136, label %137, label %189

137:                                              ; preds = %131
  %138 = load i32, i32* %11, align 4
  %139 = load i32*, i32** %12, align 8
  store i32 %138, i32* %139, align 4
  %140 = load i32, i32* @XFS_NBWORD, align 4
  %141 = load i32, i32* %19, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %19, align 4
  %143 = load i32, i32* %22, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %22, align 4
  %145 = load i32*, i32** %7, align 8
  %146 = call i32 @XFS_BLOCKWSIZE(i32* %145)
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %148, label %185

148:                                              ; preds = %137
  %149 = load i32, i32* %19, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %185

152:                                              ; preds = %148
  %153 = load i32*, i32** %8, align 8
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %155 = load i32*, i32** %18, align 8
  %156 = bitcast i32* %155 to i8*
  %157 = load i32*, i32** %16, align 8
  %158 = bitcast i32* %157 to i8*
  %159 = ptrtoint i8* %156 to i64
  %160 = ptrtoint i8* %158 to i64
  %161 = sub i64 %159, %160
  %162 = trunc i64 %161 to i32
  %163 = load i32*, i32** %12, align 8
  %164 = bitcast i32* %163 to i8*
  %165 = load i32*, i32** %16, align 8
  %166 = bitcast i32* %165 to i8*
  %167 = ptrtoint i8* %164 to i64
  %168 = ptrtoint i8* %166 to i64
  %169 = sub i64 %167, %168
  %170 = trunc i64 %169 to i32
  %171 = call i32 @xfs_trans_log_buf(i32* %153, %struct.TYPE_4__* %154, i32 %162, i32 %170)
  %172 = load i32*, i32** %7, align 8
  %173 = load i32*, i32** %8, align 8
  %174 = load i32, i32* %14, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %14, align 4
  %176 = call i32 @xfs_rtbuf_get(i32* %172, i32* %173, i32 %175, i32 0, %struct.TYPE_4__** %15)
  store i32 %176, i32* %17, align 4
  %177 = load i32, i32* %17, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %152
  %180 = load i32, i32* %17, align 4
  store i32 %180, i32* %6, align 4
  br label %240

181:                                              ; preds = %152
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  store i32* %184, i32** %16, align 8
  store i32* %184, i32** %12, align 8
  store i32* %184, i32** %18, align 8
  store i32 0, i32* %22, align 4
  br label %188

185:                                              ; preds = %148, %137
  %186 = load i32*, i32** %12, align 8
  %187 = getelementptr inbounds i32, i32* %186, i32 1
  store i32* %187, i32** %12, align 8
  br label %188

188:                                              ; preds = %185, %181
  br label %131

189:                                              ; preds = %131
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* %19, align 4
  %192 = sub nsw i32 %190, %191
  store i32 %192, i32* %20, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %214

194:                                              ; preds = %189
  %195 = load i32, i32* %20, align 4
  %196 = shl i32 1, %195
  %197 = sub nsw i32 %196, 1
  store i32 %197, i32* %21, align 4
  %198 = load i32, i32* %11, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %194
  %201 = load i32, i32* %21, align 4
  %202 = load i32*, i32** %12, align 8
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %201
  store i32 %204, i32* %202, align 4
  br label %211

205:                                              ; preds = %194
  %206 = load i32, i32* %21, align 4
  %207 = xor i32 %206, -1
  %208 = load i32*, i32** %12, align 8
  %209 = load i32, i32* %208, align 4
  %210 = and i32 %209, %207
  store i32 %210, i32* %208, align 4
  br label %211

211:                                              ; preds = %205, %200
  %212 = load i32*, i32** %12, align 8
  %213 = getelementptr inbounds i32, i32* %212, i32 1
  store i32* %213, i32** %12, align 8
  br label %214

214:                                              ; preds = %211, %189
  %215 = load i32*, i32** %12, align 8
  %216 = load i32*, i32** %18, align 8
  %217 = icmp ugt i32* %215, %216
  br i1 %217, label %218, label %239

218:                                              ; preds = %214
  %219 = load i32*, i32** %8, align 8
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %221 = load i32*, i32** %18, align 8
  %222 = bitcast i32* %221 to i8*
  %223 = load i32*, i32** %16, align 8
  %224 = bitcast i32* %223 to i8*
  %225 = ptrtoint i8* %222 to i64
  %226 = ptrtoint i8* %224 to i64
  %227 = sub i64 %225, %226
  %228 = trunc i64 %227 to i32
  %229 = load i32*, i32** %12, align 8
  %230 = bitcast i32* %229 to i8*
  %231 = load i32*, i32** %16, align 8
  %232 = bitcast i32* %231 to i8*
  %233 = ptrtoint i8* %230 to i64
  %234 = ptrtoint i8* %232 to i64
  %235 = sub i64 %233, %234
  %236 = sub nsw i64 %235, 1
  %237 = trunc i64 %236 to i32
  %238 = call i32 @xfs_trans_log_buf(i32* %219, %struct.TYPE_4__* %220, i32 %228, i32 %237)
  br label %239

239:                                              ; preds = %218, %214
  store i32 0, i32* %6, align 4
  br label %240

240:                                              ; preds = %239, %179, %119, %32
  %241 = load i32, i32* %6, align 4
  ret i32 %241
}

declare dso_local i32 @XFS_BITTOBLOCK(i32*, i32) #1

declare dso_local i32 @xfs_rtbuf_get(i32*, i32*, i32, i32, %struct.TYPE_4__**) #1

declare dso_local i32 @XFS_BITTOWORD(i32*, i32) #1

declare dso_local i32 @XFS_RTMIN(i32, i32) #1

declare dso_local i32 @XFS_BLOCKWSIZE(i32*) #1

declare dso_local i32 @xfs_trans_log_buf(i32*, %struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
