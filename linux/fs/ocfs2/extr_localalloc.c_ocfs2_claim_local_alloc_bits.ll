; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_claim_local_alloc_bits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_claim_local_alloc_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.ocfs2_alloc_context = type { i64, i32, %struct.inode* }
%struct.inode = type { i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ocfs2_local_alloc = type { i32, i8* }

@OCFS2_AC_USE_LOCAL = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_claim_local_alloc_bits(%struct.ocfs2_super* %0, i32* %1, %struct.ocfs2_alloc_context* %2, i64 %3, i64* %4, i64* %5) #0 {
  %7 = alloca %struct.ocfs2_super*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ocfs2_alloc_context*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.ocfs2_dinode*, align 8
  %18 = alloca %struct.ocfs2_local_alloc*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.ocfs2_alloc_context* %2, %struct.ocfs2_alloc_context** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store i64* %5, i64** %12, align 8
  %19 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %20 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @OCFS2_AC_USE_LOCAL, align 8
  %23 = icmp ne i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %27 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %26, i32 0, i32 2
  %28 = load %struct.inode*, %struct.inode** %27, align 8
  store %struct.inode* %28, %struct.inode** %15, align 8
  %29 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %30 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %34, %struct.ocfs2_dinode** %17, align 8
  %35 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %36 = call %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode* %35)
  store %struct.ocfs2_local_alloc* %36, %struct.ocfs2_local_alloc** %18, align 8
  %37 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %38 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %39 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %40 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ocfs2_local_alloc_find_clear_bits(%struct.ocfs2_super* %37, %struct.ocfs2_dinode* %38, i64* %10, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %50

45:                                               ; preds = %6
  %46 = load i32, i32* @ENOSPC, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @mlog_errno(i32 %48)
  br label %108

50:                                               ; preds = %6
  %51 = load %struct.ocfs2_local_alloc*, %struct.ocfs2_local_alloc** %18, align 8
  %52 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %16, align 8
  %54 = load %struct.ocfs2_local_alloc*, %struct.ocfs2_local_alloc** %18, align 8
  %55 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @le32_to_cpu(i32 %56)
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = load i64*, i64** %11, align 8
  store i64 %60, i64* %61, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i64*, i64** %12, align 8
  store i64 %62, i64* %63, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load %struct.inode*, %struct.inode** %15, align 8
  %66 = call i32 @INODE_CACHE(%struct.inode* %65)
  %67 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %68 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %67, i32 0, i32 0
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %71 = call i32 @ocfs2_journal_access_di(i32* %64, i32 %66, %struct.TYPE_7__* %69, i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %50
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @mlog_errno(i32 %75)
  br label %108

77:                                               ; preds = %50
  %78 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %79 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %78, i32 0, i32 1
  %80 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %9, align 8
  %81 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %14, align 4
  %84 = load i64, i64* %10, align 8
  %85 = call i32 @ocfs2_resmap_claimed_bits(i32* %79, i32 %82, i32 %83, i64 %84)
  br label %86

86:                                               ; preds = %90, %77
  %87 = load i64, i64* %10, align 8
  %88 = add nsw i64 %87, -1
  store i64 %88, i64* %10, align 8
  %89 = icmp ne i64 %87, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %14, align 4
  %93 = load i8*, i8** %16, align 8
  %94 = call i32 @ocfs2_set_bit(i32 %91, i8* %93)
  br label %86

95:                                               ; preds = %86
  %96 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %17, align 8
  %97 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64*, i64** %12, align 8
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @le32_add_cpu(i32* %99, i64 %101)
  %103 = load i32*, i32** %8, align 8
  %104 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %105 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %104, i32 0, i32 0
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = call i32 @ocfs2_journal_dirty(i32* %103, %struct.TYPE_7__* %106)
  br label %108

108:                                              ; preds = %95, %74, %45
  %109 = load i32, i32* %13, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @mlog_errno(i32 %112)
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i32, i32* %13, align 4
  ret i32 %115
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_local_alloc_find_clear_bits(%struct.ocfs2_super*, %struct.ocfs2_dinode*, i64*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_resmap_claimed_bits(i32*, i32, i32, i64) #1

declare dso_local i32 @ocfs2_set_bit(i32, i8*) #1

declare dso_local i32 @le32_add_cpu(i32*, i64) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
