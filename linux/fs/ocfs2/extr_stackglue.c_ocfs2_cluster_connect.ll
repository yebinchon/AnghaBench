; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_stackglue.c_ocfs2_cluster_connect.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_stackglue.c_ocfs2_cluster_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ocfs2_cluster_connection*)* }
%struct.ocfs2_cluster_connection = type { i32, i32, void (i32, i8*)*, i32, %struct.ocfs2_locking_protocol*, i8*, i32, i32 }
%struct.ocfs2_locking_protocol = type { i32 }

@GROUP_NAME_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@locking_max_version = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CLUSTER_NAME_MAX = common dso_local global i32 0, align 4
@active_stack = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_cluster_connect(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, %struct.ocfs2_locking_protocol* %5, void (i32, i8*)* %6, i8* %7, %struct.ocfs2_cluster_connection** %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ocfs2_locking_protocol*, align 8
  %16 = alloca void (i32, i8*)*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.ocfs2_cluster_connection**, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ocfs2_cluster_connection*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store %struct.ocfs2_locking_protocol* %5, %struct.ocfs2_locking_protocol** %15, align 8
  store void (i32, i8*)* %6, void (i32, i8*)** %16, align 8
  store i8* %7, i8** %17, align 8
  store %struct.ocfs2_cluster_connection** %8, %struct.ocfs2_cluster_connection*** %18, align 8
  store i32 0, i32* %19, align 4
  %21 = load i8*, i8** %13, align 8
  %22 = icmp eq i8* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.ocfs2_cluster_connection**, %struct.ocfs2_cluster_connection*** %18, align 8
  %26 = icmp eq %struct.ocfs2_cluster_connection** %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load void (i32, i8*)*, void (i32, i8*)** %16, align 8
  %30 = icmp eq void (i32, i8*)* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @GROUP_NAME_MAX, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %9
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %19, align 4
  br label %121

39:                                               ; preds = %9
  %40 = load %struct.ocfs2_locking_protocol*, %struct.ocfs2_locking_protocol** %15, align 8
  %41 = getelementptr inbounds %struct.ocfs2_locking_protocol, %struct.ocfs2_locking_protocol* %40, i32 0, i32 0
  %42 = call i64 @memcmp(i32* %41, i32* @locking_max_version, i32 4)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %19, align 4
  br label %121

47:                                               ; preds = %39
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.ocfs2_cluster_connection* @kzalloc(i32 48, i32 %48)
  store %struct.ocfs2_cluster_connection* %49, %struct.ocfs2_cluster_connection** %20, align 8
  %50 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %20, align 8
  %51 = icmp ne %struct.ocfs2_cluster_connection* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %19, align 4
  br label %121

55:                                               ; preds = %47
  %56 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %20, align 8
  %57 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %13, align 8
  %60 = load i32, i32* @GROUP_NAME_MAX, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i32 @strlcpy(i32 %58, i8* %59, i32 %61)
  %63 = load i32, i32* %14, align 4
  %64 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %20, align 8
  %65 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %55
  %69 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %20, align 8
  %70 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = load i32, i32* @CLUSTER_NAME_MAX, align 4
  %74 = add nsw i32 %73, 1
  %75 = call i32 @strlcpy(i32 %71, i8* %72, i32 %74)
  br label %76

76:                                               ; preds = %68, %55
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %20, align 8
  %79 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load void (i32, i8*)*, void (i32, i8*)** %16, align 8
  %81 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %20, align 8
  %82 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %81, i32 0, i32 2
  store void (i32, i8*)* %80, void (i32, i8*)** %82, align 8
  %83 = load i8*, i8** %17, align 8
  %84 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %20, align 8
  %85 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  %86 = load %struct.ocfs2_locking_protocol*, %struct.ocfs2_locking_protocol** %15, align 8
  %87 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %20, align 8
  %88 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %87, i32 0, i32 4
  store %struct.ocfs2_locking_protocol* %86, %struct.ocfs2_locking_protocol** %88, align 8
  %89 = load %struct.ocfs2_locking_protocol*, %struct.ocfs2_locking_protocol** %15, align 8
  %90 = getelementptr inbounds %struct.ocfs2_locking_protocol, %struct.ocfs2_locking_protocol* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %20, align 8
  %93 = getelementptr inbounds %struct.ocfs2_cluster_connection, %struct.ocfs2_cluster_connection* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = call i32 @ocfs2_stack_driver_get(i8* %94)
  store i32 %95, i32* %19, align 4
  %96 = load i32, i32* %19, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %76
  br label %114

99:                                               ; preds = %76
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** @active_stack, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32 (%struct.ocfs2_cluster_connection*)*, i32 (%struct.ocfs2_cluster_connection*)** %103, align 8
  %105 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %20, align 8
  %106 = call i32 %104(%struct.ocfs2_cluster_connection* %105)
  store i32 %106, i32* %19, align 4
  %107 = load i32, i32* %19, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %99
  %110 = call i32 (...) @ocfs2_stack_driver_put()
  br label %114

111:                                              ; preds = %99
  %112 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %20, align 8
  %113 = load %struct.ocfs2_cluster_connection**, %struct.ocfs2_cluster_connection*** %18, align 8
  store %struct.ocfs2_cluster_connection* %112, %struct.ocfs2_cluster_connection** %113, align 8
  br label %114

114:                                              ; preds = %111, %109, %98
  %115 = load i32, i32* %19, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %20, align 8
  %119 = call i32 @kfree(%struct.ocfs2_cluster_connection* %118)
  br label %120

120:                                              ; preds = %117, %114
  br label %121

121:                                              ; preds = %120, %52, %44, %36
  %122 = load i32, i32* %19, align 4
  ret i32 %122
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local %struct.ocfs2_cluster_connection* @kzalloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @ocfs2_stack_driver_get(i8*) #1

declare dso_local i32 @ocfs2_stack_driver_put(...) #1

declare dso_local i32 @kfree(%struct.ocfs2_cluster_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
