; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_reserve_new_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_reserve_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, i32, i32, i64, i64 }
%struct.ocfs2_alloc_context = type { i32, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_AC_USE_INODE = common dso_local global i32 0, align 4
@ocfs2_block_group_search = common dso_local global i32 0, align 4
@OCFS2_MOUNT_INODE64 = common dso_local global i32 0, align 4
@OCFS2_INVALID_SLOT = common dso_local global i32 0, align 4
@OCFS2_MAX_TO_STEAL = common dso_local global i64 0, align 8
@INODE_ALLOC_SYSTEM_INODE = common dso_local global i32 0, align 4
@ALLOC_NEW_GROUP = common dso_local global i32 0, align 4
@ALLOC_GROUPS_FROM_GLOBAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_reserve_new_inode(%struct.ocfs2_super* %0, %struct.ocfs2_alloc_context** %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.ocfs2_alloc_context**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.ocfs2_alloc_context** %1, %struct.ocfs2_alloc_context*** %4, align 8
  %8 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %9 = call i32 @ocfs2_get_inode_steal_slot(%struct.ocfs2_super* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ocfs2_alloc_context* @kzalloc(i32 24, i32 %10)
  %12 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %4, align 8
  store %struct.ocfs2_alloc_context* %11, %struct.ocfs2_alloc_context** %12, align 8
  %13 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %4, align 8
  %14 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %13, align 8
  %15 = icmp ne %struct.ocfs2_alloc_context* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @mlog_errno(i32 %19)
  br label %129

21:                                               ; preds = %2
  %22 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %4, align 8
  %23 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %22, align 8
  %24 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load i32, i32* @OCFS2_AC_USE_INODE, align 4
  %26 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %4, align 8
  %27 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %26, align 8
  %28 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @ocfs2_block_group_search, align 4
  %30 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %4, align 8
  %31 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %30, align 8
  %32 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 8
  %33 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %34 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @OCFS2_MOUNT_INODE64, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %21
  %40 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %4, align 8
  %41 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %40, align 8
  %42 = getelementptr inbounds %struct.ocfs2_alloc_context, %struct.ocfs2_alloc_context* %41, i32 0, i32 1
  store i64 4294967295, i64* %42, align 8
  br label %43

43:                                               ; preds = %39, %21
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @OCFS2_INVALID_SLOT, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %49 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %48, i32 0, i32 1
  %50 = call i64 @atomic_read(i32* %49)
  %51 = load i64, i64* @OCFS2_MAX_TO_STEAL, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %109

54:                                               ; preds = %47, %43
  %55 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %56 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %55, i32 0, i32 1
  %57 = call i32 @atomic_set(i32* %56, i32 0)
  %58 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %59 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %7, align 8
  %61 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %62 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %4, align 8
  %63 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %62, align 8
  %64 = load i32, i32* @INODE_ALLOC_SYSTEM_INODE, align 4
  %65 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %66 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @ALLOC_NEW_GROUP, align 4
  %69 = load i32, i32* @ALLOC_GROUPS_FROM_GLOBAL, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @ocfs2_reserve_suballoc_bits(%struct.ocfs2_super* %61, %struct.ocfs2_alloc_context* %63, i32 %64, i64 %67, i64* %7, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  %75 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %76 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %75, i32 0, i32 2
  %77 = call i32 @spin_lock(i32* %76)
  %78 = load i64, i64* %7, align 8
  %79 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %80 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %79, i32 0, i32 3
  store i64 %78, i64* %80, align 8
  %81 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %82 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %81, i32 0, i32 2
  %83 = call i32 @spin_unlock(i32* %82)
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @trace_ocfs2_reserve_new_inode_new_group(i64 %84)
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @OCFS2_INVALID_SLOT, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %74
  %90 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %91 = call i32 @ocfs2_init_inode_steal_slot(%struct.ocfs2_super* %90)
  br label %92

92:                                               ; preds = %89, %74
  br label %129

93:                                               ; preds = %54
  %94 = load i32, i32* %5, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @ENOSPC, align 4
  %99 = sub nsw i32 0, %98
  %100 = icmp ne i32 %97, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @mlog_errno(i32 %102)
  br label %129

104:                                              ; preds = %96, %93
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %4, align 8
  %107 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %106, align 8
  %108 = call i32 @ocfs2_free_ac_resource(%struct.ocfs2_alloc_context* %107)
  br label %109

109:                                              ; preds = %105, %53
  %110 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %111 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %4, align 8
  %112 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %111, align 8
  %113 = call i32 @ocfs2_steal_inode(%struct.ocfs2_super* %110, %struct.ocfs2_alloc_context* %112)
  store i32 %113, i32* %5, align 4
  %114 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %115 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %114, i32 0, i32 1
  %116 = call i32 @atomic_inc(i32* %115)
  %117 = load i32, i32* %5, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %109
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* @ENOSPC, align 4
  %122 = sub nsw i32 0, %121
  %123 = icmp ne i32 %120, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @mlog_errno(i32 %125)
  br label %127

127:                                              ; preds = %124, %119
  br label %129

128:                                              ; preds = %109
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %128, %127, %101, %92, %16
  %130 = load i32, i32* %5, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %129
  %133 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %4, align 8
  %134 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %133, align 8
  %135 = icmp ne %struct.ocfs2_alloc_context* %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %4, align 8
  %138 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %137, align 8
  %139 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %138)
  %140 = load %struct.ocfs2_alloc_context**, %struct.ocfs2_alloc_context*** %4, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %140, align 8
  br label %141

141:                                              ; preds = %136, %132, %129
  %142 = load i32, i32* %5, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @mlog_errno(i32 %145)
  br label %147

147:                                              ; preds = %144, %141
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @ocfs2_get_inode_steal_slot(%struct.ocfs2_super*) #1

declare dso_local %struct.ocfs2_alloc_context* @kzalloc(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ocfs2_reserve_suballoc_bits(%struct.ocfs2_super*, %struct.ocfs2_alloc_context*, i32, i64, i64*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @trace_ocfs2_reserve_new_inode_new_group(i64) #1

declare dso_local i32 @ocfs2_init_inode_steal_slot(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_free_ac_resource(%struct.ocfs2_alloc_context*) #1

declare dso_local i32 @ocfs2_steal_inode(%struct.ocfs2_super*, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
