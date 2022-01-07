; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_claim_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_claim_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_alloc_context = type { i64, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ocfs2_suballoc_result = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@OCFS2_AC_USE_META = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_claim_metadata(i32* %0, %struct.ocfs2_alloc_context* %1, i64 %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ocfs2_alloc_context*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ocfs2_suballoc_result, align 4
  store i32* %0, i32** %8, align 8
  store %struct.ocfs2_alloc_context* %1, %struct.ocfs2_alloc_context** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = bitcast %struct.ocfs2_suballoc_result* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 16, i1 false)
  %18 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %19 = icmp ne %struct.ocfs2_alloc_context* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %24 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %27 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = add nsw i64 %28, %29
  %31 = icmp slt i64 %25, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %35 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @OCFS2_AC_USE_META, align 8
  %38 = icmp ne i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @ocfs2_claim_suballoc_bits(%struct.ocfs2_alloc_context* %41, i32* %42, i64 %43, i32 1, %struct.ocfs2_suballoc_result* %16)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %7
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @mlog_errno(i32 %48)
  br label %79

50:                                               ; preds = %7
  %51 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %52 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %51, i32 0, i32 3
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.TYPE_6__* @OCFS2_SB(i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = call i32 @atomic_inc(i32* %58)
  %60 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %16, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %11, align 8
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %16, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %12, align 8
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %16, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %14, align 8
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %16, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = zext i32 %70 to i64
  %72 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %73 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, %71
  store i64 %75, i64* %73, align 8
  %76 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %16, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %13, align 8
  store i32 %77, i32* %78, align 4
  store i32 0, i32* %15, align 4
  br label %79

79:                                               ; preds = %50, %47
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @mlog_errno(i32 %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i32, i32* %15, align 4
  ret i32 %86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @ocfs2_claim_suballoc_bits(%struct.ocfs2_alloc_context*, i32*, i64, i32, %struct.ocfs2_suballoc_result*) #2

declare dso_local i32 @mlog_errno(i32) #2

declare dso_local i32 @atomic_inc(i32*) #2

declare dso_local %struct.TYPE_6__* @OCFS2_SB(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
