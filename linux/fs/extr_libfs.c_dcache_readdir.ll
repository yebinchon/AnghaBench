; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_libfs.c_dcache_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_libfs.c_dcache_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.dentry*, %struct.TYPE_5__ }
%struct.dentry = type { i32, %struct.list_head, %struct.TYPE_6__, %struct.list_head }
%struct.TYPE_6__ = type { i32, i32 }
%struct.list_head = type { i32 }
%struct.TYPE_5__ = type { %struct.dentry* }
%struct.dir_context = type { i32 }
%struct.TYPE_7__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcache_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.list_head*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.dentry*, %struct.dentry** %13, align 8
  store %struct.dentry* %14, %struct.dentry** %6, align 8
  %15 = load %struct.file*, %struct.file** %4, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 0
  %17 = load %struct.dentry*, %struct.dentry** %16, align 8
  store %struct.dentry* %17, %struct.dentry** %7, align 8
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 3
  store %struct.list_head* %19, %struct.list_head** %8, align 8
  store %struct.dentry* null, %struct.dentry** %9, align 8
  %20 = load %struct.file*, %struct.file** %4, align 8
  %21 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %22 = call i32 @dir_emit_dots(%struct.file* %20, %struct.dir_context* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %98

25:                                               ; preds = %2
  %26 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %27 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load %struct.list_head*, %struct.list_head** %8, align 8
  store %struct.list_head* %31, %struct.list_head** %10, align 8
  br label %42

32:                                               ; preds = %25
  %33 = load %struct.dentry*, %struct.dentry** %7, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 1
  %35 = call i32 @list_empty(%struct.list_head* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load %struct.dentry*, %struct.dentry** %7, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 1
  store %struct.list_head* %39, %struct.list_head** %10, align 8
  br label %41

40:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %98

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %41, %30
  br label %43

43:                                               ; preds = %69, %42
  %44 = load %struct.dentry*, %struct.dentry** %7, align 8
  %45 = load %struct.list_head*, %struct.list_head** %10, align 8
  %46 = load %struct.dentry*, %struct.dentry** %9, align 8
  %47 = call %struct.dentry* @scan_positives(%struct.dentry* %44, %struct.list_head* %45, i32 1, %struct.dentry* %46)
  store %struct.dentry* %47, %struct.dentry** %9, align 8
  %48 = icmp ne %struct.dentry* %47, null
  br i1 %48, label %49, label %76

49:                                               ; preds = %43
  %50 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %51 = load %struct.dentry*, %struct.dentry** %9, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.dentry*, %struct.dentry** %9, align 8
  %56 = getelementptr inbounds %struct.dentry, %struct.dentry* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.dentry*, %struct.dentry** %9, align 8
  %60 = call %struct.TYPE_7__* @d_inode(%struct.dentry* %59)
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.dentry*, %struct.dentry** %9, align 8
  %64 = call %struct.TYPE_7__* @d_inode(%struct.dentry* %63)
  %65 = call i32 @dt_type(%struct.TYPE_7__* %64)
  %66 = call i32 @dir_emit(%struct.dir_context* %50, i32 %54, i32 %58, i32 %62, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %49
  br label %76

69:                                               ; preds = %49
  %70 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %71 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.dentry*, %struct.dentry** %9, align 8
  %75 = getelementptr inbounds %struct.dentry, %struct.dentry* %74, i32 0, i32 1
  store %struct.list_head* %75, %struct.list_head** %10, align 8
  br label %43

76:                                               ; preds = %68, %43
  %77 = load %struct.dentry*, %struct.dentry** %6, align 8
  %78 = getelementptr inbounds %struct.dentry, %struct.dentry* %77, i32 0, i32 0
  %79 = call i32 @spin_lock(i32* %78)
  %80 = load %struct.dentry*, %struct.dentry** %9, align 8
  %81 = icmp ne %struct.dentry* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %struct.dentry*, %struct.dentry** %7, align 8
  %84 = getelementptr inbounds %struct.dentry, %struct.dentry* %83, i32 0, i32 1
  %85 = load %struct.dentry*, %struct.dentry** %9, align 8
  %86 = getelementptr inbounds %struct.dentry, %struct.dentry* %85, i32 0, i32 1
  %87 = call i32 @list_move_tail(%struct.list_head* %84, %struct.list_head* %86)
  br label %92

88:                                               ; preds = %76
  %89 = load %struct.dentry*, %struct.dentry** %7, align 8
  %90 = getelementptr inbounds %struct.dentry, %struct.dentry* %89, i32 0, i32 1
  %91 = call i32 @list_del_init(%struct.list_head* %90)
  br label %92

92:                                               ; preds = %88, %82
  %93 = load %struct.dentry*, %struct.dentry** %6, align 8
  %94 = getelementptr inbounds %struct.dentry, %struct.dentry* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock(i32* %94)
  %96 = load %struct.dentry*, %struct.dentry** %9, align 8
  %97 = call i32 @dput(%struct.dentry* %96)
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %92, %40, %24
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @dir_emit_dots(%struct.file*, %struct.dir_context*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local %struct.dentry* @scan_positives(%struct.dentry*, %struct.list_head*, i32, %struct.dentry*) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @dt_type(%struct.TYPE_7__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_move_tail(%struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @list_del_init(%struct.list_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
