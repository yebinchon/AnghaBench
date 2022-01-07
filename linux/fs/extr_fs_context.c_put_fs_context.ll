; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs_context.c_put_fs_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs_context.c_put_fs_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { %struct.fs_context*, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i64, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 (%struct.fs_context*)* }
%struct.TYPE_4__ = type { %struct.super_block* }
%struct.super_block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @put_fs_context(%struct.fs_context* %0) #0 {
  %2 = alloca %struct.fs_context*, align 8
  %3 = alloca %struct.super_block*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %2, align 8
  %4 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %5 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %4, i32 0, i32 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %10 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %9, i32 0, i32 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %3, align 8
  %14 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %15 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %14, i32 0, i32 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = call i32 @dput(%struct.TYPE_4__* %16)
  %18 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %19 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %18, i32 0, i32 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %19, align 8
  %20 = load %struct.super_block*, %struct.super_block** %3, align 8
  %21 = call i32 @deactivate_super(%struct.super_block* %20)
  br label %22

22:                                               ; preds = %8, %1
  %23 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %24 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %22
  %28 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %29 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %28, i32 0, i32 6
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = icmp ne %struct.TYPE_3__* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %34 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %33, i32 0, i32 6
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (%struct.fs_context*)*, i32 (%struct.fs_context*)** %36, align 8
  %38 = icmp ne i32 (%struct.fs_context*)* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %41 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %40, i32 0, i32 6
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (%struct.fs_context*)*, i32 (%struct.fs_context*)** %43, align 8
  %45 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %46 = call i32 %44(%struct.fs_context* %45)
  br label %47

47:                                               ; preds = %39, %32, %27, %22
  %48 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %49 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %48, i32 0, i32 5
  %50 = call i32 @security_free_mnt_opts(i32* %49)
  %51 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %52 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @put_net(i32 %53)
  %55 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %56 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @put_user_ns(i32 %57)
  %59 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %60 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @put_cred(i32 %61)
  %63 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %64 = call i32 @put_fc_log(%struct.fs_context* %63)
  %65 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %66 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @put_filesystem(i32 %67)
  %69 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %70 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %69, i32 0, i32 0
  %71 = load %struct.fs_context*, %struct.fs_context** %70, align 8
  %72 = call i32 @kfree(%struct.fs_context* %71)
  %73 = load %struct.fs_context*, %struct.fs_context** %2, align 8
  %74 = call i32 @kfree(%struct.fs_context* %73)
  ret void
}

declare dso_local i32 @dput(%struct.TYPE_4__*) #1

declare dso_local i32 @deactivate_super(%struct.super_block*) #1

declare dso_local i32 @security_free_mnt_opts(i32*) #1

declare dso_local i32 @put_net(i32) #1

declare dso_local i32 @put_user_ns(i32) #1

declare dso_local i32 @put_cred(i32) #1

declare dso_local i32 @put_fc_log(%struct.fs_context*) #1

declare dso_local i32 @put_filesystem(i32) #1

declare dso_local i32 @kfree(%struct.fs_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
