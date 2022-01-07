; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_posix_acl.c_posix_acl_to_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_posix_acl.c_posix_acl_to_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_namespace = type { i32 }
%struct.posix_acl = type { i32, %struct.posix_acl_entry* }
%struct.posix_acl_entry = type { i32, i32, i32, i32 }
%struct.posix_acl_xattr_header = type { i8* }
%struct.posix_acl_xattr_entry = type { i8*, i8*, i8* }

@ERANGE = common dso_local global i32 0, align 4
@POSIX_ACL_XATTR_VERSION = common dso_local global i32 0, align 4
@ACL_UNDEFINED_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @posix_acl_to_xattr(%struct.user_namespace* %0, %struct.posix_acl* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.user_namespace*, align 8
  %7 = alloca %struct.posix_acl*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.posix_acl_xattr_header*, align 8
  %11 = alloca %struct.posix_acl_xattr_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.posix_acl_entry*, align 8
  store %struct.user_namespace* %0, %struct.user_namespace** %6, align 8
  store %struct.posix_acl* %1, %struct.posix_acl** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.posix_acl_xattr_header*
  store %struct.posix_acl_xattr_header* %16, %struct.posix_acl_xattr_header** %10, align 8
  %17 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %18 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @posix_acl_xattr_size(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %5, align 4
  br label %101

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %9, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @ERANGE, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %101

33:                                               ; preds = %25
  %34 = load %struct.posix_acl_xattr_header*, %struct.posix_acl_xattr_header** %10, align 8
  %35 = getelementptr inbounds %struct.posix_acl_xattr_header, %struct.posix_acl_xattr_header* %34, i64 1
  %36 = bitcast %struct.posix_acl_xattr_header* %35 to i8*
  %37 = bitcast i8* %36 to %struct.posix_acl_xattr_entry*
  store %struct.posix_acl_xattr_entry* %37, %struct.posix_acl_xattr_entry** %11, align 8
  %38 = load i32, i32* @POSIX_ACL_XATTR_VERSION, align 4
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = load %struct.posix_acl_xattr_header*, %struct.posix_acl_xattr_header** %10, align 8
  %41 = getelementptr inbounds %struct.posix_acl_xattr_header, %struct.posix_acl_xattr_header* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %94, %33
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %45 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %99

48:                                               ; preds = %42
  %49 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %50 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %49, i32 0, i32 1
  %51 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %50, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %51, i64 %53
  store %struct.posix_acl_entry* %54, %struct.posix_acl_entry** %14, align 8
  %55 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %14, align 8
  %56 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @cpu_to_le16(i32 %57)
  %59 = load %struct.posix_acl_xattr_entry*, %struct.posix_acl_xattr_entry** %11, align 8
  %60 = getelementptr inbounds %struct.posix_acl_xattr_entry, %struct.posix_acl_xattr_entry* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %14, align 8
  %62 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @cpu_to_le16(i32 %63)
  %65 = load %struct.posix_acl_xattr_entry*, %struct.posix_acl_xattr_entry** %11, align 8
  %66 = getelementptr inbounds %struct.posix_acl_xattr_entry, %struct.posix_acl_xattr_entry* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %14, align 8
  %68 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %88 [
    i32 128, label %70
    i32 129, label %79
  ]

70:                                               ; preds = %48
  %71 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %72 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %14, align 8
  %73 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @from_kuid(%struct.user_namespace* %71, i32 %74)
  %76 = call i8* @cpu_to_le32(i32 %75)
  %77 = load %struct.posix_acl_xattr_entry*, %struct.posix_acl_xattr_entry** %11, align 8
  %78 = getelementptr inbounds %struct.posix_acl_xattr_entry, %struct.posix_acl_xattr_entry* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  br label %93

79:                                               ; preds = %48
  %80 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %81 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %14, align 8
  %82 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @from_kgid(%struct.user_namespace* %80, i32 %83)
  %85 = call i8* @cpu_to_le32(i32 %84)
  %86 = load %struct.posix_acl_xattr_entry*, %struct.posix_acl_xattr_entry** %11, align 8
  %87 = getelementptr inbounds %struct.posix_acl_xattr_entry, %struct.posix_acl_xattr_entry* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  br label %93

88:                                               ; preds = %48
  %89 = load i32, i32* @ACL_UNDEFINED_ID, align 4
  %90 = call i8* @cpu_to_le32(i32 %89)
  %91 = load %struct.posix_acl_xattr_entry*, %struct.posix_acl_xattr_entry** %11, align 8
  %92 = getelementptr inbounds %struct.posix_acl_xattr_entry, %struct.posix_acl_xattr_entry* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %88, %79, %70
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %13, align 4
  %97 = load %struct.posix_acl_xattr_entry*, %struct.posix_acl_xattr_entry** %11, align 8
  %98 = getelementptr inbounds %struct.posix_acl_xattr_entry, %struct.posix_acl_xattr_entry* %97, i32 1
  store %struct.posix_acl_xattr_entry* %98, %struct.posix_acl_xattr_entry** %11, align 8
  br label %42

99:                                               ; preds = %42
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %99, %30, %23
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @posix_acl_xattr_size(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @from_kuid(%struct.user_namespace*, i32) #1

declare dso_local i32 @from_kgid(%struct.user_namespace*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
