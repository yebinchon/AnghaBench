; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_mount.c_xfs_initialize_perag.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_mount.c_xfs_initialize_perag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_18__*, i64 }

@NULLAGNUMBER = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@KM_MAYFAIL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_initialize_perag(%struct.TYPE_18__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i64, i64* @NULLAGNUMBER, align 8
  store i64 %12, i64* %9, align 8
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %11, align 4
  store i64 0, i64* %8, align 8
  br label %15

15:                                               ; preds = %109, %3
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %112

19:                                               ; preds = %15
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call %struct.TYPE_17__* @xfs_perag_get(%struct.TYPE_18__* %20, i64 %21)
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %10, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %24 = icmp ne %struct.TYPE_17__* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %27 = call i32 @xfs_perag_put(%struct.TYPE_17__* %26)
  br label %109

28:                                               ; preds = %19
  %29 = load i32, i32* @KM_MAYFAIL, align 4
  %30 = call %struct.TYPE_17__* @kmem_zalloc(i32 56, i32 %29)
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %10, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %32 = icmp ne %struct.TYPE_17__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %135

34:                                               ; preds = %28
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 9
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 8
  store %struct.TYPE_18__* %38, %struct.TYPE_18__** %40, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 7
  %43 = call i32 @spin_lock_init(i32* %42)
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = call i32 @mutex_init(i32* %45)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 6
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = call i32 @INIT_RADIX_TREE(i32* %48, i32 %49)
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %52 = call i64 @xfs_buf_hash_init(%struct.TYPE_17__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %34
  br label %129

55:                                               ; preds = %34
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 5
  %58 = call i32 @init_waitqueue_head(i32* %57)
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 4
  %61 = call i32 @spin_lock_init(i32* %60)
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* @RB_ROOT, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @GFP_NOFS, align 4
  %68 = call i64 @radix_tree_preload(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %55
  br label %126

71:                                               ; preds = %55
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 2
  %74 = call i32 @spin_lock(i32* %73)
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = load i64, i64* %8, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %79 = call i64 @radix_tree_insert(i32* %76, i64 %77, %struct.TYPE_17__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %71
  %82 = call i32 @WARN_ON_ONCE(i32 1)
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = call i32 (...) @radix_tree_preload_end()
  %87 = load i32, i32* @EEXIST, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %11, align 4
  br label %126

89:                                               ; preds = %71
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 2
  %92 = call i32 @spin_unlock(i32* %91)
  %93 = call i32 (...) @radix_tree_preload_end()
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* @NULLAGNUMBER, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i64, i64* %8, align 8
  store i64 %98, i64* %9, align 8
  br label %99

99:                                               ; preds = %97, %89
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %101 = call i32 @xfs_iunlink_init(%struct.TYPE_17__* %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %126

105:                                              ; preds = %99
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 1
  %108 = call i32 @spin_lock_init(i32* %107)
  br label %109

109:                                              ; preds = %105, %25
  %110 = load i64, i64* %8, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %8, align 8
  br label %15

112:                                              ; preds = %15
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %114 = load i64, i64* %6, align 8
  %115 = call i64 @xfs_set_inode_alloc(%struct.TYPE_18__* %113, i64 %114)
  store i64 %115, i64* %8, align 8
  %116 = load i64*, i64** %7, align 8
  %117 = icmp ne i64* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load i64, i64* %8, align 8
  %120 = load i64*, i64** %7, align 8
  store i64 %119, i64* %120, align 8
  br label %121

121:                                              ; preds = %118, %112
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %123 = call i32 @xfs_prealloc_blocks(%struct.TYPE_18__* %122)
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  store i32 0, i32* %4, align 4
  br label %164

126:                                              ; preds = %104, %81, %70
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %128 = call i32 @xfs_buf_hash_destroy(%struct.TYPE_17__* %127)
  br label %129

129:                                              ; preds = %126, %54
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = call i32 @mutex_destroy(i32* %131)
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %134 = call i32 @kmem_free(%struct.TYPE_17__* %133)
  br label %135

135:                                              ; preds = %129, %33
  %136 = load i64, i64* %9, align 8
  store i64 %136, i64* %8, align 8
  br label %137

137:                                              ; preds = %159, %135
  %138 = load i64, i64* %8, align 8
  %139 = load i64, i64* %6, align 8
  %140 = icmp slt i64 %138, %139
  br i1 %140, label %141, label %162

141:                                              ; preds = %137
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = load i64, i64* %8, align 8
  %145 = call %struct.TYPE_17__* @radix_tree_delete(i32* %143, i64 %144)
  store %struct.TYPE_17__* %145, %struct.TYPE_17__** %10, align 8
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %147 = icmp ne %struct.TYPE_17__* %146, null
  br i1 %147, label %149, label %148

148:                                              ; preds = %141
  br label %162

149:                                              ; preds = %141
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %151 = call i32 @xfs_buf_hash_destroy(%struct.TYPE_17__* %150)
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %153 = call i32 @xfs_iunlink_destroy(%struct.TYPE_17__* %152)
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = call i32 @mutex_destroy(i32* %155)
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %158 = call i32 @kmem_free(%struct.TYPE_17__* %157)
  br label %159

159:                                              ; preds = %149
  %160 = load i64, i64* %8, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %8, align 8
  br label %137

162:                                              ; preds = %148, %137
  %163 = load i32, i32* %11, align 4
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %162, %121
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local %struct.TYPE_17__* @xfs_perag_get(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @xfs_perag_put(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i64 @xfs_buf_hash_init(%struct.TYPE_17__*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i64 @radix_tree_preload(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @radix_tree_insert(i32*, i64, %struct.TYPE_17__*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @radix_tree_preload_end(...) #1

declare dso_local i32 @xfs_iunlink_init(%struct.TYPE_17__*) #1

declare dso_local i64 @xfs_set_inode_alloc(%struct.TYPE_18__*, i64) #1

declare dso_local i32 @xfs_prealloc_blocks(%struct.TYPE_18__*) #1

declare dso_local i32 @xfs_buf_hash_destroy(%struct.TYPE_17__*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @radix_tree_delete(i32*, i64) #1

declare dso_local i32 @xfs_iunlink_destroy(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
