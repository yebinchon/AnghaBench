; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs_common/extr_nfsacl.c_cmp_acl_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs_common/extr_nfsacl.c_cmp_acl_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl_entry = type { i64, i32, i32 }

@ACL_USER = common dso_local global i64 0, align 8
@ACL_GROUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmp_acl_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_acl_entry(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.posix_acl_entry*, align 8
  %7 = alloca %struct.posix_acl_entry*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.posix_acl_entry*
  store %struct.posix_acl_entry* %9, %struct.posix_acl_entry** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.posix_acl_entry*
  store %struct.posix_acl_entry* %11, %struct.posix_acl_entry** %7, align 8
  %12 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %13 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %16 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %21 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %24 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %93

28:                                               ; preds = %2
  %29 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %30 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ACL_USER, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %36 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %39 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @uid_gt(i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %93

44:                                               ; preds = %34, %28
  %45 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %46 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ACL_USER, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %44
  %51 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %52 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %55 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @uid_lt(i32 %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  store i32 -1, i32* %3, align 4
  br label %93

60:                                               ; preds = %50, %44
  %61 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %62 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ACL_GROUP, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %68 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %71 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @gid_gt(i32 %69, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  store i32 1, i32* %3, align 4
  br label %93

76:                                               ; preds = %66, %60
  %77 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %78 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ACL_GROUP, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %6, align 8
  %84 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %7, align 8
  %87 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @gid_lt(i32 %85, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  store i32 -1, i32* %3, align 4
  br label %93

92:                                               ; preds = %82, %76
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %91, %75, %59, %43, %19
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @uid_gt(i32, i32) #1

declare dso_local i64 @uid_lt(i32, i32) #1

declare dso_local i64 @gid_gt(i32, i32) #1

declare dso_local i64 @gid_lt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
