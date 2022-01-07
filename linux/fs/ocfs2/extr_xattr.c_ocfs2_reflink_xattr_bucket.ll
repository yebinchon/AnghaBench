; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_reflink_xattr_bucket.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_reflink_xattr_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_reflink_xattr_tree_args = type { %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ocfs2_xattr_value_buf = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@ocfs2_journal_access = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@ocfs2_get_reflink_xattr_value_root = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i32*, i32, %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context*, %struct.ocfs2_reflink_xattr_tree_args*)* @ocfs2_reflink_xattr_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_reflink_xattr_bucket(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, %struct.ocfs2_alloc_context* %6, %struct.ocfs2_alloc_context* %7, %struct.ocfs2_reflink_xattr_tree_args* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ocfs2_alloc_context*, align 8
  %17 = alloca %struct.ocfs2_alloc_context*, align 8
  %18 = alloca %struct.ocfs2_reflink_xattr_tree_args*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.super_block*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.ocfs2_xattr_value_buf, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store %struct.ocfs2_alloc_context* %6, %struct.ocfs2_alloc_context** %16, align 8
  store %struct.ocfs2_alloc_context* %7, %struct.ocfs2_alloc_context** %17, align 8
  store %struct.ocfs2_reflink_xattr_tree_args* %8, %struct.ocfs2_reflink_xattr_tree_args** %18, align 8
  store i32 0, i32* %21, align 4
  %25 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %18, align 8
  %26 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %25, i32 0, i32 2
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load %struct.super_block*, %struct.super_block** %30, align 8
  store %struct.super_block* %31, %struct.super_block** %22, align 8
  %32 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %18, align 8
  %33 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %32, i32 0, i32 1
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %23, align 4
  %37 = getelementptr inbounds %struct.ocfs2_xattr_value_buf, %struct.ocfs2_xattr_value_buf* %24, i32 0, i32 0
  %38 = load i32, i32* @ocfs2_journal_access, align 4
  store i32 %38, i32* %37, align 4
  store i32 0, i32* %19, align 4
  br label %39

39:                                               ; preds = %189, %9
  %40 = load i32, i32* %19, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %198

43:                                               ; preds = %39
  %44 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %18, align 8
  %45 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %44, i32 0, i32 1
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @ocfs2_read_xattr_bucket(%struct.TYPE_16__* %46, i32 %47)
  store i32 %48, i32* %21, align 4
  %49 = load i32, i32* %21, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* %21, align 4
  %53 = call i32 @mlog_errno(i32 %52)
  br label %198

54:                                               ; preds = %43
  %55 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %18, align 8
  %56 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %55, i32 0, i32 0
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @ocfs2_init_xattr_bucket(%struct.TYPE_16__* %57, i32 %58, i32 1)
  store i32 %59, i32* %21, align 4
  %60 = load i32, i32* %21, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, i32* %21, align 4
  %64 = call i32 @mlog_errno(i32 %63)
  br label %198

65:                                               ; preds = %54
  %66 = load i32*, i32** %10, align 8
  %67 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %18, align 8
  %68 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %67, i32 0, i32 0
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %71 = call i32 @ocfs2_xattr_bucket_journal_access(i32* %66, %struct.TYPE_16__* %69, i32 %70)
  store i32 %71, i32* %21, align 4
  %72 = load i32, i32* %21, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load i32, i32* %21, align 4
  %76 = call i32 @mlog_errno(i32 %75)
  br label %198

77:                                               ; preds = %65
  store i32 0, i32* %20, align 4
  br label %78

78:                                               ; preds = %97, %77
  %79 = load i32, i32* %20, align 4
  %80 = load i32, i32* %23, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %78
  %83 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %18, align 8
  %84 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %83, i32 0, i32 0
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = load i32, i32* %20, align 4
  %87 = call i32 @bucket_block(%struct.TYPE_16__* %85, i32 %86)
  %88 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %18, align 8
  %89 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %88, i32 0, i32 1
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %89, align 8
  %91 = load i32, i32* %20, align 4
  %92 = call i32 @bucket_block(%struct.TYPE_16__* %90, i32 %91)
  %93 = load %struct.super_block*, %struct.super_block** %22, align 8
  %94 = getelementptr inbounds %struct.super_block, %struct.super_block* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @memcpy(i32 %87, i32 %92, i32 %95)
  br label %97

97:                                               ; preds = %82
  %98 = load i32, i32* %20, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %20, align 4
  br label %78

100:                                              ; preds = %78
  %101 = load i32, i32* %19, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %122

103:                                              ; preds = %100
  %104 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %18, align 8
  %105 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %104, i32 0, i32 0
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %105, align 8
  %107 = call %struct.TYPE_18__* @bucket_xh(%struct.TYPE_16__* %106)
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @le32_to_cpu(i32 %112)
  %114 = load i32*, i32** %14, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* %15, align 4
  %116 = call i32 @cpu_to_le16(i32 %115)
  %117 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %18, align 8
  %118 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %117, i32 0, i32 0
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %118, align 8
  %120 = call %struct.TYPE_18__* @bucket_xh(%struct.TYPE_16__* %119)
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  store i32 %116, i32* %121, align 8
  br label %122

122:                                              ; preds = %103, %100
  %123 = load i32*, i32** %10, align 8
  %124 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %18, align 8
  %125 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %124, i32 0, i32 0
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %125, align 8
  %127 = call i32 @ocfs2_xattr_bucket_journal_dirty(i32* %123, %struct.TYPE_16__* %126)
  %128 = load i32*, i32** %10, align 8
  %129 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %18, align 8
  %130 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %129, i32 0, i32 2
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %130, align 8
  %132 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %18, align 8
  %133 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %132, i32 0, i32 1
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %18, align 8
  %140 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %139, i32 0, i32 1
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %140, align 8
  %142 = call %struct.TYPE_18__* @bucket_xh(%struct.TYPE_16__* %141)
  %143 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %18, align 8
  %144 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %143, i32 0, i32 0
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %18, align 8
  %151 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %150, i32 0, i32 0
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %151, align 8
  %153 = call %struct.TYPE_18__* @bucket_xh(%struct.TYPE_16__* %152)
  %154 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %16, align 8
  %155 = load i32, i32* @ocfs2_get_reflink_xattr_value_root, align 4
  %156 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %18, align 8
  %157 = call i32 @ocfs2_reflink_xattr_header(i32* %128, %struct.TYPE_17__* %131, i32 %138, %struct.TYPE_18__* %142, i32 %149, %struct.TYPE_18__* %153, %struct.ocfs2_xattr_value_buf* %24, %struct.ocfs2_alloc_context* %154, i32 %155, %struct.ocfs2_reflink_xattr_tree_args* %156)
  store i32 %157, i32* %21, align 4
  %158 = load i32, i32* %21, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %122
  %161 = load i32, i32* %21, align 4
  %162 = call i32 @mlog_errno(i32 %161)
  br label %198

163:                                              ; preds = %122
  %164 = load i32*, i32** %10, align 8
  %165 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %18, align 8
  %166 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %165, i32 0, i32 0
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %166, align 8
  %168 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %169 = call i32 @ocfs2_xattr_bucket_journal_access(i32* %164, %struct.TYPE_16__* %167, i32 %168)
  store i32 %169, i32* %21, align 4
  %170 = load i32, i32* %21, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %163
  %173 = load i32, i32* %21, align 4
  %174 = call i32 @mlog_errno(i32 %173)
  br label %198

175:                                              ; preds = %163
  %176 = load i32*, i32** %10, align 8
  %177 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %18, align 8
  %178 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %177, i32 0, i32 0
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %178, align 8
  %180 = call i32 @ocfs2_xattr_bucket_journal_dirty(i32* %176, %struct.TYPE_16__* %179)
  %181 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %18, align 8
  %182 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %181, i32 0, i32 1
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %182, align 8
  %184 = call i32 @ocfs2_xattr_bucket_relse(%struct.TYPE_16__* %183)
  %185 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %18, align 8
  %186 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %185, i32 0, i32 0
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %186, align 8
  %188 = call i32 @ocfs2_xattr_bucket_relse(%struct.TYPE_16__* %187)
  br label %189

189:                                              ; preds = %175
  %190 = load i32, i32* %19, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %19, align 4
  %192 = load i32, i32* %23, align 4
  %193 = load i32, i32* %11, align 4
  %194 = add nsw i32 %193, %192
  store i32 %194, i32* %11, align 4
  %195 = load i32, i32* %23, align 4
  %196 = load i32, i32* %12, align 4
  %197 = add nsw i32 %196, %195
  store i32 %197, i32* %12, align 4
  br label %39

198:                                              ; preds = %172, %160, %74, %62, %51, %39
  %199 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %18, align 8
  %200 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %199, i32 0, i32 1
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %200, align 8
  %202 = call i32 @ocfs2_xattr_bucket_relse(%struct.TYPE_16__* %201)
  %203 = load %struct.ocfs2_reflink_xattr_tree_args*, %struct.ocfs2_reflink_xattr_tree_args** %18, align 8
  %204 = getelementptr inbounds %struct.ocfs2_reflink_xattr_tree_args, %struct.ocfs2_reflink_xattr_tree_args* %203, i32 0, i32 0
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %204, align 8
  %206 = call i32 @ocfs2_xattr_bucket_relse(%struct.TYPE_16__* %205)
  %207 = load i32, i32* %21, align 4
  ret i32 %207
}

declare dso_local i32 @ocfs2_read_xattr_bucket(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_init_xattr_bucket(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_journal_access(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @bucket_block(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_18__* @bucket_xh(%struct.TYPE_16__*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ocfs2_xattr_bucket_journal_dirty(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @ocfs2_reflink_xattr_header(i32*, %struct.TYPE_17__*, i32, %struct.TYPE_18__*, i32, %struct.TYPE_18__*, %struct.ocfs2_xattr_value_buf*, %struct.ocfs2_alloc_context*, i32, %struct.ocfs2_reflink_xattr_tree_args*) #1

declare dso_local i32 @ocfs2_xattr_bucket_relse(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
