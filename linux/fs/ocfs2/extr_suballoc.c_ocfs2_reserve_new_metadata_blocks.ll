; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_reserve_new_metadata_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_reserve_new_metadata_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, i64 }
%struct.ocfs2_alloc_context = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_AC_USE_META = common dso_local global i32 0, align 4
@ocfs2_block_group_search = common dso_local global i32 0, align 4
@OCFS2_INVALID_SLOT = common dso_local global i32 0, align 4
@OCFS2_MAX_TO_STEAL = common dso_local global i64 0, align 8
@EXTENT_ALLOC_SYSTEM_INODE = common dso_local global i32 0, align 4
@ALLOC_GROUPS_FROM_GLOBAL = common dso_local global i32 0, align 4
@ALLOC_NEW_GROUP = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_reserve_new_metadata_blocks(%struct.ocfs2_super* %0, i32 %1, %struct.ocfs2_alloc_context** %2) #0 {
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_alloc_context**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ocfs2_alloc_context** %2, %struct.ocfs2_alloc_context*** %6, align 8
  %9 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %10 = call i32 @ocfs2_get_meta_steal_slot(%struct.ocfs2_super* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ocfs2_alloc_context* @kzalloc(i32 12, i32 %11)
  %13 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  store %struct.ocfs2_alloc_context* %12, %struct.ocfs2_alloc_context** %13, align 8
  %14 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  %15 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %14, align 8
  %16 = icmp ne %struct.ocfs2_alloc_context* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @mlog_errno(i32 %20)
  br label %107

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  %25 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %24, align 8
  %26 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @OCFS2_AC_USE_META, align 4
  %28 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  %29 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %28, align 8
  %30 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @ocfs2_block_group_search, align 4
  %32 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  %33 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %32, align 8
  %34 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @OCFS2_INVALID_SLOT, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %22
  %39 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %40 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %39, i32 0, i32 0
  %41 = call i64 @atomic_read(i32* %40)
  %42 = load i64, i64* @OCFS2_MAX_TO_STEAL, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %87

45:                                               ; preds = %38, %22
  %46 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %47 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %46, i32 0, i32 0
  %48 = call i32 @atomic_set(i32* %47, i32 0)
  %49 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %50 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  %51 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %50, align 8
  %52 = load i32, i32* @EXTENT_ALLOC_SYSTEM_INODE, align 4
  %53 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %54 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @ALLOC_GROUPS_FROM_GLOBAL, align 4
  %58 = load i32, i32* @ALLOC_NEW_GROUP, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @ocfs2_reserve_suballoc_bits(%struct.ocfs2_super* %49, %struct.ocfs2_alloc_context* %51, i32 %52, i32 %56, i32* null, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* @OCFS2_INVALID_SLOT, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %69 = call i32 @ocfs2_init_meta_steal_slot(%struct.ocfs2_super* %68)
  br label %70

70:                                               ; preds = %67, %63
  br label %107

71:                                               ; preds = %45
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @ENOSPC, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @mlog_errno(i32 %80)
  br label %107

82:                                               ; preds = %74, %71
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  %85 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %84, align 8
  %86 = call i32 @ocfs2_free_ac_resource(%struct.ocfs2_alloc_context* %85)
  br label %87

87:                                               ; preds = %83, %44
  %88 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %89 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  %90 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %89, align 8
  %91 = call i32 @ocfs2_steal_meta(%struct.ocfs2_super* %88, %struct.ocfs2_alloc_context* %90)
  store i32 %91, i32* %7, align 4
  %92 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %93 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %92, i32 0, i32 0
  %94 = call i32 @atomic_inc(i32* %93)
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %87
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @ENOSPC, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp ne i32 %98, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @mlog_errno(i32 %103)
  br label %105

105:                                              ; preds = %102, %97
  br label %107

106:                                              ; preds = %87
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %106, %105, %79, %70, %17
  %108 = load i32, i32* %7, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  %112 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %111, align 8
  %113 = icmp ne %struct.ocfs2_alloc_context* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  %116 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %115, align 8
  %117 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %116)
  %118 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %6, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %118, align 8
  br label %119

119:                                              ; preds = %114, %110, %107
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @mlog_errno(i32 %123)
  br label %125

125:                                              ; preds = %122, %119
  %126 = load i32, i32* %7, align 4
  ret i32 %126
}

declare dso_local i32 @ocfs2_get_meta_steal_slot(%struct.ocfs2_super*) #1

declare dso_local %struct.ocfs2_alloc_context* @kzalloc(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ocfs2_reserve_suballoc_bits(%struct.ocfs2_super*, %struct.ocfs2_alloc_context*, i32, i32, i32*, i32) #1

declare dso_local i32 @ocfs2_init_meta_steal_slot(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_free_ac_resource(%struct.ocfs2_alloc_context*) #1

declare dso_local i32 @ocfs2_steal_meta(%struct.ocfs2_super*, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
