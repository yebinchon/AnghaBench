; ModuleID = '/home/carl/AnghaBench/linux/security/extr_commoncap.c_cap_convert_nscap.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_commoncap.c_cap_convert_nscap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.vfs_ns_cap_data = type { i32, i8*, i8* }
%struct.vfs_cap_data = type { i32, i32 }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.user_namespace* }
%struct.user_namespace = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CAP_SETFCAP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@XATTR_CAPS_SZ_2 = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VFS_CAP_REVISION_3 = common dso_local global i32 0, align 4
@VFS_CAP_FLAGS_EFFECTIVE = common dso_local global i32 0, align 4
@VFS_CAP_U32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cap_convert_nscap(%struct.dentry* %0, i8** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vfs_ns_cap_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vfs_cap_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.user_namespace*, align 8
  %15 = alloca %struct.user_namespace*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load i8**, i8*** %6, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast i8* %19 to %struct.vfs_cap_data*
  store %struct.vfs_cap_data* %20, %struct.vfs_cap_data** %10, align 8
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = call %struct.inode* @d_backing_inode(%struct.dentry* %21)
  store %struct.inode* %22, %struct.inode** %13, align 8
  %23 = call %struct.user_namespace* (...) @current_user_ns()
  store %struct.user_namespace* %23, %struct.user_namespace** %14, align 8
  %24 = load %struct.inode*, %struct.inode** %13, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.user_namespace*, %struct.user_namespace** %27, align 8
  store %struct.user_namespace* %28, %struct.user_namespace** %15, align 8
  %29 = load i8**, i8*** %6, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %138

35:                                               ; preds = %3
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.vfs_cap_data*, %struct.vfs_cap_data** %10, align 8
  %38 = call i32 @validheader(i64 %36, %struct.vfs_cap_data* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %138

43:                                               ; preds = %35
  %44 = load %struct.inode*, %struct.inode** %13, align 8
  %45 = load i32, i32* @CAP_SETFCAP, align 4
  %46 = call i32 @capable_wrt_inode_uidgid(%struct.inode* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @EPERM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %138

51:                                               ; preds = %43
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @XATTR_CAPS_SZ_2, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load %struct.inode*, %struct.inode** %13, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.user_namespace*, %struct.user_namespace** %59, align 8
  %61 = load i32, i32* @CAP_SETFCAP, align 4
  %62 = call i64 @ns_capable(%struct.user_namespace* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load i64, i64* %7, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %4, align 4
  br label %138

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67, %51
  %69 = load i8**, i8*** %6, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.user_namespace*, %struct.user_namespace** %14, align 8
  %73 = call i32 @rootid_from_xattr(i8* %70, i64 %71, %struct.user_namespace* %72)
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @uid_valid(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %68
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %138

80:                                               ; preds = %68
  %81 = load %struct.user_namespace*, %struct.user_namespace** %15, align 8
  %82 = load i32, i32* %16, align 4
  %83 = call i32 @from_kuid(%struct.user_namespace* %81, i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %138

89:                                               ; preds = %80
  store i64 24, i64* %17, align 8
  %90 = load i64, i64* %17, align 8
  %91 = load i32, i32* @GFP_ATOMIC, align 4
  %92 = call %struct.vfs_ns_cap_data* @kmalloc(i64 %90, i32 %91)
  store %struct.vfs_ns_cap_data* %92, %struct.vfs_ns_cap_data** %8, align 8
  %93 = load %struct.vfs_ns_cap_data*, %struct.vfs_ns_cap_data** %8, align 8
  %94 = icmp ne %struct.vfs_ns_cap_data* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %89
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %138

98:                                               ; preds = %89
  %99 = load i32, i32* %9, align 4
  %100 = call i8* @cpu_to_le32(i32 %99)
  %101 = load %struct.vfs_ns_cap_data*, %struct.vfs_ns_cap_data** %8, align 8
  %102 = getelementptr inbounds %struct.vfs_ns_cap_data, %struct.vfs_ns_cap_data* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  %103 = load i32, i32* @VFS_CAP_REVISION_3, align 4
  store i32 %103, i32* %12, align 4
  %104 = load %struct.vfs_cap_data*, %struct.vfs_cap_data** %10, align 8
  %105 = getelementptr inbounds %struct.vfs_cap_data, %struct.vfs_cap_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @le32_to_cpu(i32 %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @VFS_CAP_FLAGS_EFFECTIVE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %98
  %113 = load i32, i32* @VFS_CAP_FLAGS_EFFECTIVE, align 4
  %114 = load i32, i32* %12, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %112, %98
  %117 = load i32, i32* %12, align 4
  %118 = call i8* @cpu_to_le32(i32 %117)
  %119 = load %struct.vfs_ns_cap_data*, %struct.vfs_ns_cap_data** %8, align 8
  %120 = getelementptr inbounds %struct.vfs_ns_cap_data, %struct.vfs_ns_cap_data* %119, i32 0, i32 1
  store i8* %118, i8** %120, align 8
  %121 = load %struct.vfs_ns_cap_data*, %struct.vfs_ns_cap_data** %8, align 8
  %122 = getelementptr inbounds %struct.vfs_ns_cap_data, %struct.vfs_ns_cap_data* %121, i32 0, i32 0
  %123 = load %struct.vfs_cap_data*, %struct.vfs_cap_data** %10, align 8
  %124 = getelementptr inbounds %struct.vfs_cap_data, %struct.vfs_cap_data* %123, i32 0, i32 0
  %125 = load i32, i32* @VFS_CAP_U32, align 4
  %126 = sext i32 %125 to i64
  %127 = mul i64 8, %126
  %128 = trunc i64 %127 to i32
  %129 = call i32 @memcpy(i32* %122, i32* %124, i32 %128)
  %130 = load i8**, i8*** %6, align 8
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @kvfree(i8* %131)
  %133 = load %struct.vfs_ns_cap_data*, %struct.vfs_ns_cap_data** %8, align 8
  %134 = bitcast %struct.vfs_ns_cap_data* %133 to i8*
  %135 = load i8**, i8*** %6, align 8
  store i8* %134, i8** %135, align 8
  %136 = load i64, i64* %17, align 8
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %116, %95, %86, %77, %64, %48, %40, %32
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local %struct.inode* @d_backing_inode(%struct.dentry*) #1

declare dso_local %struct.user_namespace* @current_user_ns(...) #1

declare dso_local i32 @validheader(i64, %struct.vfs_cap_data*) #1

declare dso_local i32 @capable_wrt_inode_uidgid(%struct.inode*, i32) #1

declare dso_local i64 @ns_capable(%struct.user_namespace*, i32) #1

declare dso_local i32 @rootid_from_xattr(i8*, i64, %struct.user_namespace*) #1

declare dso_local i32 @uid_valid(i32) #1

declare dso_local i32 @from_kuid(%struct.user_namespace*, i32) #1

declare dso_local %struct.vfs_ns_cap_data* @kmalloc(i64, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
