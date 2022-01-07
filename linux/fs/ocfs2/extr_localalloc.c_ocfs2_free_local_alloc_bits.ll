; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_free_local_alloc_bits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_free_local_alloc_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.ocfs2_alloc_context = type { i64, %struct.inode* }
%struct.inode = type { i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ocfs2_local_alloc = type { i32, i8* }

@OCFS2_AC_USE_LOCAL = common dso_local global i64 0, align 8
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_free_local_alloc_bits(%struct.ocfs2_super* %0, i32* %1, %struct.ocfs2_alloc_context* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ocfs2_super*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ocfs2_alloc_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.ocfs2_dinode*, align 8
  %17 = alloca %struct.ocfs2_local_alloc*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.ocfs2_alloc_context* %2, %struct.ocfs2_alloc_context** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %8, align 8
  %19 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @OCFS2_AC_USE_LOCAL, align 8
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %8, align 8
  %26 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %25, i32 0, i32 1
  %27 = load %struct.inode*, %struct.inode** %26, align 8
  store %struct.inode* %27, %struct.inode** %14, align 8
  %28 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %29 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %33, %struct.ocfs2_dinode** %16, align 8
  %34 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %16, align 8
  %35 = call %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode* %34)
  store %struct.ocfs2_local_alloc* %35, %struct.ocfs2_local_alloc** %17, align 8
  %36 = load %struct.ocfs2_local_alloc*, %struct.ocfs2_local_alloc** %17, align 8
  %37 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %15, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.ocfs2_local_alloc*, %struct.ocfs2_local_alloc** %17, align 8
  %41 = getelementptr inbounds %struct.ocfs2_local_alloc, %struct.ocfs2_local_alloc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = sub nsw i32 %39, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %13, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = load %struct.inode*, %struct.inode** %14, align 8
  %48 = call i32 @INODE_CACHE(%struct.inode* %47)
  %49 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %50 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %53 = call i32 @ocfs2_journal_access_di(i32* %46, i32 %48, %struct.TYPE_7__* %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %5
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @mlog_errno(i32 %57)
  br label %82

59:                                               ; preds = %5
  br label %60

60:                                               ; preds = %64, %59
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %13, align 4
  %63 = icmp ne i32 %61, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  %67 = load i8*, i8** %15, align 8
  %68 = call i32 @ocfs2_clear_bit(i32 %65, i8* %67)
  br label %60

69:                                               ; preds = %60
  %70 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %16, align 8
  %71 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %10, align 4
  %75 = sub nsw i32 0, %74
  %76 = call i32 @le32_add_cpu(i32* %73, i32 %75)
  %77 = load i32*, i32** %7, align 8
  %78 = load %struct.ocfs2_super*, %struct.ocfs2_super** %6, align 8
  %79 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = call i32 @ocfs2_journal_dirty(i32* %77, %struct.TYPE_7__* %80)
  br label %82

82:                                               ; preds = %69, %56
  %83 = load i32, i32* %11, align 4
  ret i32 %83
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.ocfs2_local_alloc* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_clear_bit(i32, i8*) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
