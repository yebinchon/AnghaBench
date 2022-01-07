; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4acl.c_sort_pacl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4acl.c_sort_pacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ACL_USER = common dso_local global i64 0, align 8
@ACL_GROUP_OBJ = common dso_local global i64 0, align 8
@ACL_GROUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.posix_acl*)* @sort_pacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_pacl(%struct.posix_acl* %0) #0 {
  %2 = alloca %struct.posix_acl*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.posix_acl* %0, %struct.posix_acl** %2, align 8
  %5 = load %struct.posix_acl*, %struct.posix_acl** %2, align 8
  %6 = icmp ne %struct.posix_acl* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.posix_acl*, %struct.posix_acl** %2, align 8
  %9 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sle i32 %10, 4
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %1
  br label %67

13:                                               ; preds = %7
  store i32 1, i32* %3, align 4
  br label %14

14:                                               ; preds = %25, %13
  %15 = load %struct.posix_acl*, %struct.posix_acl** %2, align 8
  %16 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ACL_USER, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %14

28:                                               ; preds = %14
  %29 = load %struct.posix_acl*, %struct.posix_acl** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sub nsw i32 %30, 1
  %32 = call i32 @sort_pacl_range(%struct.posix_acl* %29, i32 1, i32 %31)
  %33 = load %struct.posix_acl*, %struct.posix_acl** %2, align 8
  %34 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ACL_GROUP_OBJ, align 8
  %42 = icmp ne i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %58, %28
  %48 = load %struct.posix_acl*, %struct.posix_acl** %2, align 8
  %49 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ACL_GROUP, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %47

61:                                               ; preds = %47
  %62 = load %struct.posix_acl*, %struct.posix_acl** %2, align 8
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %4, align 4
  %65 = sub nsw i32 %64, 1
  %66 = call i32 @sort_pacl_range(%struct.posix_acl* %62, i32 %63, i32 %65)
  br label %67

67:                                               ; preds = %61, %12
  ret void
}

declare dso_local i32 @sort_pacl_range(%struct.posix_acl*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
