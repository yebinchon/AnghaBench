; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_claim_new_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_claim_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_alloc_context = type { i64, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ocfs2_suballoc_result = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@OCFS2_AC_USE_INODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_claim_new_inode(i32* %0, %struct.inode* %1, %struct.buffer_head* %2, %struct.ocfs2_alloc_context* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.ocfs2_alloc_context*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ocfs2_suballoc_result, align 4
  store i32* %0, i32** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %10, align 8
  store %struct.ocfs2_alloc_context* %3, %struct.ocfs2_alloc_context** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %11, align 8
  %18 = icmp ne %struct.ocfs2_alloc_context* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %11, align 8
  %23 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %11, align 8
  %29 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 1
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %11, align 8
  %35 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @OCFS2_AC_USE_INODE, align 8
  %38 = icmp ne i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.inode*, %struct.inode** %9, align 8
  %42 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %43 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %11, align 8
  %44 = call i32 @ocfs2_init_inode_ac_group(%struct.inode* %41, %struct.buffer_head* %42, %struct.ocfs2_alloc_context* %43)
  %45 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %11, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @ocfs2_claim_suballoc_bits(%struct.ocfs2_alloc_context* %45, i32* %46, i32 1, i32 1, %struct.ocfs2_suballoc_result* %16)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %7
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @mlog_errno(i32 %51)
  br label %84

53:                                               ; preds = %7
  %54 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %11, align 8
  %55 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %54, i32 0, i32 3
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.TYPE_6__* @OCFS2_SB(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 @atomic_inc(i32* %61)
  %63 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %16, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 1
  %66 = zext i1 %65 to i32
  %67 = call i32 @BUG_ON(i32 %66)
  %68 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %16, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %12, align 8
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %16, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %13, align 8
  store i32 %72, i32* %73, align 4
  %74 = getelementptr inbounds %struct.ocfs2_suballoc_result, %struct.ocfs2_suballoc_result* %16, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %14, align 8
  store i32 %75, i32* %76, align 4
  %77 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %11, align 8
  %78 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %78, align 8
  %81 = load %struct.inode*, %struct.inode** %9, align 8
  %82 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %11, align 8
  %83 = call i32 @ocfs2_save_inode_ac_group(%struct.inode* %81, %struct.ocfs2_alloc_context* %82)
  store i32 0, i32* %15, align 4
  br label %84

84:                                               ; preds = %53, %50
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @mlog_errno(i32 %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %15, align 4
  ret i32 %91
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_init_inode_ac_group(%struct.inode*, %struct.buffer_head*, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @ocfs2_claim_suballoc_bits(%struct.ocfs2_alloc_context*, i32*, i32, i32, %struct.ocfs2_suballoc_result*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.TYPE_6__* @OCFS2_SB(i32) #1

declare dso_local i32 @ocfs2_save_inode_ac_group(%struct.inode*, %struct.ocfs2_alloc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
