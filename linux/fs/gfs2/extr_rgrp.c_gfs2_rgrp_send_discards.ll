; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_rgrp_send_discards.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_rgrp_send_discards.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { %struct.TYPE_4__, %struct.super_block* }
%struct.TYPE_4__ = type { i64 }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32* }
%struct.gfs2_bitmap = type { i32, i32*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@GFS2_NBBY = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"error %d on discard request, turning discards off for this filesystem\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_rgrp_send_discards(%struct.gfs2_sbd* %0, i64 %1, %struct.buffer_head* %2, %struct.gfs2_bitmap* %3, i32 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.gfs2_bitmap*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca %struct.super_block*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %10, align 8
  store %struct.gfs2_bitmap* %3, %struct.gfs2_bitmap** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  %24 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %25 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %24, i32 0, i32 1
  %26 = load %struct.super_block*, %struct.super_block** %25, align 8
  store %struct.super_block* %26, %struct.super_block** %14, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %20, align 8
  store i32 0, i32* %19, align 4
  br label %27

27:                                               ; preds = %160, %6
  %28 = load i32, i32* %19, align 4
  %29 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %11, align 8
  %30 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %163

33:                                               ; preds = %27
  %34 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %11, align 8
  %35 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %11, align 8
  %40 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  br label %48

42:                                               ; preds = %33
  %43 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %11, align 8
  %44 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %43, i32 0, i32 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  br label %48

48:                                               ; preds = %42, %38
  %49 = phi i32* [ %41, %38 ], [ %47, %42 ]
  store i32* %49, i32** %22, align 8
  %50 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %11, align 8
  %51 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %22, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %22, align 8
  %56 = load i32, i32* %19, align 4
  %57 = load i32*, i32** %22, align 8
  %58 = zext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32* %59, i32** %22, align 8
  %60 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %61 = icmp ne %struct.buffer_head* %60, null
  br i1 %61, label %62, label %88

62:                                               ; preds = %48
  %63 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %64 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %11, align 8
  %67 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i32, i32* %19, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32* %73, i32** %23, align 8
  %74 = load i32*, i32** %23, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %23, align 8
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 1
  %79 = or i32 %75, %78
  %80 = xor i32 %79, -1
  %81 = load i32*, i32** %22, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %22, align 8
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 1
  %86 = or i32 %82, %85
  %87 = and i32 %80, %86
  store i32 %87, i32* %21, align 4
  br label %96

88:                                               ; preds = %48
  %89 = load i32*, i32** %22, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %22, align 8
  %92 = load i32, i32* %91, align 4
  %93 = ashr i32 %92, 1
  %94 = or i32 %90, %93
  %95 = xor i32 %94, -1
  store i32 %95, i32* %21, align 4
  br label %96

96:                                               ; preds = %88, %62
  %97 = load i32, i32* %21, align 4
  %98 = and i32 %97, 85
  store i32 %98, i32* %21, align 4
  %99 = load i32, i32* %21, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %160

102:                                              ; preds = %96
  %103 = load i64, i64* %9, align 8
  %104 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %11, align 8
  %105 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %19, align 4
  %108 = add i32 %106, %107
  %109 = load i32, i32* @GFS2_NBBY, align 4
  %110 = mul i32 %108, %109
  %111 = zext i32 %110 to i64
  %112 = add nsw i64 %103, %111
  store i64 %112, i64* %15, align 8
  br label %113

113:                                              ; preds = %154, %102
  %114 = load i32, i32* %21, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %159

116:                                              ; preds = %113
  %117 = load i32, i32* %21, align 4
  %118 = and i32 %117, 1
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %154

120:                                              ; preds = %116
  %121 = load i64, i64* %17, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %149

124:                                              ; preds = %120
  %125 = load i64, i64* %16, align 8
  %126 = load i64, i64* %17, align 8
  %127 = add nsw i64 %125, %126
  %128 = load i64, i64* %15, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %151

130:                                              ; preds = %124
  %131 = load i64, i64* %17, align 8
  %132 = load i32, i32* %12, align 4
  %133 = zext i32 %132 to i64
  %134 = icmp sge i64 %131, %133
  br i1 %134, label %135, label %148

135:                                              ; preds = %130
  %136 = load %struct.super_block*, %struct.super_block** %14, align 8
  %137 = load i64, i64* %16, align 8
  %138 = load i64, i64* %17, align 8
  %139 = load i32, i32* @GFP_NOFS, align 4
  %140 = call i32 @sb_issue_discard(%struct.super_block* %136, i64 %137, i64 %138, i32 %139, i32 0)
  store i32 %140, i32* %18, align 4
  %141 = load i32, i32* %18, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  br label %188

144:                                              ; preds = %135
  %145 = load i64, i64* %17, align 8
  %146 = load i64, i64* %20, align 8
  %147 = add nsw i64 %146, %145
  store i64 %147, i64* %20, align 8
  br label %148

148:                                              ; preds = %144, %130
  store i64 0, i64* %17, align 8
  br label %149

149:                                              ; preds = %148, %123
  %150 = load i64, i64* %15, align 8
  store i64 %150, i64* %16, align 8
  br label %151

151:                                              ; preds = %149, %124
  %152 = load i64, i64* %17, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %17, align 8
  br label %154

154:                                              ; preds = %151, %116
  %155 = load i32, i32* %21, align 4
  %156 = ashr i32 %155, 2
  store i32 %156, i32* %21, align 4
  %157 = load i64, i64* %15, align 8
  %158 = add nsw i64 %157, 1
  store i64 %158, i64* %15, align 8
  br label %113

159:                                              ; preds = %113
  br label %160

160:                                              ; preds = %159, %101
  %161 = load i32, i32* %19, align 4
  %162 = add i32 %161, 1
  store i32 %162, i32* %19, align 4
  br label %27

163:                                              ; preds = %27
  %164 = load i64, i64* %17, align 8
  %165 = load i32, i32* %12, align 4
  %166 = zext i32 %165 to i64
  %167 = icmp sge i64 %164, %166
  br i1 %167, label %168, label %181

168:                                              ; preds = %163
  %169 = load %struct.super_block*, %struct.super_block** %14, align 8
  %170 = load i64, i64* %16, align 8
  %171 = load i64, i64* %17, align 8
  %172 = load i32, i32* @GFP_NOFS, align 4
  %173 = call i32 @sb_issue_discard(%struct.super_block* %169, i64 %170, i64 %171, i32 %172, i32 0)
  store i32 %173, i32* %18, align 4
  %174 = load i32, i32* %18, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  br label %188

177:                                              ; preds = %168
  %178 = load i64, i64* %17, align 8
  %179 = load i64, i64* %20, align 8
  %180 = add nsw i64 %179, %178
  store i64 %180, i64* %20, align 8
  br label %181

181:                                              ; preds = %177, %163
  %182 = load i64*, i64** %13, align 8
  %183 = icmp ne i64* %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i64, i64* %20, align 8
  %186 = load i64*, i64** %13, align 8
  store i64 %185, i64* %186, align 8
  br label %187

187:                                              ; preds = %184, %181
  store i32 0, i32* %7, align 4
  br label %204

188:                                              ; preds = %176, %143
  %189 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %190 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %188
  %195 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %196 = load i32, i32* %18, align 4
  %197 = call i32 @fs_warn(%struct.gfs2_sbd* %195, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %196)
  br label %198

198:                                              ; preds = %194, %188
  %199 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %200 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  store i64 0, i64* %201, align 8
  %202 = load i32, i32* @EIO, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %7, align 4
  br label %204

204:                                              ; preds = %198, %187
  %205 = load i32, i32* %7, align 4
  ret i32 %205
}

declare dso_local i32 @sb_issue_discard(%struct.super_block*, i64, i64, i32, i32) #1

declare dso_local i32 @fs_warn(%struct.gfs2_sbd*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
