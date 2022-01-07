; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_ns.c___aa_create_ns.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_ns.c___aa_create_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ns = type { i32, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.dentry = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to create interface for ns %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aa_ns* (%struct.aa_ns*, i8*, %struct.dentry*)* @__aa_create_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aa_ns* @__aa_create_ns(%struct.aa_ns* %0, i8* %1, %struct.dentry* %2) #0 {
  %4 = alloca %struct.aa_ns*, align 8
  %5 = alloca %struct.aa_ns*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.aa_ns*, align 8
  %9 = alloca i32, align 4
  store %struct.aa_ns* %0, %struct.aa_ns** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %10 = load %struct.aa_ns*, %struct.aa_ns** %5, align 8
  %11 = icmp ne %struct.aa_ns* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @AA_BUG(i32 %13)
  %15 = load i8*, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @AA_BUG(i32 %18)
  %20 = load %struct.aa_ns*, %struct.aa_ns** %5, align 8
  %21 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %20, i32 0, i32 0
  %22 = call i32 @mutex_is_locked(i32* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @AA_BUG(i32 %25)
  %27 = load %struct.aa_ns*, %struct.aa_ns** %5, align 8
  %28 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call %struct.aa_ns* @alloc_ns(i32 %30, i8* %31)
  store %struct.aa_ns* %32, %struct.aa_ns** %8, align 8
  %33 = load %struct.aa_ns*, %struct.aa_ns** %8, align 8
  %34 = icmp ne %struct.aa_ns* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.aa_ns* @ERR_PTR(i32 %37)
  store %struct.aa_ns* %38, %struct.aa_ns** %4, align 8
  br label %90

39:                                               ; preds = %3
  %40 = load %struct.aa_ns*, %struct.aa_ns** %5, align 8
  %41 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  %44 = load %struct.aa_ns*, %struct.aa_ns** %8, align 8
  %45 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %44, i32 0, i32 4
  store i64 %43, i64* %45, align 8
  %46 = load %struct.aa_ns*, %struct.aa_ns** %8, align 8
  %47 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %46, i32 0, i32 0
  %48 = load %struct.aa_ns*, %struct.aa_ns** %8, align 8
  %49 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @mutex_lock_nested(i32* %47, i64 %50)
  %52 = load %struct.aa_ns*, %struct.aa_ns** %8, align 8
  %53 = load %struct.aa_ns*, %struct.aa_ns** %5, align 8
  %54 = call i32 @ns_subns_dir(%struct.aa_ns* %53)
  %55 = load i8*, i8** %6, align 8
  %56 = load %struct.dentry*, %struct.dentry** %7, align 8
  %57 = call i32 @__aafs_ns_mkdir(%struct.aa_ns* %52, i32 %54, i8* %55, %struct.dentry* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %39
  %61 = load %struct.aa_ns*, %struct.aa_ns** %8, align 8
  %62 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @AA_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load %struct.aa_ns*, %struct.aa_ns** %8, align 8
  %67 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load %struct.aa_ns*, %struct.aa_ns** %8, align 8
  %70 = call i32 @aa_free_ns(%struct.aa_ns* %69)
  %71 = load i32, i32* %9, align 4
  %72 = call %struct.aa_ns* @ERR_PTR(i32 %71)
  store %struct.aa_ns* %72, %struct.aa_ns** %4, align 8
  br label %90

73:                                               ; preds = %39
  %74 = load %struct.aa_ns*, %struct.aa_ns** %5, align 8
  %75 = call i32 @aa_get_ns(%struct.aa_ns* %74)
  %76 = load %struct.aa_ns*, %struct.aa_ns** %8, align 8
  %77 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = load %struct.aa_ns*, %struct.aa_ns** %8, align 8
  %79 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load %struct.aa_ns*, %struct.aa_ns** %5, align 8
  %82 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %81, i32 0, i32 1
  %83 = call i32 @list_add_rcu(i32* %80, i32* %82)
  %84 = load %struct.aa_ns*, %struct.aa_ns** %8, align 8
  %85 = call i32 @aa_get_ns(%struct.aa_ns* %84)
  %86 = load %struct.aa_ns*, %struct.aa_ns** %8, align 8
  %87 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %86, i32 0, i32 0
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load %struct.aa_ns*, %struct.aa_ns** %8, align 8
  store %struct.aa_ns* %89, %struct.aa_ns** %4, align 8
  br label %90

90:                                               ; preds = %73, %60, %35
  %91 = load %struct.aa_ns*, %struct.aa_ns** %4, align 8
  ret %struct.aa_ns* %91
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local %struct.aa_ns* @alloc_ns(i32, i8*) #1

declare dso_local %struct.aa_ns* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock_nested(i32*, i64) #1

declare dso_local i32 @__aafs_ns_mkdir(%struct.aa_ns*, i32, i8*, %struct.dentry*) #1

declare dso_local i32 @ns_subns_dir(%struct.aa_ns*) #1

declare dso_local i32 @AA_ERROR(i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @aa_free_ns(%struct.aa_ns*) #1

declare dso_local i32 @aa_get_ns(%struct.aa_ns*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
