; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_inode_init_security.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_inode_init_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.inode = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.superblock_security_struct* }
%struct.superblock_security_struct = type { i32 }
%struct.qstr = type { i32 }
%struct.task_security_struct = type { i8* }
%struct.inode_security_struct = type { i32, i8*, i32 }

@SE_SBINITIALIZED = common dso_local global i32 0, align 4
@LABEL_INITIALIZED = common dso_local global i32 0, align 4
@selinux_state = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@SBLABEL_MNT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@XATTR_SELINUX_SUFFIX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.inode*, %struct.qstr*, i8**, i8**, i64*)* @selinux_inode_init_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_inode_init_security(%struct.inode* %0, %struct.inode* %1, %struct.qstr* %2, i8** %3, i8** %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.qstr*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.task_security_struct*, align 8
  %15 = alloca %struct.superblock_security_struct*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.inode_security_struct*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.qstr* %2, %struct.qstr** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i64* %5, i64** %13, align 8
  %21 = call i32 (...) @current_cred()
  %22 = call %struct.task_security_struct* @selinux_cred(i32 %21)
  store %struct.task_security_struct* %22, %struct.task_security_struct** %14, align 8
  %23 = load %struct.inode*, %struct.inode** %9, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %26, align 8
  store %struct.superblock_security_struct* %27, %struct.superblock_security_struct** %15, align 8
  %28 = load %struct.task_security_struct*, %struct.task_security_struct** %14, align 8
  %29 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %16, align 8
  %31 = call i32 (...) @current_cred()
  %32 = call %struct.task_security_struct* @selinux_cred(i32 %31)
  %33 = load %struct.inode*, %struct.inode** %9, align 8
  %34 = load %struct.qstr*, %struct.qstr** %10, align 8
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @inode_mode_to_security_class(i32 %37)
  %39 = call i32 @selinux_determine_inode_label(%struct.task_security_struct* %32, %struct.inode* %33, %struct.qstr* %34, i32 %38, i8** %16)
  store i32 %39, i32* %18, align 4
  %40 = load i32, i32* %18, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %6
  %43 = load i32, i32* %18, align 4
  store i32 %43, i32* %7, align 4
  br label %105

44:                                               ; preds = %6
  %45 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %15, align 8
  %46 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SE_SBINITIALIZED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %44
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = call %struct.inode_security_struct* @selinux_inode(%struct.inode* %52)
  store %struct.inode_security_struct* %53, %struct.inode_security_struct** %20, align 8
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @inode_mode_to_security_class(i32 %56)
  %58 = load %struct.inode_security_struct*, %struct.inode_security_struct** %20, align 8
  %59 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load i8*, i8** %16, align 8
  %61 = load %struct.inode_security_struct*, %struct.inode_security_struct** %20, align 8
  %62 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* @LABEL_INITIALIZED, align 4
  %64 = load %struct.inode_security_struct*, %struct.inode_security_struct** %20, align 8
  %65 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %51, %44
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @selinux_state, i32 0, i32 0), align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %15, align 8
  %71 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @SBLABEL_MNT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %69, %66
  %77 = load i32, i32* @EOPNOTSUPP, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %7, align 4
  br label %105

79:                                               ; preds = %69
  %80 = load i8**, i8*** %11, align 8
  %81 = icmp ne i8** %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i8*, i8** @XATTR_SELINUX_SUFFIX, align 8
  %84 = load i8**, i8*** %11, align 8
  store i8* %83, i8** %84, align 8
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i8**, i8*** %12, align 8
  %87 = icmp ne i8** %86, null
  br i1 %87, label %88, label %104

88:                                               ; preds = %85
  %89 = load i64*, i64** %13, align 8
  %90 = icmp ne i64* %89, null
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  %92 = load i8*, i8** %16, align 8
  %93 = call i32 @security_sid_to_context_force(%struct.TYPE_5__* @selinux_state, i8* %92, i8** %19, i8** %17)
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %18, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %18, align 4
  store i32 %97, i32* %7, align 4
  br label %105

98:                                               ; preds = %91
  %99 = load i8*, i8** %19, align 8
  %100 = load i8**, i8*** %12, align 8
  store i8* %99, i8** %100, align 8
  %101 = load i8*, i8** %17, align 8
  %102 = ptrtoint i8* %101 to i64
  %103 = load i64*, i64** %13, align 8
  store i64 %102, i64* %103, align 8
  br label %104

104:                                              ; preds = %98, %88, %85
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %104, %96, %76, %42
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local %struct.task_security_struct* @selinux_cred(i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local i32 @selinux_determine_inode_label(%struct.task_security_struct*, %struct.inode*, %struct.qstr*, i32, i8**) #1

declare dso_local i32 @inode_mode_to_security_class(i32) #1

declare dso_local %struct.inode_security_struct* @selinux_inode(%struct.inode*) #1

declare dso_local i32 @security_sid_to_context_force(%struct.TYPE_5__*, i8*, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
