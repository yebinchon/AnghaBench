; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_commit.c_dbg_old_index_check_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_commit.c_dbg_old_index_check_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, %struct.ubifs_debug_info* }
%struct.ubifs_debug_info = type { i32, i32, %struct.ubifs_zbranch }
%struct.ubifs_zbranch = type { i32, i32, i32 }
%struct.ubifs_idx_node = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBIFS_IDX_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbg_old_index_check_init(%struct.ubifs_info* %0, %struct.ubifs_zbranch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_zbranch*, align 8
  %6 = alloca %struct.ubifs_idx_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubifs_debug_info*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_zbranch* %1, %struct.ubifs_zbranch** %5, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %13 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %12, i32 0, i32 1
  %14 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %13, align 8
  store %struct.ubifs_debug_info* %14, %struct.ubifs_debug_info** %11, align 8
  %15 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %11, align 8
  %16 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %15, i32 0, i32 2
  %17 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %5, align 8
  %18 = bitcast %struct.ubifs_zbranch* %16 to i8*
  %19 = bitcast %struct.ubifs_zbranch* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 12, i1 false)
  %20 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %11, align 8
  %21 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %11, align 8
  %25 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %11, align 8
  %29 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %33 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @GFP_NOFS, align 4
  %36 = call %struct.ubifs_idx_node* @kmalloc(i32 %34, i32 %35)
  store %struct.ubifs_idx_node* %36, %struct.ubifs_idx_node** %6, align 8
  %37 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %6, align 8
  %38 = icmp ne %struct.ubifs_idx_node* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %2
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %71

42:                                               ; preds = %2
  %43 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %44 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %6, align 8
  %45 = load i32, i32* @UBIFS_IDX_NODE, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @ubifs_read_node(%struct.ubifs_info* %43, %struct.ubifs_idx_node* %44, i32 %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %67

53:                                               ; preds = %42
  %54 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %6, align 8
  %55 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le16_to_cpu(i32 %56)
  %58 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %11, align 8
  %59 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %6, align 8
  %61 = getelementptr inbounds %struct.ubifs_idx_node, %struct.ubifs_idx_node* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le64_to_cpu(i32 %63)
  %65 = load %struct.ubifs_debug_info*, %struct.ubifs_debug_info** %11, align 8
  %66 = getelementptr inbounds %struct.ubifs_debug_info, %struct.ubifs_debug_info* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %53, %52
  %68 = load %struct.ubifs_idx_node*, %struct.ubifs_idx_node** %6, align 8
  %69 = call i32 @kfree(%struct.ubifs_idx_node* %68)
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %39
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.ubifs_idx_node* @kmalloc(i32, i32) #2

declare dso_local i32 @ubifs_read_node(%struct.ubifs_info*, %struct.ubifs_idx_node*, i32, i32, i32, i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @le64_to_cpu(i32) #2

declare dso_local i32 @kfree(%struct.ubifs_idx_node*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
