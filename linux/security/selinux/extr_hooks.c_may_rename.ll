; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_may_rename.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_may_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.inode_security_struct = type { i32, i32 }
%struct.common_audit_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.dentry* }

@LSM_AUDIT_DATA_DENTRY = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@SECCLASS_DIR = common dso_local global i32 0, align 4
@DIR__REMOVE_NAME = common dso_local global i32 0, align 4
@DIR__SEARCH = common dso_local global i32 0, align 4
@FILE__RENAME = common dso_local global i32 0, align 4
@DIR__REPARENT = common dso_local global i32 0, align 4
@DIR__ADD_NAME = common dso_local global i32 0, align 4
@DIR__RMDIR = common dso_local global i32 0, align 4
@FILE__UNLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)* @may_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @may_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode_security_struct*, align 8
  %11 = alloca %struct.inode_security_struct*, align 8
  %12 = alloca %struct.inode_security_struct*, align 8
  %13 = alloca %struct.inode_security_struct*, align 8
  %14 = alloca %struct.common_audit_data, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.inode* %2, %struct.inode** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  %20 = call i32 (...) @current_sid()
  store i32 %20, i32* %15, align 4
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = call %struct.inode_security_struct* @inode_security(%struct.inode* %21)
  store %struct.inode_security_struct* %22, %struct.inode_security_struct** %10, align 8
  %23 = load %struct.dentry*, %struct.dentry** %7, align 8
  %24 = call %struct.inode_security_struct* @backing_inode_security(%struct.dentry* %23)
  store %struct.inode_security_struct* %24, %struct.inode_security_struct** %12, align 8
  %25 = load %struct.dentry*, %struct.dentry** %7, align 8
  %26 = call i32 @d_is_dir(%struct.dentry* %25)
  store i32 %26, i32* %17, align 4
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = call %struct.inode_security_struct* @inode_security(%struct.inode* %27)
  store %struct.inode_security_struct* %28, %struct.inode_security_struct** %11, align 8
  %29 = load i32, i32* @LSM_AUDIT_DATA_DENTRY, align 4
  %30 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %14, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = load %struct.dentry*, %struct.dentry** %7, align 8
  %32 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %14, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.dentry* %31, %struct.dentry** %33, align 8
  %34 = load i32, i32* %15, align 4
  %35 = load %struct.inode_security_struct*, %struct.inode_security_struct** %10, align 8
  %36 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SECCLASS_DIR, align 4
  %39 = load i32, i32* @DIR__REMOVE_NAME, align 4
  %40 = load i32, i32* @DIR__SEARCH, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @avc_has_perm(i32* @selinux_state, i32 %34, i32 %37, i32 %38, i32 %41, %struct.common_audit_data* %14)
  store i32 %42, i32* %19, align 4
  %43 = load i32, i32* %19, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %4
  %46 = load i32, i32* %19, align 4
  store i32 %46, i32* %5, align 4
  br label %140

47:                                               ; preds = %4
  %48 = load i32, i32* %15, align 4
  %49 = load %struct.inode_security_struct*, %struct.inode_security_struct** %12, align 8
  %50 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.inode_security_struct*, %struct.inode_security_struct** %12, align 8
  %53 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @FILE__RENAME, align 4
  %56 = call i32 @avc_has_perm(i32* @selinux_state, i32 %48, i32 %51, i32 %54, i32 %55, %struct.common_audit_data* %14)
  store i32 %56, i32* %19, align 4
  %57 = load i32, i32* %19, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = load i32, i32* %19, align 4
  store i32 %60, i32* %5, align 4
  br label %140

