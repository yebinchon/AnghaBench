; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_posix_acl.c_posix_acl_from_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_posix_acl.c_posix_acl_from_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl = type { %struct.posix_acl_entry* }
%struct.posix_acl_entry = type { i32, i32, i32, i8* }
%struct.user_namespace = type { i32 }
%struct.posix_acl_xattr_header = type { i64 }
%struct.posix_acl_xattr_entry = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@POSIX_ACL_XATTR_VERSION = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.posix_acl* @posix_acl_from_xattr(%struct.user_namespace* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.posix_acl*, align 8
  %5 = alloca %struct.user_namespace*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.posix_acl_xattr_header*, align 8
  %9 = alloca %struct.posix_acl_xattr_entry*, align 8
  %10 = alloca %struct.posix_acl_xattr_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.posix_acl*, align 8
  %13 = alloca %struct.posix_acl_entry*, align 8
  store %struct.user_namespace* %0, %struct.user_namespace** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.posix_acl_xattr_header*
  store %struct.posix_acl_xattr_header* %15, %struct.posix_acl_xattr_header** %8, align 8
  %16 = load %struct.posix_acl_xattr_header*, %struct.posix_acl_xattr_header** %8, align 8
  %17 = getelementptr inbounds %struct.posix_acl_xattr_header, %struct.posix_acl_xattr_header* %16, i64 1
  %18 = bitcast %struct.posix_acl_xattr_header* %17 to i8*
  %19 = bitcast i8* %18 to %struct.posix_acl_xattr_entry*
  store %struct.posix_acl_xattr_entry* %19, %struct.posix_acl_xattr_entry** %9, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  store %struct.posix_acl* null, %struct.posix_acl** %4, align 8
  br label %141

23:                                               ; preds = %3
  %24 = load i64, i64* %7, align 8
  %25 = icmp ult i64 %24, 8
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.posix_acl* @ERR_PTR(i32 %28)
  store %struct.posix_acl* %29, %struct.posix_acl** %4, align 8
  br label %141

30:                                               ; preds = %23
  %31 = load %struct.posix_acl_xattr_header*, %struct.posix_acl_xattr_header** %8, align 8
  %32 = getelementptr inbounds %struct.posix_acl_xattr_header, %struct.posix_acl_xattr_header* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @POSIX_ACL_XATTR_VERSION, align 4
  %35 = call i64 @cpu_to_le32(i32 %34)
  %36 = icmp ne i64 %33, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.posix_acl* @ERR_PTR(i32 %39)
  store %struct.posix_acl* %40, %struct.posix_acl** %4, align 8
  br label %141

41:                                               ; preds = %30
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @posix_acl_xattr_count(i64 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.posix_acl* @ERR_PTR(i32 %48)
  store %struct.posix_acl* %49, %struct.posix_acl** %4, align 8
  br label %141

50:                                               ; preds = %41
  %51 = load i32, i32* %11, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store %struct.posix_acl* null, %struct.posix_acl** %4, align 8
  br label %141

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @GFP_NOFS, align 4
  %57 = call %struct.posix_acl* @posix_acl_alloc(i32 %55, i32 %56)
  store %struct.posix_acl* %57, %struct.posix_acl** %12, align 8
  %58 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %59 = icmp ne %struct.posix_acl* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  %63 = call %struct.posix_acl* @ERR_PTR(i32 %62)
  store %struct.posix_acl* %63, %struct.posix_acl** %4, align 8
  br label %141

64:                                               ; preds = %54
  %65 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %66 = getelementptr inbounds %struct.posix_acl, %struct.posix_acl* %65, i32 0, i32 0
  %67 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %66, align 8
  store %struct.posix_acl_entry* %67, %struct.posix_acl_entry** %13, align 8
  %68 = load %struct.posix_acl_xattr_entry*, %struct.posix_acl_xattr_entry** %9, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.posix_acl_xattr_entry, %struct.posix_acl_xattr_entry* %68, i64 %70
  store %struct.posix_acl_xattr_entry* %71, %struct.posix_acl_xattr_entry** %10, align 8
  br label %72

72:                                               ; preds = %128, %64
  %73 = load %struct.posix_acl_xattr_entry*, %struct.posix_acl_xattr_entry** %9, align 8
  %74 = load %struct.posix_acl_xattr_entry*, %struct.posix_acl_xattr_entry** %10, align 8
  %75 = icmp ne %struct.posix_acl_xattr_entry* %73, %74
  br i1 %75, label %76, label %133

76:                                               ; preds = %72
  %77 = load %struct.posix_acl_xattr_entry*, %struct.posix_acl_xattr_entry** %9, align 8
  %78 = getelementptr inbounds %struct.posix_acl_xattr_entry, %struct.posix_acl_xattr_entry* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @le16_to_cpu(i32 %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %13, align 8
  %83 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.posix_acl_xattr_entry*, %struct.posix_acl_xattr_entry** %9, align 8
  %85 = getelementptr inbounds %struct.posix_acl_xattr_entry, %struct.posix_acl_xattr_entry* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @le16_to_cpu(i32 %86)
  %88 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %13, align 8
  %89 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %88, i32 0, i32 3
  store i8* %87, i8** %89, align 8
  %90 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %13, align 8
  %91 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  switch i32 %92, label %126 [
    i32 128, label %93
    i32 132, label %93
    i32 131, label %93
    i32 130, label %93
    i32 129, label %94
    i32 133, label %110
  ]

93:                                               ; preds = %76, %76, %76, %76
  br label %127

94:                                               ; preds = %76
  %95 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %96 = load %struct.posix_acl_xattr_entry*, %struct.posix_acl_xattr_entry** %9, align 8
  %97 = getelementptr inbounds %struct.posix_acl_xattr_entry, %struct.posix_acl_xattr_entry* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @le32_to_cpu(i32 %98)
  %100 = call i32 @make_kuid(%struct.user_namespace* %95, i32 %99)
  %101 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %13, align 8
  %102 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %13, align 8
  %104 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @uid_valid(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %94
  br label %135

109:                                              ; preds = %94
  br label %127

110:                                              ; preds = %76
  %111 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %112 = load %struct.posix_acl_xattr_entry*, %struct.posix_acl_xattr_entry** %9, align 8
  %113 = getelementptr inbounds %struct.posix_acl_xattr_entry, %struct.posix_acl_xattr_entry* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @le32_to_cpu(i32 %114)
  %116 = call i32 @make_kgid(%struct.user_namespace* %111, i32 %115)
  %117 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %13, align 8
  %118 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %13, align 8
  %120 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @gid_valid(i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %110
  br label %135

125:                                              ; preds = %110
  br label %127

126:                                              ; preds = %76
  br label %135

127:                                              ; preds = %125, %109, %93
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.posix_acl_entry*, %struct.posix_acl_entry** %13, align 8
  %130 = getelementptr inbounds %struct.posix_acl_entry, %struct.posix_acl_entry* %129, i32 1
  store %struct.posix_acl_entry* %130, %struct.posix_acl_entry** %13, align 8
  %131 = load %struct.posix_acl_xattr_entry*, %struct.posix_acl_xattr_entry** %9, align 8
  %132 = getelementptr inbounds %struct.posix_acl_xattr_entry, %struct.posix_acl_xattr_entry* %131, i32 1
  store %struct.posix_acl_xattr_entry* %132, %struct.posix_acl_xattr_entry** %9, align 8
  br label %72

133:                                              ; preds = %72
  %134 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  store %struct.posix_acl* %134, %struct.posix_acl** %4, align 8
  br label %141

135:                                              ; preds = %126, %124, %108
  %136 = load %struct.posix_acl*, %struct.posix_acl** %12, align 8
  %137 = call i32 @posix_acl_release(%struct.posix_acl* %136)
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  %140 = call %struct.posix_acl* @ERR_PTR(i32 %139)
  store %struct.posix_acl* %140, %struct.posix_acl** %4, align 8
  br label %141

141:                                              ; preds = %135, %133, %60, %53, %46, %37, %26, %22
  %142 = load %struct.posix_acl*, %struct.posix_acl** %4, align 8
  ret %struct.posix_acl* %142
}

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @posix_acl_xattr_count(i64) #1

declare dso_local %struct.posix_acl* @posix_acl_alloc(i32, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @make_kuid(%struct.user_namespace*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @uid_valid(i32) #1

declare dso_local i32 @make_kgid(%struct.user_namespace*, i32) #1

declare dso_local i32 @gid_valid(i32) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
