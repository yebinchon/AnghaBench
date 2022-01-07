; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_move_extent.c_mext_page_mkuptodate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_move_extent.c_mext_page_mkuptodate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.buffer_head = type { %struct.buffer_head* }

@MAX_BUF_PER_PAGE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32, i32)* @mext_page_mkuptodate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mext_page_mkuptodate(%struct.page* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %22 = load %struct.page*, %struct.page** %5, align 8
  %23 = getelementptr inbounds %struct.page, %struct.page* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %8, align 8
  %27 = load i32, i32* @MAX_BUF_PER_PAGE, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %12, align 8
  %30 = alloca %struct.buffer_head*, i64 %28, align 16
  store i64 %28, i64* %13, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %31 = load %struct.page*, %struct.page** %5, align 8
  %32 = call i32 @PageLocked(%struct.page* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.page*, %struct.page** %5, align 8
  %38 = call i32 @PageWriteback(%struct.page* %37)
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.page*, %struct.page** %5, align 8
  %41 = call i64 @PageUptodate(%struct.page* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %182

44:                                               ; preds = %3
  %45 = load %struct.inode*, %struct.inode** %8, align 8
  %46 = call i32 @i_blocksize(%struct.inode* %45)
  store i32 %46, i32* %14, align 4
  %47 = load %struct.page*, %struct.page** %5, align 8
  %48 = call i32 @page_has_buffers(%struct.page* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load %struct.page*, %struct.page** %5, align 8
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @create_empty_buffers(%struct.page* %51, i32 %52, i32 0)
  br label %54

54:                                               ; preds = %50, %44
  %55 = load %struct.page*, %struct.page** %5, align 8
  %56 = call %struct.buffer_head* @page_buffers(%struct.page* %55)
  store %struct.buffer_head* %56, %struct.buffer_head** %11, align 8
  %57 = load %struct.page*, %struct.page** %5, align 8
  %58 = getelementptr inbounds %struct.page, %struct.page* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* @PAGE_SHIFT, align 4
  %62 = load %struct.inode*, %struct.inode** %8, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %61, %64
  %66 = shl i32 %60, %65
  store i32 %66, i32* %9, align 4
  %67 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  store %struct.buffer_head* %67, %struct.buffer_head** %10, align 8
  store i32 0, i32* %15, align 4
  br label %68

68:                                               ; preds = %138, %54
  %69 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %70 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %71 = icmp ne %struct.buffer_head* %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i1 [ true, %68 ], [ %75, %72 ]
  br i1 %77, label %78, label %145

78:                                               ; preds = %76
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %14, align 4
  %81 = add i32 %79, %80
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ule i32 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp uge i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85, %78
  %90 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %91 = call i64 @buffer_uptodate(%struct.buffer_head* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  store i32 1, i32* %20, align 4
  br label %94

94:                                               ; preds = %93, %89
  br label %138

95:                                               ; preds = %85
  %96 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %97 = call i64 @buffer_uptodate(%struct.buffer_head* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %138

100:                                              ; preds = %95
  %101 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %102 = call i32 @buffer_mapped(%struct.buffer_head* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %127, label %104

104:                                              ; preds = %100
  %105 = load %struct.inode*, %struct.inode** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %108 = call i32 @ext4_get_block(%struct.inode* %105, i32 %106, %struct.buffer_head* %107, i32 0)
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %18, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load %struct.page*, %struct.page** %5, align 8
  %113 = call i32 @SetPageError(%struct.page* %112)
  %114 = load i32, i32* %18, align 4
  store i32 %114, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %182

115:                                              ; preds = %104
  %116 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %117 = call i32 @buffer_mapped(%struct.buffer_head* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %115
  %120 = load %struct.page*, %struct.page** %5, align 8
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %14, align 4
  %123 = call i32 @zero_user(%struct.page* %120, i32 %121, i32 %122)
  %124 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %125 = call i32 @set_buffer_uptodate(%struct.buffer_head* %124)
  br label %138

126:                                              ; preds = %115
  br label %127

127:                                              ; preds = %126, %100
  %128 = load i32, i32* %19, align 4
  %129 = load i32, i32* @MAX_BUF_PER_PAGE, align 4
  %130 = icmp sge i32 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @BUG_ON(i32 %131)
  %133 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %134 = load i32, i32* %19, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %19, align 4
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %30, i64 %136
  store %struct.buffer_head* %133, %struct.buffer_head** %137, align 8
  br label %138

138:                                              ; preds = %127, %119, %99, %94
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %16, align 4
  store i32 %141, i32* %15, align 4
  %142 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %143 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %142, i32 0, i32 0
  %144 = load %struct.buffer_head*, %struct.buffer_head** %143, align 8
  store %struct.buffer_head* %144, %struct.buffer_head** %10, align 8
  br label %68

145:                                              ; preds = %76
  %146 = load i32, i32* %19, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  br label %175

149:                                              ; preds = %145
  store i32 0, i32* %17, align 4
  br label %150

150:                                              ; preds = %171, %149
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* %19, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %174

154:                                              ; preds = %150
  %155 = load i32, i32* %17, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %30, i64 %156
  %158 = load %struct.buffer_head*, %struct.buffer_head** %157, align 8
  store %struct.buffer_head* %158, %struct.buffer_head** %10, align 8
  %159 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %160 = call i32 @bh_uptodate_or_lock(%struct.buffer_head* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %170, label %162

162:                                              ; preds = %154
  %163 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %164 = call i32 @bh_submit_read(%struct.buffer_head* %163)
  store i32 %164, i32* %18, align 4
  %165 = load i32, i32* %18, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %162
  %168 = load i32, i32* %18, align 4
  store i32 %168, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %182

169:                                              ; preds = %162
  br label %170

170:                                              ; preds = %169, %154
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %17, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %17, align 4
  br label %150

174:                                              ; preds = %150
  br label %175

175:                                              ; preds = %174, %148
  %176 = load i32, i32* %20, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = load %struct.page*, %struct.page** %5, align 8
  %180 = call i32 @SetPageUptodate(%struct.page* %179)
  br label %181

181:                                              ; preds = %178, %175
  store i32 0, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %182

182:                                              ; preds = %181, %167, %111, %43
  %183 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %183)
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @PageLocked(%struct.page*) #2

declare dso_local i32 @PageWriteback(%struct.page*) #2

declare dso_local i64 @PageUptodate(%struct.page*) #2

declare dso_local i32 @i_blocksize(%struct.inode*) #2

declare dso_local i32 @page_has_buffers(%struct.page*) #2

declare dso_local i32 @create_empty_buffers(%struct.page*, i32, i32) #2

declare dso_local %struct.buffer_head* @page_buffers(%struct.page*) #2

declare dso_local i64 @buffer_uptodate(%struct.buffer_head*) #2

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #2

declare dso_local i32 @ext4_get_block(%struct.inode*, i32, %struct.buffer_head*, i32) #2

declare dso_local i32 @SetPageError(%struct.page*) #2

declare dso_local i32 @zero_user(%struct.page*, i32, i32) #2

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #2

declare dso_local i32 @bh_uptodate_or_lock(%struct.buffer_head*) #2

declare dso_local i32 @bh_submit_read(%struct.buffer_head*) #2

declare dso_local i32 @SetPageUptodate(%struct.page*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
