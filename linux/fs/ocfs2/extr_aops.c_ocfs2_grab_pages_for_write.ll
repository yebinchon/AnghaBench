; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_grab_pages_for_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_grab_pages_for_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.ocfs2_write_ctxt = type { i64, i64, i32, %struct.page**, %struct.page* }
%struct.page = type { %struct.address_space* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@OCFS2_WRITE_MMAP = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@OCFS2_WRITE_DIRECT = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.ocfs2_write_ctxt*, i32, i32, i32, i32, %struct.page*)* @ocfs2_grab_pages_for_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_grab_pages_for_write(%struct.address_space* %0, %struct.ocfs2_write_ctxt* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.page* %6) #0 {
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca %struct.ocfs2_write_ctxt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.inode*, align 8
  %22 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %8, align 8
  store %struct.ocfs2_write_ctxt* %1, %struct.ocfs2_write_ctxt** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.page* %6, %struct.page** %14, align 8
  store i32 0, i32* %15, align 4
  %23 = load %struct.address_space*, %struct.address_space** %8, align 8
  %24 = getelementptr inbounds %struct.address_space, %struct.address_space* %23, i32 0, i32 0
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  store %struct.inode* %25, %struct.inode** %21, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @PAGE_SHIFT, align 4
  %28 = lshr i32 %26, %27
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %18, align 8
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %74

32:                                               ; preds = %7
  %33 = load %struct.inode*, %struct.inode** %21, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ocfs2_pages_per_cluster(i32 %35)
  %37 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %9, align 8
  %38 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.inode*, %struct.inode** %21, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i64 @ocfs2_align_clusters_to_page_index(i32 %41, i32 %42)
  store i64 %43, i64* %17, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = add i32 %44, %45
  %47 = load %struct.inode*, %struct.inode** %21, align 8
  %48 = call i32 @i_size_read(%struct.inode* %47)
  %49 = call i32 @max(i32 %46, i32 %48)
  store i32 %49, i32* %22, align 4
  %50 = load i32, i32* %22, align 4
  %51 = icmp ult i32 %50, 1
  %52 = zext i1 %51 to i32
  %53 = call i32 @BUG_ON(i32 %52)
  %54 = load i32, i32* %22, align 4
  %55 = sub i32 %54, 1
  %56 = load i32, i32* @PAGE_SHIFT, align 4
  %57 = lshr i32 %55, %56
  %58 = add i32 %57, 1
  %59 = zext i32 %58 to i64
  store i64 %59, i64* %19, align 8
  %60 = load i64, i64* %17, align 8
  %61 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %9, align 8
  %62 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %60, %63
  %65 = load i64, i64* %19, align 8
  %66 = icmp ugt i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %32
  %68 = load i64, i64* %19, align 8
  %69 = load i64, i64* %17, align 8
  %70 = sub i64 %68, %69
  %71 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %9, align 8
  %72 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %67, %32
  br label %78

74:                                               ; preds = %7
  %75 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %9, align 8
  %76 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %75, i32 0, i32 0
  store i64 1, i64* %76, align 8
  %77 = load i64, i64* %18, align 8
  store i64 %77, i64* %17, align 8
  br label %78

78:                                               ; preds = %74, %73
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = add i32 %79, %80
  %82 = sub i32 %81, 1
  %83 = load i32, i32* @PAGE_SHIFT, align 4
  %84 = lshr i32 %82, %83
  %85 = zext i32 %84 to i64
  store i64 %85, i64* %19, align 8
  store i32 0, i32* %16, align 4
  br label %86

86:                                               ; preds = %210, %78
  %87 = load i32, i32* %16, align 4
  %88 = sext i32 %87 to i64
  %89 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %9, align 8
  %90 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ult i64 %88, %91
  br i1 %92, label %93, label %213

93:                                               ; preds = %86
  %94 = load i64, i64* %17, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = add i64 %94, %96
  store i64 %97, i64* %20, align 8
  %98 = load i64, i64* %20, align 8
  %99 = load i64, i64* %18, align 8
  %100 = icmp uge i64 %98, %99
  br i1 %100, label %101, label %140

101:                                              ; preds = %93
  %102 = load i64, i64* %20, align 8
  %103 = load i64, i64* %19, align 8
  %104 = icmp ule i64 %102, %103
  br i1 %104, label %105, label %140

105:                                              ; preds = %101
  %106 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %9, align 8
  %107 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @OCFS2_WRITE_MMAP, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %140

111:                                              ; preds = %105
  %112 = load %struct.page*, %struct.page** %14, align 8
  %113 = call i32 @lock_page(%struct.page* %112)
  %114 = load %struct.page*, %struct.page** %14, align 8
  %115 = getelementptr inbounds %struct.page, %struct.page* %114, i32 0, i32 0
  %116 = load %struct.address_space*, %struct.address_space** %115, align 8
  %117 = load %struct.address_space*, %struct.address_space** %8, align 8
  %118 = icmp ne %struct.address_space* %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %111
  %120 = load %struct.page*, %struct.page** %14, align 8
  %121 = getelementptr inbounds %struct.page, %struct.page* %120, i32 0, i32 0
  %122 = load %struct.address_space*, %struct.address_space** %121, align 8
  %123 = call i32 @WARN_ON(%struct.address_space* %122)
  %124 = load %struct.page*, %struct.page** %14, align 8
  %125 = call i32 @unlock_page(%struct.page* %124)
  %126 = load i32, i32* @EAGAIN, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %15, align 4
  br label %214

