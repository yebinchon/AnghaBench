; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_posix_acl.c_posix_acl_fix_xattr_userns.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_posix_acl.c_posix_acl_fix_xattr_userns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_namespace = type { i32 }
%struct.posix_acl_xattr_header = type { i64 }
%struct.posix_acl_xattr_entry = type { i64, i32 }

@POSIX_ACL_XATTR_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.user_namespace*, %struct.user_namespace*, i8*, i64)* @posix_acl_fix_xattr_userns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @posix_acl_fix_xattr_userns(%struct.user_namespace* %0, %struct.user_namespace* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.user_namespace*, align 8
  %6 = alloca %struct.user_namespace*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.posix_acl_xattr_header*, align 8
  %10 = alloca %struct.posix_acl_xattr_entry*, align 8
  %11 = alloca %struct.posix_acl_xattr_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.user_namespace* %0, %struct.user_namespace** %5, align 8
  store %struct.user_namespace* %1, %struct.user_namespace** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.posix_acl_xattr_header*
  store %struct.posix_acl_xattr_header* %16, %struct.posix_acl_xattr_header** %9, align 8
  %17 = load %struct.posix_acl_xattr_header*, %struct.posix_acl_xattr_header** %9, align 8
  %18 = getelementptr inbounds %struct.posix_acl_xattr_header, %struct.posix_acl_xattr_header* %17, i64 1
  %19 = bitcast %struct.posix_acl_xattr_header* %18 to i8*
  %20 = bitcast i8* %19 to %struct.posix_acl_xattr_entry*
  store %struct.posix_acl_xattr_entry* %20, %struct.posix_acl_xattr_entry** %10, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %91

24:                                               ; preds = %4
  %25 = load i64, i64* %8, align 8
  %26 = icmp ult i64 %25, 8
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %91

28:                                               ; preds = %24
  %29 = load %struct.posix_acl_xattr_header*, %struct.posix_acl_xattr_header** %9, align 8
  %30 = getelementptr inbounds %struct.posix_acl_xattr_header, %struct.posix_acl_xattr_header* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @POSIX_ACL_XATTR_VERSION, align 4
  %33 = call i64 @cpu_to_le32(i32 %32)
  %34 = icmp ne i64 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %91

36:                                               ; preds = %28
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @posix_acl_xattr_count(i64 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %91

42:                                               ; preds = %36
  %43 = load i32, i32* %12, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %91

46:                                               ; preds = %42
  %47 = load %struct.posix_acl_xattr_entry*, %struct.posix_acl_xattr_entry** %10, align 8
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.posix_acl_xattr_entry, %struct.posix_acl_xattr_entry* %47, i64 %49
  store %struct.posix_acl_xattr_entry* %50, %struct.posix_acl_xattr_entry** %11, align 8
  br label %51

51:                                               ; preds = %88, %46
  %52 = load %struct.posix_acl_xattr_entry*, %struct.posix_acl_xattr_entry** %10, align 8
  %53 = load %struct.posix_acl_xattr_entry*, %struct.posix_acl_xattr_entry** %11, align 8
  %54 = icmp ne %struct.posix_acl_xattr_entry* %52, %53
  br i1 %54, label %55, label %91

55:                                               ; preds = %51
  %56 = load %struct.posix_acl_xattr_entry*, %struct.posix_acl_xattr_entry** %10, align 8
  %57 = getelementptr inbounds %struct.posix_acl_xattr_entry, %struct.posix_acl_xattr_entry* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @le16_to_cpu(i32 %58)
  switch i32 %59, label %86 [
    i32 128, label %60
    i32 129, label %73
  ]

60:                                               ; preds = %55
  %61 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %62 = load %struct.posix_acl_xattr_entry*, %struct.posix_acl_xattr_entry** %10, align 8
  %63 = getelementptr inbounds %struct.posix_acl_xattr_entry, %struct.posix_acl_xattr_entry* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @le32_to_cpu(i64 %64)
  %66 = call i32 @make_kuid(%struct.user_namespace* %61, i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @from_kuid(%struct.user_namespace* %67, i32 %68)
  %70 = call i64 @cpu_to_le32(i32 %69)
  %71 = load %struct.posix_acl_xattr_entry*, %struct.posix_acl_xattr_entry** %10, align 8
  %72 = getelementptr inbounds %struct.posix_acl_xattr_entry, %struct.posix_acl_xattr_entry* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %87

73:                                               ; preds = %55
  %74 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %75 = load %struct.posix_acl_xattr_entry*, %struct.posix_acl_xattr_entry** %10, align 8
  %76 = getelementptr inbounds %struct.posix_acl_xattr_entry, %struct.posix_acl_xattr_entry* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @le32_to_cpu(i64 %77)
  %79 = call i32 @make_kgid(%struct.user_namespace* %74, i32 %78)
  store i32 %79, i32* %14, align 4
  %80 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @from_kgid(%struct.user_namespace* %80, i32 %81)
  %83 = call i64 @cpu_to_le32(i32 %82)
  %84 = load %struct.posix_acl_xattr_entry*, %struct.posix_acl_xattr_entry** %10, align 8
  %85 = getelementptr inbounds %struct.posix_acl_xattr_entry, %struct.posix_acl_xattr_entry* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %87

86:                                               ; preds = %55
  br label %87

87:                                               ; preds = %86, %73, %60
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.posix_acl_xattr_entry*, %struct.posix_acl_xattr_entry** %10, align 8
  %90 = getelementptr inbounds %struct.posix_acl_xattr_entry, %struct.posix_acl_xattr_entry* %89, i32 1
  store %struct.posix_acl_xattr_entry* %90, %struct.posix_acl_xattr_entry** %10, align 8
  br label %51

91:                                               ; preds = %23, %27, %35, %41, %45, %51
  ret void
}

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @posix_acl_xattr_count(i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @make_kuid(%struct.user_namespace*, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @from_kuid(%struct.user_namespace*, i32) #1

declare dso_local i32 @make_kgid(%struct.user_namespace*, i32) #1

declare dso_local i32 @from_kgid(%struct.user_namespace*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
