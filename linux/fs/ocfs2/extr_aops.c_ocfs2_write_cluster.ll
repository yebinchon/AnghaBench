; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_write_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_write_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_write_ctxt = type { i32, i32**, i32, i32, i32 }
%struct.ocfs2_extent_tree = type { i32 }
%struct.TYPE_5__ = type { i64 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Inode %llu: EAGAIN return during allocation.\0A\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"Get physical blkno failed for inode %llu, at logical cluster %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, i32*, i32, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*, %struct.ocfs2_write_ctxt*, i32, i32, i32)* @ocfs2_write_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_write_cluster(%struct.address_space* %0, i32* %1, i32 %2, i32 %3, i32 %4, %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context* %6, %struct.ocfs2_write_ctxt* %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.address_space*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ocfs2_alloc_context*, align 8
  %18 = alloca %struct.ocfs2_alloc_context*, align 8
  %19 = alloca %struct.ocfs2_write_ctxt*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.inode*, align 8
  %27 = alloca %struct.ocfs2_extent_tree, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store %struct.ocfs2_alloc_context* %5, %struct.ocfs2_alloc_context** %17, align 8
  store %struct.ocfs2_alloc_context* %6, %struct.ocfs2_alloc_context** %18, align 8
  store %struct.ocfs2_write_ctxt* %7, %struct.ocfs2_write_ctxt** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %31 = load %struct.address_space*, %struct.address_space** %12, align 8
  %32 = getelementptr inbounds %struct.address_space, %struct.address_space* %31, i32 0, i32 0
  %33 = load %struct.inode*, %struct.inode** %32, align 8
  store %struct.inode* %33, %struct.inode** %26, align 8
  %34 = load %struct.inode*, %struct.inode** %26, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = call i8* @ocfs2_clusters_to_blocks(%struct.TYPE_4__* %36, i32 1)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %28, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %77

41:                                               ; preds = %11
  %42 = load i32, i32* %20, align 4
  store i32 %42, i32* %29, align 4
  %43 = load %struct.inode*, %struct.inode** %26, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = call i32 @OCFS2_SB(%struct.TYPE_4__* %45)
  %47 = load %struct.inode*, %struct.inode** %26, align 8
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %19, align 8
  %53 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %19, align 8
  %56 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %17, align 8
  %59 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %18, align 8
  %60 = call i32 @ocfs2_add_inode_data(i32 %46, %struct.inode* %47, i32* %29, i32 1, i32 %51, i32 %54, i32 %57, %struct.ocfs2_alloc_context* %58, %struct.ocfs2_alloc_context* %59, i32* null)
  store i32 %60, i32* %23, align 4
  %61 = load i32, i32* %23, align 4
  %62 = load i32, i32* @EAGAIN, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp eq i32 %61, %63
  %65 = zext i1 %64 to i32
  %66 = load %struct.inode*, %struct.inode** %26, align 8
  %67 = call %struct.TYPE_5__* @OCFS2_I(%struct.inode* %66)
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @mlog_bug_on_msg(i32 %65, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %69)
  %71 = load i32, i32* %23, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %41
  %74 = load i32, i32* %23, align 4
  %75 = call i32 @mlog_errno(i32 %74)
  br label %209

76:                                               ; preds = %41
  br label %105

77:                                               ; preds = %11
  %78 = load i32, i32* %15, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %104

80:                                               ; preds = %77
  %81 = load %struct.inode*, %struct.inode** %26, align 8
  %82 = call i32 @INODE_CACHE(%struct.inode* %81)
  %83 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %19, align 8
  %84 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree* %27, i32 %82, i32 %85)
  %87 = load %struct.inode*, %struct.inode** %26, align 8
  %88 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %19, align 8
  %89 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %20, align 4
  %92 = load i32*, i32** %13, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %18, align 8
  %95 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %19, align 8
  %96 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %95, i32 0, i32 2
  %97 = call i32 @ocfs2_mark_extent_written(%struct.inode* %87, %struct.ocfs2_extent_tree* %27, i32 %90, i32 %91, i32 1, i32 %93, %struct.ocfs2_alloc_context* %94, i32* %96)
  store i32 %97, i32* %23, align 4
  %98 = load i32, i32* %23, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %80
  %101 = load i32, i32* %23, align 4
  %102 = call i32 @mlog_errno(i32 %101)
  br label %209

103:                                              ; preds = %80
  br label %104

104:                                              ; preds = %103, %77
  br label %105

105:                                              ; preds = %104, %76
  %106 = load %struct.inode*, %struct.inode** %26, align 8
  %107 = load i32, i32* %20, align 4
  %108 = load i32*, i32** %13, align 8
  %109 = call i32 @ocfs2_get_clusters(%struct.inode* %106, i32 %107, i32* %108, i32* null, i32* null)
  store i32 %109, i32* %23, align 4
  %110 = load i32, i32* %23, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %105
  %113 = load i32, i32* @ML_ERROR, align 4
  %114 = load %struct.inode*, %struct.inode** %26, align 8
  %115 = call %struct.TYPE_5__* @OCFS2_I(%struct.inode* %114)
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %20, align 4
  %119 = call i32 @mlog(i32 %113, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i64 %117, i32 %118)
  br label %209

