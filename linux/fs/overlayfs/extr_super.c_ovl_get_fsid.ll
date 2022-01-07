; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_get_fsid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_get_fsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ovl_fs = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.super_block* }
%struct.path = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.super_block* }

@.str = private unnamed_addr constant [91 x i8] c"overlayfs: %s uuid detected in lower fs '%pd2', falling back to index=off,nfs_export=off.\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"conflicting\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"overlayfs: failed to get anonymous bdev for lowerpath\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ovl_fs*, %struct.path*)* @ovl_get_fsid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_get_fsid(%struct.ovl_fs* %0, %struct.path* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ovl_fs*, align 8
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ovl_fs* %0, %struct.ovl_fs** %4, align 8
  store %struct.path* %1, %struct.path** %5, align 8
  %10 = load %struct.path*, %struct.path** %5, align 8
  %11 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %6, align 8
  %15 = load %struct.ovl_fs*, %struct.ovl_fs** %4, align 8
  %16 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %15, i32 0, i32 3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.ovl_fs*, %struct.ovl_fs** %4, align 8
  %21 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %20, i32 0, i32 3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.super_block*, %struct.super_block** %23, align 8
  %25 = load %struct.super_block*, %struct.super_block** %6, align 8
  %26 = icmp eq %struct.super_block* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %111

28:                                               ; preds = %19, %2
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %50, %28
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.ovl_fs*, %struct.ovl_fs** %4, align 8
  %32 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %29
  %36 = load %struct.ovl_fs*, %struct.ovl_fs** %4, align 8
  %37 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load %struct.super_block*, %struct.super_block** %42, align 8
  %44 = load %struct.super_block*, %struct.super_block** %6, align 8
  %45 = icmp eq %struct.super_block* %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load i32, i32* %7, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %111

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %29

53:                                               ; preds = %29
  %54 = load %struct.ovl_fs*, %struct.ovl_fs** %4, align 8
  %55 = load %struct.super_block*, %struct.super_block** %6, align 8
  %56 = getelementptr inbounds %struct.super_block, %struct.super_block* %55, i32 0, i32 0
  %57 = call i32 @ovl_lower_uuid_ok(%struct.ovl_fs* %54, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %76, label %59

59:                                               ; preds = %53
  %60 = load %struct.ovl_fs*, %struct.ovl_fs** %4, align 8
  %61 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load %struct.ovl_fs*, %struct.ovl_fs** %4, align 8
  %64 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  store i32 0, i32* %65, align 4
  %66 = load %struct.super_block*, %struct.super_block** %6, align 8
  %67 = getelementptr inbounds %struct.super_block, %struct.super_block* %66, i32 0, i32 0
  %68 = call i64 @uuid_is_null(i32* %67)
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  %72 = load %struct.path*, %struct.path** %5, align 8
  %73 = getelementptr inbounds %struct.path, %struct.path* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @pr_warn(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i8* %71, i32 %74)
  br label %76

76:                                               ; preds = %59, %53
  %77 = call i32 @get_anon_bdev(i32* %8)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = call i32 @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %3, align 4
  br label %111

83:                                               ; preds = %76
  %84 = load %struct.super_block*, %struct.super_block** %6, align 8
  %85 = load %struct.ovl_fs*, %struct.ovl_fs** %4, align 8
  %86 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %85, i32 0, i32 1
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = load %struct.ovl_fs*, %struct.ovl_fs** %4, align 8
  %89 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  store %struct.super_block* %84, %struct.super_block** %93, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.ovl_fs*, %struct.ovl_fs** %4, align 8
  %96 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %95, i32 0, i32 1
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = load %struct.ovl_fs*, %struct.ovl_fs** %4, align 8
  %99 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  store i32 %94, i32* %103, align 8
  %104 = load %struct.ovl_fs*, %struct.ovl_fs** %4, align 8
  %105 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add i32 %106, 1
  store i32 %107, i32* %105, align 8
  %108 = load %struct.ovl_fs*, %struct.ovl_fs** %4, align 8
  %109 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %83, %80, %46, %27
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @ovl_lower_uuid_ok(%struct.ovl_fs*, i32*) #1

declare dso_local i32 @pr_warn(i8*, i8*, i32) #1

declare dso_local i64 @uuid_is_null(i32*) #1

declare dso_local i32 @get_anon_bdev(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
