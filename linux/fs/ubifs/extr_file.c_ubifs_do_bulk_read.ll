; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_file.c_ubifs_do_bulk_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_file.c_ubifs_do_bulk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64 }
%struct.bu_info = type { i32, i32, i64, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.page = type { i32, %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.ubifs_inode = type { i32, i32, i32 }

@__GFP_FS = common dso_local global i32 0, align 4
@UBIFS_BLOCKS_PER_PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ignoring error %d and skipping bulk-read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.bu_info*, %struct.page*)* @ubifs_do_bulk_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_do_bulk_read(%struct.ubifs_info* %0, %struct.bu_info* %1, %struct.page* %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.bu_info*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ubifs_inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.page*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.bu_info* %1, %struct.bu_info** %5, align 8
  store %struct.page* %2, %struct.page** %6, align 8
  %22 = load %struct.page*, %struct.page** %6, align 8
  %23 = getelementptr inbounds %struct.page, %struct.page* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load %struct.page*, %struct.page** %6, align 8
  %26 = getelementptr inbounds %struct.page, %struct.page* %25, i32 0, i32 1
  %27 = load %struct.address_space*, %struct.address_space** %26, align 8
  store %struct.address_space* %27, %struct.address_space** %9, align 8
  %28 = load %struct.address_space*, %struct.address_space** %9, align 8
  %29 = getelementptr inbounds %struct.address_space, %struct.address_space* %28, i32 0, i32 0
  %30 = load %struct.inode*, %struct.inode** %29, align 8
  store %struct.inode* %30, %struct.inode** %10, align 8
  %31 = load %struct.inode*, %struct.inode** %10, align 8
  %32 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %31)
  store %struct.ubifs_inode* %32, %struct.ubifs_inode** %11, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %33 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %34 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 0, i32 1
  store i32 %38, i32* %17, align 4
  %39 = load %struct.address_space*, %struct.address_space** %9, align 8
  %40 = call i32 @readahead_gfp_mask(%struct.address_space* %39)
  %41 = load i32, i32* @__GFP_FS, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  store i32 %43, i32* %19, align 4
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %45 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %46 = call i32 @ubifs_tnc_get_bu_keys(%struct.ubifs_info* %44, %struct.bu_info* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %3
  br label %229

50:                                               ; preds = %3
  %51 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %52 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %57 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %59 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %62 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @UBIFS_BLOCKS_PER_PAGE_SHIFT, align 4
  %65 = ashr i32 %63, %64
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %60
  br label %233

69:                                               ; preds = %60
  %70 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %71 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %150

74:                                               ; preds = %69
  %75 = load i32, i32* %17, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %142

77:                                               ; preds = %74
  %78 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %79 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %78, i32 0, i32 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %82 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %90 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %89, i32 0, i32 4
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %93 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %88, %99
  %101 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %102 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %101, i32 0, i32 4
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = sub nsw i64 %100, %106
  %108 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %109 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %108, i32 0, i32 2
  store i64 %107, i64* %109, align 8
  %110 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %111 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %112 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp sgt i64 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i32 @ubifs_assert(%struct.ubifs_info* %110, i32 %115)
  %117 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %118 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %119 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %122 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp sle i64 %120, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @ubifs_assert(%struct.ubifs_info* %117, i32 %125)
  %127 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %128 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* @GFP_NOFS, align 4
  %131 = load i32, i32* @__GFP_NOWARN, align 4
  %132 = or i32 %130, %131
  %133 = call i64 @kmalloc(i64 %129, i32 %132)
  %134 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %135 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %134, i32 0, i32 3
  store i64 %133, i64* %135, align 8
  %136 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %137 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %77
  br label %233

141:                                              ; preds = %77
  br label %142

142:                                              ; preds = %141, %74
  %143 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %144 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %145 = call i32 @ubifs_tnc_bulk_read(%struct.ubifs_info* %143, %struct.bu_info* %144)
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  br label %229

149:                                              ; preds = %142
  br label %150

150:                                              ; preds = %149, %69
  %151 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %152 = load %struct.page*, %struct.page** %6, align 8
  %153 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %154 = call i32 @populate_page(%struct.ubifs_info* %151, %struct.page* %152, %struct.bu_info* %153, i32* %16)
  store i32 %154, i32* %12, align 4
  %155 = load i32, i32* %12, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  br label %229

158:                                              ; preds = %150
  %159 = load %struct.page*, %struct.page** %6, align 8
  %160 = call i32 @unlock_page(%struct.page* %159)
  store i32 1, i32* %15, align 4
  %161 = load %struct.inode*, %struct.inode** %10, align 8
  %162 = call i32 @i_size_read(%struct.inode* %161)
  store i32 %162, i32* %18, align 4
  %163 = load i32, i32* %18, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  br label %219

166:                                              ; preds = %158
  %167 = load i32, i32* %18, align 4
  %168 = sub nsw i32 %167, 1
  %169 = load i32, i32* @PAGE_SHIFT, align 4
  %170 = ashr i32 %168, %169
  store i32 %170, i32* %8, align 4
  store i32 1, i32* %13, align 4
  br label %171

171:                                              ; preds = %209, %166
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* %14, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %212

175:                                              ; preds = %171
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* %13, align 4
  %178 = add nsw i32 %176, %177
  store i32 %178, i32* %20, align 4
  %179 = load i32, i32* %20, align 4
  %180 = load i32, i32* %8, align 4
  %181 = icmp sgt i32 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %175
  br label %212

183:                                              ; preds = %175
  %184 = load %struct.address_space*, %struct.address_space** %9, align 8
  %185 = load i32, i32* %20, align 4
  %186 = load i32, i32* %19, align 4
  %187 = call %struct.page* @find_or_create_page(%struct.address_space* %184, i32 %185, i32 %186)
  store %struct.page* %187, %struct.page** %21, align 8
  %188 = load %struct.page*, %struct.page** %21, align 8
  %189 = icmp ne %struct.page* %188, null
  br i1 %189, label %191, label %190

190:                                              ; preds = %183
  br label %212

191:                                              ; preds = %183
  %192 = load %struct.page*, %struct.page** %21, align 8
  %193 = call i32 @PageUptodate(%struct.page* %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %200, label %195

195:                                              ; preds = %191
  %196 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %197 = load %struct.page*, %struct.page** %21, align 8
  %198 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %199 = call i32 @populate_page(%struct.ubifs_info* %196, %struct.page* %197, %struct.bu_info* %198, i32* %16)
  store i32 %199, i32* %12, align 4
  br label %200

200:                                              ; preds = %195, %191
  %201 = load %struct.page*, %struct.page** %21, align 8
  %202 = call i32 @unlock_page(%struct.page* %201)
  %203 = load %struct.page*, %struct.page** %21, align 8
  %204 = call i32 @put_page(%struct.page* %203)
  %205 = load i32, i32* %12, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %200
  br label %212

208:                                              ; preds = %200
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %13, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %13, align 4
  br label %171

212:                                              ; preds = %207, %190, %182, %171
  %213 = load i32, i32* %7, align 4
  %214 = load i32, i32* %13, align 4
  %215 = add nsw i32 %213, %214
  %216 = sub nsw i32 %215, 1
  %217 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %218 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %217, i32 0, i32 2
  store i32 %216, i32* %218, align 4
  br label %219

219:                                              ; preds = %233, %229, %212, %165
  %220 = load i32, i32* %17, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %219
  %223 = load %struct.bu_info*, %struct.bu_info** %5, align 8
  %224 = getelementptr inbounds %struct.bu_info, %struct.bu_info* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = call i32 @kfree(i64 %225)
  br label %227

227:                                              ; preds = %222, %219
  %228 = load i32, i32* %15, align 4
  ret i32 %228

229:                                              ; preds = %157, %148, %49
  %230 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %231 = load i32, i32* %12, align 4
  %232 = call i32 @ubifs_warn(%struct.ubifs_info* %230, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %231)
  br label %219

233:                                              ; preds = %140, %68
  %234 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %235 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %234, i32 0, i32 1
  store i32 0, i32* %235, align 4
  %236 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %237 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %236, i32 0, i32 0
  store i32 0, i32* %237, align 4
  br label %219
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @readahead_gfp_mask(%struct.address_space*) #1

declare dso_local i32 @ubifs_tnc_get_bu_keys(%struct.ubifs_info*, %struct.bu_info*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i64 @kmalloc(i64, i32) #1

declare dso_local i32 @ubifs_tnc_bulk_read(%struct.ubifs_info*, %struct.bu_info*) #1

declare dso_local i32 @populate_page(%struct.ubifs_info*, %struct.page*, %struct.bu_info*, i32*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local %struct.page* @find_or_create_page(%struct.address_space*, i32, i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @ubifs_warn(%struct.ubifs_info*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
