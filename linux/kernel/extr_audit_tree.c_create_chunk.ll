; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit_tree.c_create_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit_tree.c_create_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i32 }
%struct.audit_tree = type { i32, %struct.audit_chunk*, i32, i64 }
%struct.audit_chunk = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, %struct.audit_tree* }
%struct.fsnotify_mark = type { i32 }

@audit_tree_group = common dso_local global %struct.TYPE_4__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@hash_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.audit_tree*)* @create_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_chunk(%struct.inode* %0, %struct.audit_tree* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.audit_tree*, align 8
  %6 = alloca %struct.fsnotify_mark*, align 8
  %7 = alloca %struct.audit_chunk*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.audit_tree* %1, %struct.audit_tree** %5, align 8
  %8 = call %struct.audit_chunk* @alloc_chunk(i32 1)
  store %struct.audit_chunk* %8, %struct.audit_chunk** %7, align 8
  %9 = load %struct.audit_chunk*, %struct.audit_chunk** %7, align 8
  %10 = icmp ne %struct.audit_chunk* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @audit_tree_group, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i32 @mutex_unlock(i32* %13)
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %114

17:                                               ; preds = %2
  %18 = call %struct.fsnotify_mark* (...) @alloc_mark()
  store %struct.fsnotify_mark* %18, %struct.fsnotify_mark** %6, align 8
  %19 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %6, align 8
  %20 = icmp ne %struct.fsnotify_mark* %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @audit_tree_group, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load %struct.audit_chunk*, %struct.audit_chunk** %7, align 8
  %26 = call i32 @kfree(%struct.audit_chunk* %25)
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %114

29:                                               ; preds = %17
  %30 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %6, align 8
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = call i64 @fsnotify_add_inode_mark_locked(%struct.fsnotify_mark* %30, %struct.inode* %31, i32 0)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @audit_tree_group, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %6, align 8
  %39 = call i32 @fsnotify_put_mark(%struct.fsnotify_mark* %38)
  %40 = load %struct.audit_chunk*, %struct.audit_chunk** %7, align 8
  %41 = call i32 @kfree(%struct.audit_chunk* %40)
  %42 = load i32, i32* @ENOSPC, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %114

44:                                               ; preds = %29
  %45 = call i32 @spin_lock(i32* @hash_lock)
  %46 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %47 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = call i32 @spin_unlock(i32* @hash_lock)
  %52 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %6, align 8
  %53 = call i32 @fsnotify_detach_mark(%struct.fsnotify_mark* %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @audit_tree_group, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %6, align 8
  %58 = call i32 @fsnotify_free_mark(%struct.fsnotify_mark* %57)
  %59 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %6, align 8
  %60 = call i32 @fsnotify_put_mark(%struct.fsnotify_mark* %59)
  %61 = load %struct.audit_chunk*, %struct.audit_chunk** %7, align 8
  %62 = call i32 @kfree(%struct.audit_chunk* %61)
  store i32 0, i32* %3, align 4
  br label %114

63:                                               ; preds = %44
  %64 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %6, align 8
  %65 = load %struct.audit_chunk*, %struct.audit_chunk** %7, align 8
  %66 = call i32 @replace_mark_chunk(%struct.fsnotify_mark* %64, %struct.audit_chunk* %65)
  %67 = load %struct.audit_chunk*, %struct.audit_chunk** %7, align 8
  %68 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %67, i32 0, i32 2
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 -2147483648, i32* %71, align 8
  %72 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %73 = load %struct.audit_chunk*, %struct.audit_chunk** %7, align 8
  %74 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %73, i32 0, i32 2
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  store %struct.audit_tree* %72, %struct.audit_tree** %77, align 8
  %78 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %79 = call i32 @get_tree(%struct.audit_tree* %78)
  %80 = load %struct.audit_chunk*, %struct.audit_chunk** %7, align 8
  %81 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %80, i32 0, i32 2
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %86 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %85, i32 0, i32 2
  %87 = call i32 @list_add(i32* %84, i32* %86)
  %88 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %89 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %88, i32 0, i32 1
  %90 = load %struct.audit_chunk*, %struct.audit_chunk** %89, align 8
  %91 = icmp ne %struct.audit_chunk* %90, null
  br i1 %91, label %101, label %92

92:                                               ; preds = %63
  %93 = load %struct.audit_chunk*, %struct.audit_chunk** %7, align 8
  %94 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %95 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %94, i32 0, i32 1
  store %struct.audit_chunk* %93, %struct.audit_chunk** %95, align 8
  %96 = load %struct.audit_tree*, %struct.audit_tree** %5, align 8
  %97 = getelementptr inbounds %struct.audit_tree, %struct.audit_tree* %96, i32 0, i32 0
  %98 = load %struct.audit_chunk*, %struct.audit_chunk** %7, align 8
  %99 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %98, i32 0, i32 1
  %100 = call i32 @list_add(i32* %97, i32* %99)
  br label %101

101:                                              ; preds = %92, %63
  %102 = load %struct.inode*, %struct.inode** %4, align 8
  %103 = call i32 @inode_to_key(%struct.inode* %102)
  %104 = load %struct.audit_chunk*, %struct.audit_chunk** %7, align 8
  %105 = getelementptr inbounds %struct.audit_chunk, %struct.audit_chunk* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.audit_chunk*, %struct.audit_chunk** %7, align 8
  %107 = call i32 @insert_hash(%struct.audit_chunk* %106)
  %108 = call i32 @spin_unlock(i32* @hash_lock)
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** @audit_tree_group, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = call i32 @mutex_unlock(i32* %110)
  %112 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %6, align 8
  %113 = call i32 @fsnotify_put_mark(%struct.fsnotify_mark* %112)
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %101, %50, %34, %21, %11
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.audit_chunk* @alloc_chunk(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.fsnotify_mark* @alloc_mark(...) #1

declare dso_local i32 @kfree(%struct.audit_chunk*) #1

declare dso_local i64 @fsnotify_add_inode_mark_locked(%struct.fsnotify_mark*, %struct.inode*, i32) #1

declare dso_local i32 @fsnotify_put_mark(%struct.fsnotify_mark*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fsnotify_detach_mark(%struct.fsnotify_mark*) #1

declare dso_local i32 @fsnotify_free_mark(%struct.fsnotify_mark*) #1

declare dso_local i32 @replace_mark_chunk(%struct.fsnotify_mark*, %struct.audit_chunk*) #1

declare dso_local i32 @get_tree(%struct.audit_tree*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @inode_to_key(%struct.inode*) #1

declare dso_local i32 @insert_hash(%struct.audit_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
