; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_cleanup_value_truncate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_xa_cleanup_value_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_xa_loc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"Partial truncate while %s xattr %.*s.  Leaking %u clusters and removing the entry\0A\00", align 1
@.str.1 = private unnamed_addr constant [105 x i8] c"Unable to allocate an external value for xattr %.*s safely.  Leaking %u clusters and removing the entry\0A\00", align 1
@.str.2 = private unnamed_addr constant [104 x i8] c"Unable to grow xattr %.*s safely.  %u new clusters have been added, but the value will not be modified\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_xa_loc*, i8*, i32)* @ocfs2_xa_cleanup_value_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_xa_cleanup_value_truncate(%struct.ocfs2_xa_loc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ocfs2_xa_loc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.ocfs2_xa_loc* %0, %struct.ocfs2_xa_loc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %10 = call i32 @ocfs2_xa_value_clusters(%struct.ocfs2_xa_loc* %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %12 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %13 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le16_to_cpu(i32 %16)
  %18 = call i8* @ocfs2_xa_offset_pointer(%struct.ocfs2_xa_loc* %11, i32 %17)
  store i8* %18, i8** %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %3
  %23 = load i32, i32* @ML_ERROR, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %26 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sub i32 %33, %34
  %36 = call i32 (i32, i8*, i8*, i8*, ...) @mlog(i32 %23, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %31, i8* %32, i32 %35)
  %37 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %38 = call i32 @ocfs2_xa_remove_entry(%struct.ocfs2_xa_loc* %37)
  br label %78

39:                                               ; preds = %3
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @ML_ERROR, align 4
  %44 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %45 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = sub i32 %52, %53
  %55 = call i32 (i32, i8*, i8*, i8*, ...) @mlog(i32 %43, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.1, i64 0, i64 0), i8* %50, i8* %51, i32 %54)
  %56 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %57 = call i32 @ocfs2_xa_remove_entry(%struct.ocfs2_xa_loc* %56)
  br label %77

58:                                               ; preds = %39
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ugt i32 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load i32, i32* @ML_ERROR, align 4
  %64 = load %struct.ocfs2_xa_loc*, %struct.ocfs2_xa_loc** %4, align 8
  %65 = getelementptr inbounds %struct.ocfs2_xa_loc, %struct.ocfs2_xa_loc* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %6, align 4
  %74 = sub i32 %72, %73
  %75 = call i32 (i32, i8*, i8*, i8*, ...) @mlog(i32 %63, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i8* %70, i8* %71, i32 %74)
  br label %76

76:                                               ; preds = %62, %58
  br label %77

77:                                               ; preds = %76, %42
  br label %78

78:                                               ; preds = %77, %22
  ret void
}

declare dso_local i32 @ocfs2_xa_value_clusters(%struct.ocfs2_xa_loc*) #1

declare dso_local i8* @ocfs2_xa_offset_pointer(%struct.ocfs2_xa_loc*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mlog(i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @ocfs2_xa_remove_entry(%struct.ocfs2_xa_loc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
