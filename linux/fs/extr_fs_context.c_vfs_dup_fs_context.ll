; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs_context.c_vfs_dup_fs_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs_context.c_vfs_dup_fs_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.fs_context*, %struct.fs_context*)* }
%struct.TYPE_3__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fs_context* @vfs_dup_fs_context(%struct.fs_context* %0) #0 {
  %2 = alloca %struct.fs_context*, align 8
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca %struct.fs_context*, align 8
  %5 = alloca i32, align 4
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %6 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %7 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)** %9, align 8
  %11 = icmp ne i32 (%struct.fs_context*, %struct.fs_context*)* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EOPNOTSUPP, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.fs_context* @ERR_PTR(i32 %14)
  store %struct.fs_context* %15, %struct.fs_context** %2, align 8
  br label %90

16:                                               ; preds = %1
  %17 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.fs_context* @kmemdup(%struct.fs_context* %17, i32 72, i32 %18)
  store %struct.fs_context* %19, %struct.fs_context** %4, align 8
  %20 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %21 = icmp ne %struct.fs_context* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.fs_context* @ERR_PTR(i32 %24)
  store %struct.fs_context* %25, %struct.fs_context** %2, align 8
  br label %90

26:                                               ; preds = %16
  %27 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %28 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %27, i32 0, i32 10
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %31 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %30, i32 0, i32 9
  store i32* null, i32** %31, align 8
  %32 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %33 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %32, i32 0, i32 8
  store i32* null, i32** %33, align 8
  %34 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %35 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %34, i32 0, i32 7
  store i32* null, i32** %35, align 8
  %36 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %37 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %36, i32 0, i32 6
  store i32* null, i32** %37, align 8
  %38 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %39 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @get_filesystem(i32 %40)
  %42 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %43 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @get_net(i32 %44)
  %46 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %47 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @get_user_ns(i32 %48)
  %50 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %51 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @get_cred(i32 %52)
  %54 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %55 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = icmp ne %struct.TYPE_3__* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %26
  %59 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %60 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = call i32 @refcount_inc(i32* %62)
  br label %64

64:                                               ; preds = %58, %26
  %65 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %66 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32 (%struct.fs_context*, %struct.fs_context*)*, i32 (%struct.fs_context*, %struct.fs_context*)** %68, align 8
  %70 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %71 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %72 = call i32 %69(%struct.fs_context* %70, %struct.fs_context* %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %85

76:                                               ; preds = %64
  %77 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %78 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %79 = call i32 @security_fs_context_dup(%struct.fs_context* %77, %struct.fs_context* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %85

83:                                               ; preds = %76
  %84 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  store %struct.fs_context* %84, %struct.fs_context** %2, align 8
  br label %90

85:                                               ; preds = %82, %75
  %86 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %87 = call i32 @put_fs_context(%struct.fs_context* %86)
  %88 = load i32, i32* %5, align 4
  %89 = call %struct.fs_context* @ERR_PTR(i32 %88)
  store %struct.fs_context* %89, %struct.fs_context** %2, align 8
  br label %90

90:                                               ; preds = %85, %83, %22, %12
  %91 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  ret %struct.fs_context* %91
}

declare dso_local %struct.fs_context* @ERR_PTR(i32) #1

declare dso_local %struct.fs_context* @kmemdup(%struct.fs_context*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @get_filesystem(i32) #1

declare dso_local i32 @get_net(i32) #1

declare dso_local i32 @get_user_ns(i32) #1

declare dso_local i32 @get_cred(i32) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @security_fs_context_dup(%struct.fs_context*, %struct.fs_context*) #1

declare dso_local i32 @put_fs_context(%struct.fs_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
