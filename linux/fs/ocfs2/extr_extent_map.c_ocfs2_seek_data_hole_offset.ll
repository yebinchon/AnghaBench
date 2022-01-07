; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_extent_map.c_ocfs2_seek_data_hole_offset.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_extent_map.c_ocfs2_seek_data_hole_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_extent_rec = type { i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@SEEK_DATA = common dso_local global i32 0, align 4
@SEEK_HOLE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@OCFS2_INLINE_DATA_FL = common dso_local global i32 0, align 4
@OCFS2_EXT_UNWRITTEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_seek_data_hole_offset(%struct.file* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca %struct.ocfs2_extent_rec, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %20 = load %struct.file*, %struct.file** %4, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.inode*, %struct.inode** %23, align 8
  store %struct.inode* %24, %struct.inode** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_5__* @OCFS2_SB(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %18, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @SEEK_DATA, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @SEEK_HOLE, align 4
  %37 = icmp ne i32 %35, %36
  br label %38

38:                                               ; preds = %34, %3
  %39 = phi i1 [ false, %3 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = call i32 @ocfs2_inode_lock(%struct.inode* %42, %struct.buffer_head** %18, i32 0)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @mlog_errno(i32 %47)
  br label %216

49:                                               ; preds = %38
  %50 = load %struct.inode*, %struct.inode** %7, align 8
  %51 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %50)
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = call i32 @down_read(i32* %52)
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = call i32 @i_size_read(%struct.inode* %56)
  %58 = icmp sge i32 %55, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load i32, i32* @ENXIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %8, align 4
  br label %207

62:                                               ; preds = %49
  %63 = load %struct.inode*, %struct.inode** %7, align 8
  %64 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %63)
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @OCFS2_INLINE_DATA_FL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %62
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @SEEK_HOLE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load %struct.inode*, %struct.inode** %7, align 8
  %76 = call i32 @i_size_read(%struct.inode* %75)
  %77 = load i32*, i32** %5, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %74, %70
  br label %207

79:                                               ; preds = %62
  store i32 0, i32* %14, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %11, align 4
  %83 = ashr i32 %81, %82
  store i32 %83, i32* %12, align 4
  %84 = load %struct.inode*, %struct.inode** %7, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.inode*, %struct.inode** %7, align 8
  %88 = call i32 @i_size_read(%struct.inode* %87)
  %89 = call i32 @ocfs2_clusters_for_bytes(i32 %86, i32 %88)
  store i32 %89, i32* %13, align 4
  br label %90

90:                                               ; preds = %167, %79
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  br label %98

98:                                               ; preds = %94, %90
  %99 = phi i1 [ false, %90 ], [ %97, %94 ]
  br i1 %99, label %100, label %168

100:                                              ; preds = %98
  %101 = load %struct.inode*, %struct.inode** %7, align 8
  %102 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @ocfs2_get_clusters_nocache(%struct.inode* %101, %struct.buffer_head* %102, i32 %103, i32* %15, %struct.ocfs2_extent_rec* %19, i32* %9)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @mlog_errno(i32 %108)
  br label %207

110:                                              ; preds = %100
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %16, align 4
  %114 = shl i32 %113, %112
  store i32 %114, i32* %16, align 4
  %115 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %19, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = load i32, i32* %15, align 4
  store i32 %119, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %137

120:                                              ; preds = %110
  %121 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %19, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @le16_to_cpu(i32 %122)
  %124 = load i32, i32* %12, align 4
  %125 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %19, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @le32_to_cpu(i32 %126)
  %128 = sub nsw i32 %124, %127
  %129 = sub nsw i32 %123, %128
  store i32 %129, i32* %14, align 4
  %130 = getelementptr inbounds %struct.ocfs2_extent_rec, %struct.ocfs2_extent_rec* %19, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @OCFS2_EXT_UNWRITTEN, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 0, i32 1
  store i32 %136, i32* %10, align 4
  br label %137

137:                                              ; preds = %120, %118
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* @SEEK_HOLE, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %151, label %144

144:                                              ; preds = %140, %137
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %160

147:                                              ; preds = %144
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @SEEK_DATA, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %147, %140
  %152 = load i32, i32* %16, align 4
  %153 = load i32*, i32** %5, align 8
  %154 = load i32, i32* %153, align 4
  %155 = icmp sgt i32 %152, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i32, i32* %16, align 4
  %158 = load i32*, i32** %5, align 8
  store i32 %157, i32* %158, align 4
  br label %159

159:                                              ; preds = %156, %151
  br label %207

160:                                              ; preds = %147, %144
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %12, align 4
  br label %167

167:                                              ; preds = %163, %160
  br label %90

168:                                              ; preds = %98
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* @SEEK_HOLE, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %204

172:                                              ; preds = %168
  %173 = load i32, i32* %12, align 4
  store i32 %173, i32* %16, align 4
  %174 = load i32, i32* %11, align 4
  %175 = load i32, i32* %16, align 4
  %176 = shl i32 %175, %174
  store i32 %176, i32* %16, align 4
  %177 = load i32, i32* %14, align 4
  store i32 %177, i32* %17, align 4
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* %17, align 4
  %180 = shl i32 %179, %178
  store i32 %180, i32* %17, align 4
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* %17, align 4
  %183 = add nsw i32 %181, %182
  %184 = load %struct.inode*, %struct.inode** %7, align 8
  %185 = call i32 @i_size_read(%struct.inode* %184)
  %186 = icmp sgt i32 %183, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %172
  %188 = load %struct.inode*, %struct.inode** %7, align 8
  %189 = call i32 @i_size_read(%struct.inode* %188)
  %190 = load i32, i32* %16, align 4
  %191 = sub nsw i32 %189, %190
  store i32 %191, i32* %17, align 4
  br label %192

192:                                              ; preds = %187, %172
  %193 = load i32, i32* %17, align 4
  %194 = load i32, i32* %16, align 4
  %195 = add nsw i32 %194, %193
  store i32 %195, i32* %16, align 4
  %196 = load i32, i32* %16, align 4
  %197 = load i32*, i32** %5, align 8
  %198 = load i32, i32* %197, align 4
  %199 = icmp sgt i32 %196, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %192
  %201 = load i32, i32* %16, align 4
  %202 = load i32*, i32** %5, align 8
  store i32 %201, i32* %202, align 4
  br label %203

203:                                              ; preds = %200, %192
  br label %207

204:                                              ; preds = %168
  %205 = load i32, i32* @ENXIO, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %8, align 4
  br label %207

207:                                              ; preds = %204, %203, %159, %107, %78, %59
  %208 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %209 = call i32 @brelse(%struct.buffer_head* %208)
  %210 = load %struct.inode*, %struct.inode** %7, align 8
  %211 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %210)
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 1
  %213 = call i32 @up_read(i32* %212)
  %214 = load %struct.inode*, %struct.inode** %7, align 8
  %215 = call i32 @ocfs2_inode_unlock(%struct.inode* %214, i32 0)
  br label %216

216:                                              ; preds = %207, %46
  %217 = load i32, i32* %8, align 4
  ret i32 %217
}

declare dso_local %struct.TYPE_5__* @OCFS2_SB(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @ocfs2_clusters_for_bytes(i32, i32) #1

declare dso_local i32 @ocfs2_get_clusters_nocache(%struct.inode*, %struct.buffer_head*, i32, i32*, %struct.ocfs2_extent_rec*, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