120:                                              ; preds = %105
  %121 = load i32*, i32** %13, align 8
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 0
  %124 = zext i1 %123 to i32
  %125 = call i32 @BUG_ON(i32 %124)
  %126 = load %struct.inode*, %struct.inode** %26, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load i32*, i32** %13, align 8
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @ocfs2_clusters_to_blocks(%struct.TYPE_4__* %128, i32 %130)
  %132 = ptrtoint i8* %131 to i32
  store i32 %132, i32* %25, align 4
  %133 = load i32, i32* %16, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %148, label %135

135:                                              ; preds = %120
  %136 = load i32, i32* %21, align 4
  %137 = load %struct.inode*, %struct.inode** %26, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 0
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = ashr i32 %136, %141
  %143 = load i32, i32* %28, align 4
  %144 = sub nsw i32 %143, 1
  %145 = and i32 %142, %144
  %146 = load i32, i32* %25, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %25, align 4
  br label %148

148:                                              ; preds = %135, %120
  store i32 0, i32* %24, align 4
  br label %149

149:                                              ; preds = %193, %148
  %150 = load i32, i32* %24, align 4
  %151 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %19, align 8
  %152 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %196

155:                                              ; preds = %149
  %156 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %19, align 8
  %157 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %156, i32 0, i32 1
  %158 = load i32**, i32*** %157, align 8
  %159 = load i32, i32* %24, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32*, i32** %158, i64 %160
  %162 = load i32*, i32** %161, align 8
  %163 = icmp eq i32* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %155
  %165 = load i32, i32* %25, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %25, align 4
  br label %193

167:                                              ; preds = %155
  %168 = load %struct.inode*, %struct.inode** %26, align 8
  %169 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %19, align 8
  %170 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %19, align 8
  %171 = getelementptr inbounds %struct.ocfs2_write_ctxt, %struct.ocfs2_write_ctxt* %170, i32 0, i32 1
  %172 = load i32**, i32*** %171, align 8
  %173 = load i32, i32* %24, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32*, i32** %172, i64 %174
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %20, align 4
  %178 = load i32, i32* %21, align 4
  %179 = load i32, i32* %22, align 4
  %180 = load i32, i32* %16, align 4
  %181 = call i32 @ocfs2_prepare_page_for_write(%struct.inode* %168, i32* %25, %struct.ocfs2_write_ctxt* %169, i32* %176, i32 %177, i32 %178, i32 %179, i32 %180)
  store i32 %181, i32* %30, align 4
  %182 = load i32, i32* %30, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %167
  %185 = load i32, i32* %30, align 4
  %186 = call i32 @mlog_errno(i32 %185)
  %187 = load i32, i32* %23, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %184
  %190 = load i32, i32* %30, align 4
  store i32 %190, i32* %23, align 4
  br label %191

191:                                              ; preds = %189, %184
  br label %192

192:                                              ; preds = %191, %167
  br label %193

193:                                              ; preds = %192, %164
  %194 = load i32, i32* %24, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %24, align 4
  br label %149

196:                                              ; preds = %149
  %197 = load i32, i32* %23, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %196
  %200 = load i32, i32* %14, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %199
  %203 = load %struct.inode*, %struct.inode** %26, align 8
  %204 = load %struct.ocfs2_write_ctxt*, %struct.ocfs2_write_ctxt** %19, align 8
  %205 = load i32, i32* %21, align 4
  %206 = load i32, i32* %22, align 4
  %207 = call i32 @ocfs2_write_failure(%struct.inode* %203, %struct.ocfs2_write_ctxt* %204, i32 %205, i32 %206)
  br label %208

208:                                              ; preds = %202, %199, %196
  br label %209

209:                                              ; preds = %208, %112, %100, %73
  %210 = load i32, i32* %23, align 4
  ret i32 %210
}

declare dso_local i8* @ocfs2_clusters_to_blocks(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ocfs2_add_inode_data(i32, %struct.inode*, i32*, i32, i32, i32, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*, i32*) #1

declare dso_local i32 @OCFS2_SB(%struct.TYPE_4__*) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i64) #1

declare dso_local %struct.TYPE_5__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_init_dinode_extent_tree(%struct.ocfs2_extent_tree*, i32, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_mark_extent_written(%struct.inode*, %struct.ocfs2_extent_tree*, i32, i32, i32, i32, %struct.ocfs2_alloc_context*, i32*) #1

declare dso_local i32 @ocfs2_get_clusters(%struct.inode*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @mlog(i32, i8*, i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_prepare_page_for_write(%struct.inode*, i32*, %struct.ocfs2_write_ctxt*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ocfs2_write_failure(%struct.inode*, %struct.ocfs2_write_ctxt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