61:                                               ; preds = %47
  %62 = load i32, i32* %17, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %61
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = load %struct.inode*, %struct.inode** %6, align 8
  %67 = icmp ne %struct.inode* %65, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %64
  %69 = load i32, i32* %15, align 4
  %70 = load %struct.inode_security_struct*, %struct.inode_security_struct** %12, align 8
  %71 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.inode_security_struct*, %struct.inode_security_struct** %12, align 8
  %74 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @DIR__REPARENT, align 4
  %77 = call i32 @avc_has_perm(i32* @selinux_state, i32 %69, i32 %72, i32 %75, i32 %76, %struct.common_audit_data* %14)
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %19, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %68
  %81 = load i32, i32* %19, align 4
  store i32 %81, i32* %5, align 4
  br label %140

82:                                               ; preds = %68
  br label %83

83:                                               ; preds = %82, %64, %61
  %84 = load %struct.dentry*, %struct.dentry** %9, align 8
  %85 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %14, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store %struct.dentry* %84, %struct.dentry** %86, align 8
  %87 = load i32, i32* @DIR__ADD_NAME, align 4
  %88 = load i32, i32* @DIR__SEARCH, align 4
  %89 = or i32 %87, %88
  store i32 %89, i32* %16, align 4
  %90 = load %struct.dentry*, %struct.dentry** %9, align 8
  %91 = call i64 @d_is_positive(%struct.dentry* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %83
  %94 = load i32, i32* @DIR__REMOVE_NAME, align 4
  %95 = load i32, i32* %16, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %16, align 4
  br label %97

97:                                               ; preds = %93, %83
  %98 = load i32, i32* %15, align 4
  %99 = load %struct.inode_security_struct*, %struct.inode_security_struct** %11, align 8
  %100 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @SECCLASS_DIR, align 4
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @avc_has_perm(i32* @selinux_state, i32 %98, i32 %101, i32 %102, i32 %103, %struct.common_audit_data* %14)
  store i32 %104, i32* %19, align 4
  %105 = load i32, i32* %19, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %97
  %108 = load i32, i32* %19, align 4
  store i32 %108, i32* %5, align 4
  br label %140

109:                                              ; preds = %97
  %110 = load %struct.dentry*, %struct.dentry** %9, align 8
  %111 = call i64 @d_is_positive(%struct.dentry* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %139

113:                                              ; preds = %109
  %114 = load %struct.dentry*, %struct.dentry** %9, align 8
  %115 = call %struct.inode_security_struct* @backing_inode_security(%struct.dentry* %114)
  store %struct.inode_security_struct* %115, %struct.inode_security_struct** %13, align 8
  %116 = load %struct.dentry*, %struct.dentry** %9, align 8
  %117 = call i32 @d_is_dir(%struct.dentry* %116)
  store i32 %117, i32* %18, align 4
  %118 = load i32, i32* %15, align 4
  %119 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %120 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.inode_security_struct*, %struct.inode_security_struct** %13, align 8
  %123 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %18, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %113
  %128 = load i32, i32* @DIR__RMDIR, align 4
  br label %131

129:                                              ; preds = %113
  %130 = load i32, i32* @FILE__UNLINK, align 4
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i32 [ %128, %127 ], [ %130, %129 ]
  %133 = call i32 @avc_has_perm(i32* @selinux_state, i32 %118, i32 %121, i32 %124, i32 %132, %struct.common_audit_data* %14)
  store i32 %133, i32* %19, align 4
  %134 = load i32, i32* %19, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = load i32, i32* %19, align 4
  store i32 %137, i32* %5, align 4
  br label %140

138:                                              ; preds = %131
  br label %139

139:                                              ; preds = %138, %109
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %139, %136, %107, %80, %59, %45
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @current_sid(...) #1

declare dso_local %struct.inode_security_struct* @inode_security(%struct.inode*) #1

declare dso_local %struct.inode_security_struct* @backing_inode_security(%struct.dentry*) #1

declare dso_local i32 @d_is_dir(%struct.dentry*) #1

declare dso_local i32 @avc_has_perm(i32*, i32, i32, i32, i32, %struct.common_audit_data*) #1

declare dso_local i64 @d_is_positive(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
