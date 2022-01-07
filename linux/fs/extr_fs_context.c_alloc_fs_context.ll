; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs_context.c_alloc_fs_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs_context.c_alloc_fs_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.fs_context = type { i32, i32, i32, i32, %struct.TYPE_8__*, i32, i8*, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_8__ = type { i32 (%struct.fs_context*)* }
%struct.TYPE_9__ = type { i32 }
%struct.file_system_type = type { i32 }
%struct.dentry = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fs_context* (%struct.file_system_type*, %struct.dentry*, i32, i32, i32)* @alloc_fs_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fs_context* @alloc_fs_context(%struct.file_system_type* %0, %struct.dentry* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fs_context*, align 8
  %7 = alloca %struct.file_system_type*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32 (%struct.fs_context*)*, align 8
  %13 = alloca %struct.fs_context*, align 8
  %14 = alloca i32, align 4
  store %struct.file_system_type* %0, %struct.file_system_type** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.fs_context* @kzalloc(i32 56, i32 %17)
  store %struct.fs_context* %18, %struct.fs_context** %13, align 8
  %19 = load %struct.fs_context*, %struct.fs_context** %13, align 8
  %20 = icmp ne %struct.fs_context* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.fs_context* @ERR_PTR(i32 %23)
  store %struct.fs_context* %24, %struct.fs_context** %6, align 8
  br label %115

25:                                               ; preds = %5
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.fs_context*, %struct.fs_context** %13, align 8
  %28 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.fs_context*, %struct.fs_context** %13, align 8
  %31 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.fs_context*, %struct.fs_context** %13, align 8
  %34 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.file_system_type*, %struct.file_system_type** %7, align 8
  %36 = call %struct.TYPE_8__* @get_filesystem(%struct.file_system_type* %35)
  %37 = load %struct.fs_context*, %struct.fs_context** %13, align 8
  %38 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %37, i32 0, i32 4
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %38, align 8
  %39 = call %struct.TYPE_9__* (...) @get_current_cred()
  %40 = load %struct.fs_context*, %struct.fs_context** %13, align 8
  %41 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %40, i32 0, i32 7
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %41, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @get_net(i32 %46)
  %48 = load %struct.fs_context*, %struct.fs_context** %13, align 8
  %49 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %48, i32 0, i32 9
  store i32 %47, i32* %49, align 4
  %50 = load %struct.fs_context*, %struct.fs_context** %13, align 8
  %51 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %50, i32 0, i32 8
  %52 = call i32 @mutex_init(i32* %51)
  %53 = load i32, i32* %11, align 4
  switch i32 %53, label %90 [
    i32 130, label %54
    i32 128, label %63
    i32 129, label %72
  ]

54:                                               ; preds = %25
  %55 = load %struct.fs_context*, %struct.fs_context** %13, align 8
  %56 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %55, i32 0, i32 7
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @get_user_ns(i32 %59)
  %61 = load %struct.fs_context*, %struct.fs_context** %13, align 8
  %62 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %61, i32 0, i32 6
  store i8* %60, i8** %62, align 8
  br label %90

63:                                               ; preds = %25
  %64 = load %struct.dentry*, %struct.dentry** %8, align 8
  %65 = getelementptr inbounds %struct.dentry, %struct.dentry* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @get_user_ns(i32 %68)
  %70 = load %struct.fs_context*, %struct.fs_context** %13, align 8
  %71 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %70, i32 0, i32 6
  store i8* %69, i8** %71, align 8
  br label %90

72:                                               ; preds = %25
  %73 = load %struct.dentry*, %struct.dentry** %8, align 8
  %74 = getelementptr inbounds %struct.dentry, %struct.dentry* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = call i32 @atomic_inc(i32* %76)
  %78 = load %struct.dentry*, %struct.dentry** %8, align 8
  %79 = getelementptr inbounds %struct.dentry, %struct.dentry* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @get_user_ns(i32 %82)
  %84 = load %struct.fs_context*, %struct.fs_context** %13, align 8
  %85 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %84, i32 0, i32 6
  store i8* %83, i8** %85, align 8
  %86 = load %struct.dentry*, %struct.dentry** %8, align 8
  %87 = call i32 @dget(%struct.dentry* %86)
  %88 = load %struct.fs_context*, %struct.fs_context** %13, align 8
  %89 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %25, %72, %63, %54
  %91 = load %struct.fs_context*, %struct.fs_context** %13, align 8
  %92 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %91, i32 0, i32 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32 (%struct.fs_context*)*, i32 (%struct.fs_context*)** %94, align 8
  store i32 (%struct.fs_context*)* %95, i32 (%struct.fs_context*)** %12, align 8
  %96 = load i32 (%struct.fs_context*)*, i32 (%struct.fs_context*)** %12, align 8
  %97 = icmp ne i32 (%struct.fs_context*)* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %90
  store i32 (%struct.fs_context*)* @legacy_init_fs_context, i32 (%struct.fs_context*)** %12, align 8
  br label %99

99:                                               ; preds = %98, %90
  %100 = load i32 (%struct.fs_context*)*, i32 (%struct.fs_context*)** %12, align 8
  %101 = load %struct.fs_context*, %struct.fs_context** %13, align 8
  %102 = call i32 %100(%struct.fs_context* %101)
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %14, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %99
  br label %110

106:                                              ; preds = %99
  %107 = load %struct.fs_context*, %struct.fs_context** %13, align 8
  %108 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %107, i32 0, i32 3
  store i32 1, i32* %108, align 4
  %109 = load %struct.fs_context*, %struct.fs_context** %13, align 8
  store %struct.fs_context* %109, %struct.fs_context** %6, align 8
  br label %115

110:                                              ; preds = %105
  %111 = load %struct.fs_context*, %struct.fs_context** %13, align 8
  %112 = call i32 @put_fs_context(%struct.fs_context* %111)
  %113 = load i32, i32* %14, align 4
  %114 = call %struct.fs_context* @ERR_PTR(i32 %113)
  store %struct.fs_context* %114, %struct.fs_context** %6, align 8
  br label %115

115:                                              ; preds = %110, %106, %21
  %116 = load %struct.fs_context*, %struct.fs_context** %6, align 8
  ret %struct.fs_context* %116
}

declare dso_local %struct.fs_context* @kzalloc(i32, i32) #1

declare dso_local %struct.fs_context* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_8__* @get_filesystem(%struct.file_system_type*) #1

declare dso_local %struct.TYPE_9__* @get_current_cred(...) #1

declare dso_local i32 @get_net(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @get_user_ns(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @legacy_init_fs_context(%struct.fs_context*) #1

declare dso_local i32 @put_fs_context(%struct.fs_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