128:                                              ; preds = %111
  %129 = load %struct.page*, %struct.page** %14, align 8
  %130 = call i32 @get_page(%struct.page* %129)
  %131 = load %struct.page*, %struct.page** %14, align 8
  %132 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %9, align 8
  %133 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %132, i32 0, i32 3
  %134 = load %struct.page**, %struct.page*** %133, align 8
  %135 = load i32, i32* %16, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.page*, %struct.page** %134, i64 %136
  store %struct.page* %131, %struct.page** %137, align 8
  %138 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %9, align 8
  %139 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %138, i32 0, i32 2
  store i32 1, i32* %139, align 8
  br label %187

140:                                              ; preds = %105, %101, %93
  %141 = load i64, i64* %20, align 8
  %142 = load i64, i64* %18, align 8
  %143 = icmp uge i64 %141, %142
  br i1 %143, label %144, label %161

144:                                              ; preds = %140
  %145 = load i64, i64* %20, align 8
  %146 = load i64, i64* %19, align 8
  %147 = icmp ule i64 %145, %146
  br i1 %147, label %148, label %161

148:                                              ; preds = %144
  %149 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %9, align 8
  %150 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @OCFS2_WRITE_DIRECT, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %148
  %155 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %9, align 8
  %156 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %155, i32 0, i32 3
  %157 = load %struct.page**, %struct.page*** %156, align 8
  %158 = load i32, i32* %16, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.page*, %struct.page** %157, i64 %159
  store %struct.page* null, %struct.page** %160, align 8
  br label %210

161:                                              ; preds = %148, %144, %140
  %162 = load %struct.address_space*, %struct.address_space** %8, align 8
  %163 = load i64, i64* %20, align 8
  %164 = load i32, i32* @GFP_NOFS, align 4
  %165 = call %struct.page* @find_or_create_page(%struct.address_space* %162, i64 %163, i32 %164)
  %166 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %9, align 8
  %167 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %166, i32 0, i32 3
  %168 = load %struct.page**, %struct.page*** %167, align 8
  %169 = load i32, i32* %16, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.page*, %struct.page** %168, i64 %170
  store %struct.page* %165, %struct.page** %171, align 8
  %172 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %9, align 8
  %173 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %172, i32 0, i32 3
  %174 = load %struct.page**, %struct.page*** %173, align 8
  %175 = load i32, i32* %16, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.page*, %struct.page** %174, i64 %176
  %178 = load %struct.page*, %struct.page** %177, align 8
  %179 = icmp ne %struct.page* %178, null
  br i1 %179, label %185, label %180

180:                                              ; preds = %161
  %181 = load i32, i32* @ENOMEM, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %15, align 4
  %183 = load i32, i32* %15, align 4
  %184 = call i32 @mlog_errno(i32 %183)
  br label %214

185:                                              ; preds = %161
  br label %186

186:                                              ; preds = %185
  br label %187

187:                                              ; preds = %186, %128
  %188 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %9, align 8
  %189 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %188, i32 0, i32 3
  %190 = load %struct.page**, %struct.page*** %189, align 8
  %191 = load i32, i32* %16, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.page*, %struct.page** %190, i64 %192
  %194 = load %struct.page*, %struct.page** %193, align 8
  %195 = call i32 @wait_for_stable_page(%struct.page* %194)
  %196 = load i64, i64* %20, align 8
  %197 = load i64, i64* %18, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %209

199:                                              ; preds = %187
  %200 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %9, align 8
  %201 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %200, i32 0, i32 3
  %202 = load %struct.page**, %struct.page*** %201, align 8
  %203 = load i32, i32* %16, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.page*, %struct.page** %202, i64 %204
  %206 = load %struct.page*, %struct.page** %205, align 8
  %207 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %9, align 8
  %208 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %207, i32 0, i32 4
  store %struct.page* %206, %struct.page** %208, align 8
  br label %209

209:                                              ; preds = %199, %187
  br label %210

210:                                              ; preds = %209, %154
  %211 = load i32, i32* %16, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %16, align 4
  br label %86

213:                                              ; preds = %86
  br label %214

214:                                              ; preds = %213, %180, %119
  %215 = load i32, i32* %15, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %9, align 8
  %219 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %218, i32 0, i32 2
  store i32 0, i32* %219, align 8
  br label %220

220:                                              ; preds = %217, %214
  %221 = load i32, i32* %15, align 4
  ret i32 %221
}

declare dso_local i64 @ocfs2_pages_per_cluster(i32) #1

declare dso_local i64 @ocfs2_align_clusters_to_page_index(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @WARN_ON(%struct.address_space*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local %struct.page* @find_or_create_page(%struct.address_space*, i64, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @wait_for_stable_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
