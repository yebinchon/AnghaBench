; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_map_page_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_map_page_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { %struct.buffer_head*, i32 }

@REQ_OP_READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_map_page_blocks(%struct.page* %0, i64* %1, %struct.inode* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca [2 x %struct.buffer_head*], align 16
  %18 = alloca %struct.buffer_head**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %8, align 8
  store i64* %1, i64** %9, align 8
  store %struct.inode* %2, %struct.inode** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %22 = getelementptr inbounds [2 x %struct.buffer_head*], [2 x %struct.buffer_head*]* %17, i64 0, i64 0
  store %struct.buffer_head** %22, %struct.buffer_head*** %18, align 8
  %23 = load %struct.inode*, %struct.inode** %10, align 8
  %24 = call i32 @i_blocksize(%struct.inode* %23)
  store i32 %24, i32* %21, align 4
  %25 = load %struct.page*, %struct.page** %8, align 8
  %26 = call i32 @page_has_buffers(%struct.page* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %6
  %29 = load %struct.page*, %struct.page** %8, align 8
  %30 = load i32, i32* %21, align 4
  %31 = call i32 @create_empty_buffers(%struct.page* %29, i32 %30, i32 0)
  br label %32

32:                                               ; preds = %28, %6
  %33 = load %struct.page*, %struct.page** %8, align 8
  %34 = call %struct.buffer_head* @page_buffers(%struct.page* %33)
  store %struct.buffer_head* %34, %struct.buffer_head** %15, align 8
  %35 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  store %struct.buffer_head* %35, %struct.buffer_head** %16, align 8
  store i32 0, i32* %20, align 4
  br label %36

36:                                               ; preds = %137, %32
  %37 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %38 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %39 = icmp ne %struct.buffer_head* %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %20, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i1 [ true, %36 ], [ %43, %40 ]
  br i1 %45, label %46, label %144

46:                                               ; preds = %44
  %47 = load i32, i32* %20, align 4
  %48 = load i32, i32* %21, align 4
  %49 = add i32 %47, %48
  store i32 %49, i32* %19, align 4
  %50 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %51 = call i32 @clear_buffer_new(%struct.buffer_head* %50)
  %52 = load i32, i32* %20, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp uge i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ule i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55, %46
  %60 = load %struct.page*, %struct.page** %8, align 8
  %61 = call i64 @PageUptodate(%struct.page* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %65 = call i32 @set_buffer_uptodate(%struct.buffer_head* %64)
  br label %66

66:                                               ; preds = %63, %59
  br label %137

67:                                               ; preds = %55
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %72 = call i32 @set_buffer_new(%struct.buffer_head* %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %75 = call i32 @buffer_mapped(%struct.buffer_head* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %73
  %78 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %79 = load %struct.inode*, %struct.inode** %10, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i64*, i64** %9, align 8
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @map_bh(%struct.buffer_head* %78, i32 %81, i64 %83)
  %85 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %86 = call i32 @clean_bdev_bh_alias(%struct.buffer_head* %85)
  br label %87

87:                                               ; preds = %77, %73
  %88 = load %struct.page*, %struct.page** %8, align 8
  %89 = call i64 @PageUptodate(%struct.page* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %87
  %92 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %93 = call i32 @buffer_uptodate(%struct.buffer_head* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %97 = call i32 @set_buffer_uptodate(%struct.buffer_head* %96)
  br label %98

98:                                               ; preds = %95, %91
  br label %132

99:                                               ; preds = %87
  %100 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %101 = call i32 @buffer_uptodate(%struct.buffer_head* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %131, label %103

103:                                              ; preds = %99
  %104 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %105 = call i32 @buffer_delay(%struct.buffer_head* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %131, label %107

107:                                              ; preds = %103
  %108 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %109 = call i32 @buffer_new(%struct.buffer_head* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %131, label %111

111:                                              ; preds = %107
  %112 = load %struct.inode*, %struct.inode** %10, align 8
  %113 = load %struct.page*, %struct.page** %8, align 8
  %114 = load i32, i32* %20, align 4
  %115 = call i64 @ocfs2_should_read_blk(%struct.inode* %112, %struct.page* %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %111
  %118 = load i32, i32* %20, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %125, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %19, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp ugt i32 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %121, %117
  %126 = load i32, i32* @REQ_OP_READ, align 4
  %127 = call i32 @ll_rw_block(i32 %126, i32 0, i32 1, %struct.buffer_head** %16)
  %128 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %129 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %130 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %129, i32 1
  store %struct.buffer_head** %130, %struct.buffer_head*** %18, align 8
  store %struct.buffer_head* %128, %struct.buffer_head** %129, align 8
  br label %131

131:                                              ; preds = %125, %121, %111, %107, %103, %99
  br label %132

132:                                              ; preds = %131, %98
  %133 = load i64*, i64** %9, align 8
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, 1
  %136 = load i64*, i64** %9, align 8
  store i64 %135, i64* %136, align 8
  br label %137

137:                                              ; preds = %132, %66
  %138 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %139 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %138, i32 0, i32 0
  %140 = load %struct.buffer_head*, %struct.buffer_head** %139, align 8
  store %struct.buffer_head* %140, %struct.buffer_head** %16, align 8
  %141 = load i32, i32* %21, align 4
  %142 = load i32, i32* %20, align 4
  %143 = add i32 %142, %141
  store i32 %143, i32* %20, align 4
  br label %36

144:                                              ; preds = %44
  br label %145

145:                                              ; preds = %161, %144
  %146 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %147 = getelementptr inbounds [2 x %struct.buffer_head*], [2 x %struct.buffer_head*]* %17, i64 0, i64 0
  %148 = icmp ugt %struct.buffer_head** %146, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %145
  %150 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %151 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %150, i32 -1
  store %struct.buffer_head** %151, %struct.buffer_head*** %18, align 8
  %152 = load %struct.buffer_head*, %struct.buffer_head** %151, align 8
  %153 = call i32 @wait_on_buffer(%struct.buffer_head* %152)
  %154 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %155 = load %struct.buffer_head*, %struct.buffer_head** %154, align 8
  %156 = call i32 @buffer_uptodate(%struct.buffer_head* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %149
  %159 = load i32, i32* @EIO, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %14, align 4
  br label %161

161:                                              ; preds = %158, %149
  br label %145

162:                                              ; preds = %145
  %163 = load i32, i32* %14, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %162
  %166 = load i32, i32* %13, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %165, %162
  %169 = load i32, i32* %14, align 4
  store i32 %169, i32* %7, align 4
  br label %207

170:                                              ; preds = %165
  %171 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  store %struct.buffer_head* %171, %struct.buffer_head** %16, align 8
  store i32 0, i32* %20, align 4
  br label %172

172:                                              ; preds = %201, %170
  %173 = load i32, i32* %20, align 4
  %174 = load i32, i32* %21, align 4
  %175 = add i32 %173, %174
  store i32 %175, i32* %19, align 4
  %176 = load i32, i32* %19, align 4
  %177 = load i32, i32* %11, align 4
  %178 = icmp ule i32 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %172
  br label %196

180:                                              ; preds = %172
  %181 = load i32, i32* %20, align 4
  %182 = load i32, i32* %12, align 4
  %183 = icmp uge i32 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  br label %205

185:                                              ; preds = %180
  %186 = load %struct.page*, %struct.page** %8, align 8
  %187 = load i32, i32* %20, align 4
  %188 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %189 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @zero_user(%struct.page* %186, i32 %187, i32 %190)
  %192 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %193 = call i32 @set_buffer_uptodate(%struct.buffer_head* %192)
  %194 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %195 = call i32 @mark_buffer_dirty(%struct.buffer_head* %194)
  br label %196

196:                                              ; preds = %185, %179
  %197 = load i32, i32* %19, align 4
  store i32 %197, i32* %20, align 4
  %198 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %199 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %198, i32 0, i32 0
  %200 = load %struct.buffer_head*, %struct.buffer_head** %199, align 8
  store %struct.buffer_head* %200, %struct.buffer_head** %16, align 8
  br label %201

201:                                              ; preds = %196
  %202 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %203 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %204 = icmp ne %struct.buffer_head* %202, %203
  br i1 %204, label %172, label %205

205:                                              ; preds = %201, %184
  %206 = load i32, i32* %14, align 4
  store i32 %206, i32* %7, align 4
  br label %207

207:                                              ; preds = %205, %168
  %208 = load i32, i32* %7, align 4
  ret i32 %208
}

declare dso_local i32 @i_blocksize(%struct.inode*) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @create_empty_buffers(%struct.page*, i32, i32) #1

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #1

declare dso_local i32 @clear_buffer_new(%struct.buffer_head*) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @map_bh(%struct.buffer_head*, i32, i64) #1

declare dso_local i32 @clean_bdev_bh_alias(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @buffer_delay(%struct.buffer_head*) #1

declare dso_local i32 @buffer_new(%struct.buffer_head*) #1

declare dso_local i64 @ocfs2_should_read_blk(%struct.inode*, %struct.page*, i32) #1

declare dso_local i32 @ll_rw_block(i32, i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @zero_user(%struct.page*, i32, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
