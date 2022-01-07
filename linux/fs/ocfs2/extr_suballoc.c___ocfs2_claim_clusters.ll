; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c___ocfs2_claim_clusters.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c___ocfs2_claim_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_alloc_context = type { i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ocfs2_suballoc_result = type { i32, i32, i32, i32 }
%struct.ocfs2_super = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@OCFS2_AC_USE_LOCAL = common dso_local global i64 0, align 8
@OCFS2_AC_USE_MAIN = common dso_local global i64 0, align 8
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"minimum allocation requested %u exceeds group bitmap size %u!\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ocfs2_claim_clusters(i32* %0, %struct.ocfs2_alloc_context* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ocfs2_alloc_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_suballoc_result, align 4
  %16 = alloca %struct.ocfs2_super*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.ocfs2_alloc_context* %1, %struct.ocfs2_alloc_context** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %14, align 4
  %18 = bitcast %struct.ocfs2_suballoc_result* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 16, i1 false)
  %19 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %8, align 8
  %20 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.ocfs2_super* @OCFS2_SB(i32 %23)
  store %struct.ocfs2_super* %24, %struct.ocfs2_super** %16, align 8
  %25 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %8, align 8
  %26 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %8, align 8
  %29 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %8, align 8
  %35 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @OCFS2_AC_USE_LOCAL, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %6
  %40 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %8, align 8
  %41 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @OCFS2_AC_USE_MAIN, align 8
  %44 = icmp ne i64 %42, %43
  br label %45

45:                                               ; preds = %39, %6
  %46 = phi i1 [ false, %6 ], [ %44, %39 ]
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUG_ON(i32 %47)
  %49 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %8, align 8
  %50 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @OCFS2_AC_USE_LOCAL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %45
  %55 = load i32, i32* %9, align 4
  %56 = icmp sgt i32 %55, 1
  %57 = zext i1 %56 to i32
  %58 = call i32 @WARN_ON(i32 %57)
  %59 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %8, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = call i32 @ocfs2_claim_local_alloc_bits(%struct.ocfs2_super* %59, i32* %60, %struct.ocfs2_alloc_context* %61, i32 %62, i32* %63, i32* %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %54
  %69 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %70 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = call i32 @atomic_inc(i32* %71)
  br label %73

73:                                               ; preds = %68, %54
  br label %131

74:                                               ; preds = %45
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %77 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %78, 1
  %80 = icmp sgt i32 %75, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load i32, i32* @ML_ERROR, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %85 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @mlog(i32 %82, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %86)
  %88 = load i32, i32* @ENOSPC, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %13, align 4
  br label %151

90:                                               ; preds = %74
  %91 = load i32, i32* %14, align 4
  %92 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %93 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %94, 1
  %96 = icmp ugt i32 %91, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %90
  %98 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %99 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %100, 1
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %97, %90
  %103 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %8, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @ocfs2_claim_suballoc_bits(%struct.ocfs2_alloc_context* %103, i32* %104, i32 %105, i32 %106, %struct.ocfs2_suballoc_result* %15)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %130, label %110

110:                                              ; preds = %102
  %111 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %15, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @BUG_ON(i32 %112)
  %114 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %8, align 8
  %115 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %114, i32 0, i32 3
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %15, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %15, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ocfs2_desc_bitmap_to_cluster_off(%struct.TYPE_4__* %116, i32 %118, i32 %120)
  %122 = load i32*, i32** %11, align 8
  store i32 %121, i32* %122, align 4
  %123 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  %124 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = call i32 @atomic_inc(i32* %125)
  %127 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %15, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %12, align 8
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %110, %102
  br label %131

131:                                              ; preds = %130, %73
  %132 = load i32, i32* %13, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* @ENOSPC, align 4
  %137 = sub nsw i32 0, %136
  %138 = icmp ne i32 %135, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load i32, i32* %13, align 4
  %141 = call i32 @mlog_errno(i32 %140)
  br label %142

142:                                              ; preds = %139, %134
  br label %151

143:                                              ; preds = %131
  %144 = load i32*, i32** %12, align 8
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %8, align 8
  %148 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, %146
  store i64 %150, i64* %148, align 8
  br label %151

151:                                              ; preds = %143, %142, %81
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @mlog_errno(i32 %155)
  br label %157

157:                                              ; preds = %154, %151
  %158 = load i32, i32* %13, align 4
  ret i32 %158
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @ocfs2_claim_local_alloc_bits(%struct.ocfs2_super*, i32*, %struct.ocfs2_alloc_context*, i32, i32*, i32*) #2

declare dso_local i32 @atomic_inc(i32*) #2

declare dso_local i32 @mlog(i32, i8*, i32, i32) #2

declare dso_local i32 @ocfs2_claim_suballoc_bits(%struct.ocfs2_alloc_context*, i32*, i32, i32, %struct.ocfs2_suballoc_result*) #2

declare dso_local i32 @ocfs2_desc_bitmap_to_cluster_off(%struct.TYPE_4__*, i32, i32) #2

declare dso_local i32 @mlog_errno(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
