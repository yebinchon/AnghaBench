; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit_tree.c_tag_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit_tree.c_tag_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32 }
%struct.audit_tree = type { i32, %struct.audit_chunk*, i32, i64 }
%struct.audit_chunk = type { i32, i32, %struct.node* }
%struct.node = type { i32, i32, %struct.audit_tree* }
%struct.fsnotify_mark = type { i32 }

@audit_tree_group = common dso_local global %struct.TYPE_3__* null, align 8
@hash_lock = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.audit_tree*)* @tag_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tag_chunk(%struct.inode* %0, %struct.audit_tree* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.audit_tree*, align 8
  %6 = alloca %struct.fsnotify_mark*, align 8
  %7 = alloca %struct.audit_chunk*, align 8
  %8 = alloca %struct.audit_chunk*, align 8
  %9 = alloca %struct.node*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.audit_tree* %1, %struct.audit_tree** %5, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @audit_tree_group, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @audit_tree_group, align 8
  %17 = call %struct.fsnotify_mark* @fsnotify_find_mark(i32* %15, %struct.TYPE_3__* %16)
  store %struct.fsnotify_mark* %17, %struct.fsnotify_mark** %6, align 8
  %18 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %6, align 8
  %19 = icmp ne %struct.fsnotify_mark* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %23 = call i32 @create_chunk(%struct.inode* %21, %struct.audit_tree* %22)
  store i32 %23, i32* %3, align 4
  br label %140

24:                                               ; preds = %2
  %25 = call i32 @spin_lock(i32* @hash_lock)
  %26 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %6, align 8
  %27 = call %struct.audit_chunk* @mark_chunk(%struct.fsnotify_mark* %26)
  store %struct.audit_chunk* %27, %struct.audit_chunk** %8, align 8
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %53, %24
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.audit_chunk*, %struct.audit_chunk** %8, align 8
  %31 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %28
  %35 = load %struct.audit_chunk*, %struct.audit_chunk** %8, align 8
  %36 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %35, i32 0, i32 2
  %37 = load %struct.node*, %struct.node** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.node, %struct.node* %37, i64 %39
  %41 = getelementptr inbounds %struct.node, %struct.node* %40, i32 0, i32 2
  %42 = load %struct.audit_tree*, %struct.audit_tree** %41, align 8
  %43 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %44 = icmp eq %struct.audit_tree* %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %34
  %46 = call i32 @spin_unlock(i32* @hash_lock)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @audit_tree_group, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %6, align 8
  %51 = call i32 @fsnotify_put_mark(%struct.fsnotify_mark* %50)
  store i32 0, i32* %3, align 4
  br label %140

52:                                               ; preds = %34
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %28

56:                                               ; preds = %28
  %57 = call i32 @spin_unlock(i32* @hash_lock)
  %58 = load %struct.audit_chunk*, %struct.audit_chunk** %8, align 8
  %59 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  %62 = call %struct.audit_chunk* @alloc_chunk(i32 %61)
  store %struct.audit_chunk* %62, %struct.audit_chunk** %7, align 8
  %63 = load %struct.audit_chunk*, %struct.audit_chunk** %7, align 8
  %64 = icmp ne %struct.audit_chunk* %63, null
  br i1 %64, label %73, label %65

65:                                               ; preds = %56
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @audit_tree_group, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %6, align 8
  %70 = call i32 @fsnotify_put_mark(%struct.fsnotify_mark* %69)
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %140

73:                                               ; preds = %56
  %74 = call i32 @spin_lock(i32* @hash_lock)
  %75 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %76 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %73
  %80 = call i32 @spin_unlock(i32* @hash_lock)
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** @audit_tree_group, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %6, align 8
  %85 = call i32 @fsnotify_put_mark(%struct.fsnotify_mark* %84)
  %86 = load %struct.audit_chunk*, %struct.audit_chunk** %7, align 8
  %87 = call i32 @kfree(%struct.audit_chunk* %86)
  store i32 0, i32* %3, align 4
  br label %140

88:                                               ; preds = %73
  %89 = load %struct.audit_chunk*, %struct.audit_chunk** %7, align 8
  %90 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %89, i32 0, i32 2
  %91 = load %struct.node*, %struct.node** %90, align 8
  %92 = load %struct.audit_chunk*, %struct.audit_chunk** %7, align 8
  %93 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.node, %struct.node* %91, i64 %96
  store %struct.node* %97, %struct.node** %9, align 8
  %98 = load %struct.audit_chunk*, %struct.audit_chunk** %7, align 8
  %99 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 %100, 1
  %102 = or i32 %101, -2147483648
  %103 = load %struct.node*, %struct.node** %9, align 8
  %104 = getelementptr inbounds %struct.node, %struct.node* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %106 = load %struct.node*, %struct.node** %9, align 8
  %107 = getelementptr inbounds %struct.node, %struct.node* %106, i32 0, i32 2
  store %struct.audit_tree* %105, %struct.audit_tree** %107, align 8
  %108 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %109 = call i32 @get_tree(%struct.audit_tree* %108)
  %110 = load %struct.node*, %struct.node** %9, align 8
  %111 = getelementptr inbounds %struct.node, %struct.node* %110, i32 0, i32 1
  %112 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %113 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %112, i32 0, i32 2
  %114 = call i32 @list_add(i32* %111, i32* %113)
  %115 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %116 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %115, i32 0, i32 1
  %117 = load %struct.audit_chunk*, %struct.audit_chunk** %116, align 8
  %118 = icmp ne %struct.audit_chunk* %117, null
  br i1 %118, label %128, label %119

119:                                              ; preds = %88
  %120 = load %struct.audit_chunk*, %struct.audit_chunk** %7, align 8
  %121 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %122 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %121, i32 0, i32 1
  store %struct.audit_chunk* %120, %struct.audit_chunk** %122, align 8
  %123 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %124 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %123, i32 0, i32 0
  %125 = load %struct.audit_chunk*, %struct.audit_chunk** %7, align 8
  %126 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %125, i32 0, i32 1
  %127 = call i32 @list_add(i32* %124, i32* %126)
  br label %128

128:                                              ; preds = %119, %88
  %129 = load %struct.audit_chunk*, %struct.audit_chunk** %7, align 8
  %130 = load %struct.audit_chunk*, %struct.audit_chunk** %8, align 8
  %131 = call i32 @replace_chunk(%struct.audit_chunk* %129, %struct.audit_chunk* %130)
  %132 = call i32 @spin_unlock(i32* @hash_lock)
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** @audit_tree_group, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %6, align 8
  %137 = call i32 @fsnotify_put_mark(%struct.fsnotify_mark* %136)
  %138 = load %struct.audit_chunk*, %struct.audit_chunk** %8, align 8
  %139 = call i32 @audit_mark_put_chunk(%struct.audit_chunk* %138)
  store i32 0, i32* %3, align 4
  br label %140

140:                                              ; preds = %128, %79, %65, %45, %20
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.fsnotify_mark* @fsnotify_find_mark(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @create_chunk(%struct.inode*, %struct.audit_tree*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.audit_chunk* @mark_chunk(%struct.fsnotify_mark*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fsnotify_put_mark(%struct.fsnotify_mark*) #1

declare dso_local %struct.audit_chunk* @alloc_chunk(i32) #1

declare dso_local i32 @kfree(%struct.audit_chunk*) #1

declare dso_local i32 @get_tree(%struct.audit_tree*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @replace_chunk(%struct.audit_chunk*, %struct.audit_chunk*) #1

declare dso_local i32 @audit_mark_put_chunk(%struct.audit_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
