; ModuleID = '/home/carl/AnghaBench/linux/security/extr_commoncap.c_cap_inode_getsecurity.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_commoncap.c_cap_inode_getsecurity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.user_namespace* }
%struct.user_namespace = type { i32 }
%struct.vfs_cap_data = type { i8*, i32 }
%struct.vfs_ns_cap_data = type { i32, i8*, i8* }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"capability\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XATTR_NAME_CAPS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@VFS_CAP_REVISION_2 = common dso_local global i32 0, align 4
@VFS_CAP_FLAGS_EFFECTIVE = common dso_local global i32 0, align 4
@VFS_CAP_U32 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cap_inode_getsecurity(%struct.inode* %0, i8* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.vfs_cap_data*, align 8
  %17 = alloca %struct.vfs_ns_cap_data*, align 8
  %18 = alloca %struct.dentry*, align 8
  %19 = alloca %struct.user_namespace*, align 8
  %20 = alloca %struct.vfs_cap_data*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %15, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %181

29:                                               ; preds = %4
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = call %struct.dentry* @d_find_any_alias(%struct.inode* %30)
  store %struct.dentry* %31, %struct.dentry** %18, align 8
  %32 = load %struct.dentry*, %struct.dentry** %18, align 8
  %33 = icmp ne %struct.dentry* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %181

37:                                               ; preds = %29
  store i32 24, i32* %10, align 4
  %38 = load %struct.dentry*, %struct.dentry** %18, align 8
  %39 = load i32, i32* @XATTR_NAME_CAPS, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @GFP_NOFS, align 4
  %42 = call i64 @vfs_getxattr_alloc(%struct.dentry* %38, i32 %39, i8** %15, i32 %40, i32 %41)
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %11, align 4
  %44 = load %struct.dentry*, %struct.dentry** %18, align 8
  %45 = call i32 @dput(%struct.dentry* %44)
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %5, align 4
  br label %181

50:                                               ; preds = %37
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.user_namespace*, %struct.user_namespace** %54, align 8
  store %struct.user_namespace* %55, %struct.user_namespace** %19, align 8
  %56 = load i8*, i8** %15, align 8
  %57 = bitcast i8* %56 to %struct.vfs_cap_data*
  store %struct.vfs_cap_data* %57, %struct.vfs_cap_data** %16, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = load %struct.vfs_cap_data*, %struct.vfs_cap_data** %16, align 8
  %61 = call i64 @is_v2header(i64 %59, %struct.vfs_cap_data* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %50
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i8*, i8** %15, align 8
  %68 = load i8**, i8*** %8, align 8
  store i8* %67, i8** %68, align 8
  br label %72

69:                                               ; preds = %63
  %70 = load i8*, i8** %15, align 8
  %71 = call i32 @kfree(i8* %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %5, align 4
  br label %181

74:                                               ; preds = %50
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = load %struct.vfs_cap_data*, %struct.vfs_cap_data** %16, align 8
  %78 = call i32 @is_v3header(i64 %76, %struct.vfs_cap_data* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %74
  %81 = load i8*, i8** %15, align 8
  %82 = call i32 @kfree(i8* %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %181

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %85
  %87 = load i8*, i8** %15, align 8
  %88 = bitcast i8* %87 to %struct.vfs_ns_cap_data*
  store %struct.vfs_ns_cap_data* %88, %struct.vfs_ns_cap_data** %17, align 8
  %89 = load %struct.vfs_ns_cap_data*, %struct.vfs_ns_cap_data** %17, align 8
  %90 = getelementptr inbounds %struct.vfs_ns_cap_data, %struct.vfs_ns_cap_data* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = call i8* @le32_to_cpu(i8* %91)
  %93 = ptrtoint i8* %92 to i64
  store i64 %93, i64* %13, align 8
  %94 = load %struct.user_namespace*, %struct.user_namespace** %19, align 8
  %95 = load i64, i64* %13, align 8
  %96 = call i32 @make_kuid(%struct.user_namespace* %94, i64 %95)
  store i32 %96, i32* %12, align 4
  %97 = call i32 (...) @current_user_ns()
  %98 = load i32, i32* %12, align 4
  %99 = call i64 @from_kuid(i32 %97, i32 %98)
  store i64 %99, i64* %14, align 8
  %100 = load i64, i64* %14, align 8
  %101 = icmp ne i64 %100, -1
  br i1 %101, label %102, label %121

102:                                              ; preds = %86
  %103 = load i64, i64* %14, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %102
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %105
  %109 = load i8*, i8** %15, align 8
  %110 = load i8**, i8*** %8, align 8
  store i8* %109, i8** %110, align 8
  %111 = load i64, i64* %14, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i8* @cpu_to_le32(i32 %112)
  %114 = load %struct.vfs_ns_cap_data*, %struct.vfs_ns_cap_data** %17, align 8
  %115 = getelementptr inbounds %struct.vfs_ns_cap_data, %struct.vfs_ns_cap_data* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  br label %119

116:                                              ; preds = %105
  %117 = load i8*, i8** %15, align 8
  %118 = call i32 @kfree(i8* %117)
  br label %119

119:                                              ; preds = %116, %108
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %5, align 4
  br label %181

121:                                              ; preds = %102, %86
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @rootid_owns_currentns(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %121
  %126 = load i8*, i8** %15, align 8
  %127 = call i32 @kfree(i8* %126)
  %128 = load i32, i32* @EOPNOTSUPP, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %5, align 4
  br label %181

130:                                              ; preds = %121
  store i32 16, i32* %10, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %177

133:                                              ; preds = %130
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* @GFP_ATOMIC, align 4
  %136 = call i8* @kmalloc(i32 %134, i32 %135)
  %137 = load i8**, i8*** %8, align 8
  store i8* %136, i8** %137, align 8
  %138 = load i8**, i8*** %8, align 8
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %173

141:                                              ; preds = %133
  %142 = load i8**, i8*** %8, align 8
  %143 = load i8*, i8** %142, align 8
  %144 = bitcast i8* %143 to %struct.vfs_cap_data*
  store %struct.vfs_cap_data* %144, %struct.vfs_cap_data** %20, align 8
  %145 = load i32, i32* @VFS_CAP_REVISION_2, align 4
  store i32 %145, i32* %22, align 4
  %146 = load %struct.vfs_ns_cap_data*, %struct.vfs_ns_cap_data** %17, align 8
  %147 = getelementptr inbounds %struct.vfs_ns_cap_data, %struct.vfs_ns_cap_data* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i8* @le32_to_cpu(i8* %148)
  %150 = ptrtoint i8* %149 to i32
  store i32 %150, i32* %21, align 4
  %151 = load i32, i32* %21, align 4
  %152 = load i32, i32* @VFS_CAP_FLAGS_EFFECTIVE, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %141
  %156 = load i32, i32* @VFS_CAP_FLAGS_EFFECTIVE, align 4
  %157 = load i32, i32* %22, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %22, align 4
  br label %159

159:                                              ; preds = %155, %141
  %160 = load %struct.vfs_cap_data*, %struct.vfs_cap_data** %20, align 8
  %161 = getelementptr inbounds %struct.vfs_cap_data, %struct.vfs_cap_data* %160, i32 0, i32 1
  %162 = load %struct.vfs_ns_cap_data*, %struct.vfs_ns_cap_data** %17, align 8
  %163 = getelementptr inbounds %struct.vfs_ns_cap_data, %struct.vfs_ns_cap_data* %162, i32 0, i32 0
  %164 = load i32, i32* @VFS_CAP_U32, align 4
  %165 = sext i32 %164 to i64
  %166 = mul i64 8, %165
  %167 = trunc i64 %166 to i32
  %168 = call i32 @memcpy(i32* %161, i32* %163, i32 %167)
  %169 = load i32, i32* %22, align 4
  %170 = call i8* @cpu_to_le32(i32 %169)
  %171 = load %struct.vfs_cap_data*, %struct.vfs_cap_data** %20, align 8
  %172 = getelementptr inbounds %struct.vfs_cap_data, %struct.vfs_cap_data* %171, i32 0, i32 0
  store i8* %170, i8** %172, align 8
  br label %176

173:                                              ; preds = %133
  %174 = load i32, i32* @ENOMEM, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %10, align 4
  br label %176

176:                                              ; preds = %173, %159
  br label %177

177:                                              ; preds = %176, %130
  %178 = load i8*, i8** %15, align 8
  %179 = call i32 @kfree(i8* %178)
  %180 = load i32, i32* %10, align 4
  store i32 %180, i32* %5, align 4
  br label %181

181:                                              ; preds = %177, %125, %119, %80, %72, %48, %34, %26
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.dentry* @d_find_any_alias(%struct.inode*) #1

declare dso_local i64 @vfs_getxattr_alloc(%struct.dentry*, i32, i8**, i32, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i64 @is_v2header(i64, %struct.vfs_cap_data*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @is_v3header(i64, %struct.vfs_cap_data*) #1

declare dso_local i8* @le32_to_cpu(i8*) #1

declare dso_local i32 @make_kuid(%struct.user_namespace*, i64) #1

declare dso_local i64 @from_kuid(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @rootid_owns_currentns(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
