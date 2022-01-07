; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_kernfs_init_security.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_kernfs_init_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i32, i32 }
%struct.task_security_struct = type { i32, i64 }
%struct.qstr = type { i32, i32 }

@XATTR_NAME_SELINUX = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@XATTR_CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernfs_node*, %struct.kernfs_node*)* @selinux_kernfs_init_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_kernfs_init_security(%struct.kernfs_node* %0, %struct.kernfs_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kernfs_node*, align 8
  %5 = alloca %struct.kernfs_node*, align 8
  %6 = alloca %struct.task_security_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.qstr, align 4
  store %struct.kernfs_node* %0, %struct.kernfs_node** %4, align 8
  store %struct.kernfs_node* %1, %struct.kernfs_node** %5, align 8
  %14 = call i32 (...) @current_cred()
  %15 = call %struct.task_security_struct* @selinux_cred(i32 %14)
  store %struct.task_security_struct* %15, %struct.task_security_struct** %6, align 8
  %16 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %17 = load i32, i32* @XATTR_NAME_SELINUX, align 4
  %18 = call i32 @kernfs_xattr_get(%struct.kernfs_node* %16, i32 %17, i8* null, i64 0)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @ENODATA, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %116

24:                                               ; preds = %2
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %3, align 4
  br label %116

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kmalloc(i64 %33, i32 %34)
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %116

41:                                               ; preds = %30
  %42 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %43 = load i32, i32* @XATTR_NAME_SELINUX, align 4
  %44 = load i8*, i8** %11, align 8
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @kernfs_xattr_get(%struct.kernfs_node* %42, i32 %43, i8* %44, i64 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @kfree(i8* %50)
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %3, align 4
  br label %116

53:                                               ; preds = %41
  %54 = load i8*, i8** %11, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i32 @security_context_to_sid(i32* @selinux_state, i8* %54, i64 %55, i64* %7, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @kfree(i8* %58)
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %3, align 4
  br label %116

64:                                               ; preds = %53
  %65 = load %struct.task_security_struct*, %struct.task_security_struct** %6, align 8
  %66 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.task_security_struct*, %struct.task_security_struct** %6, align 8
  %71 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %8, align 8
  br label %99

73:                                               ; preds = %64
  %74 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %75 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @inode_mode_to_security_class(i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %79 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.qstr, %struct.qstr* %13, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  %82 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %83 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %84 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @hashlen_string(%struct.kernfs_node* %82, i32 %85)
  %87 = getelementptr inbounds %struct.qstr, %struct.qstr* %13, i32 0, i32 0
  store i32 %86, i32* %87, align 4
  %88 = load %struct.task_security_struct*, %struct.task_security_struct** %6, align 8
  %89 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @security_transition_sid(i32* @selinux_state, i32 %90, i64 %91, i32 %92, %struct.qstr* %13, i64* %8)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %73
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %3, align 4
  br label %116

98:                                               ; preds = %73
  br label %99

99:                                               ; preds = %98, %69
  %100 = load i64, i64* %8, align 8
  %101 = call i32 @security_sid_to_context_force(i32* @selinux_state, i64 %100, i8** %11, i64* %9)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %3, align 4
  br label %116

106:                                              ; preds = %99
  %107 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %108 = load i32, i32* @XATTR_NAME_SELINUX, align 4
  %109 = load i8*, i8** %11, align 8
  %110 = load i64, i64* %9, align 8
  %111 = load i32, i32* @XATTR_CREATE, align 4
  %112 = call i32 @kernfs_xattr_set(%struct.kernfs_node* %107, i32 %108, i8* %109, i64 %110, i32 %111)
  store i32 %112, i32* %10, align 4
  %113 = load i8*, i8** %11, align 8
  %114 = call i32 @kfree(i8* %113)
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %106, %104, %96, %62, %49, %38, %27, %23
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.task_security_struct* @selinux_cred(i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local i32 @kernfs_xattr_get(%struct.kernfs_node*, i32, i8*, i64) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @security_context_to_sid(i32*, i8*, i64, i64*, i32) #1

declare dso_local i32 @inode_mode_to_security_class(i32) #1

declare dso_local i32 @hashlen_string(%struct.kernfs_node*, i32) #1

declare dso_local i32 @security_transition_sid(i32*, i32, i64, i32, %struct.qstr*, i64*) #1

declare dso_local i32 @security_sid_to_context_force(i32*, i64, i8**, i64*) #1

declare dso_local i32 @kernfs_xattr_set(%struct.kernfs_node*, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
