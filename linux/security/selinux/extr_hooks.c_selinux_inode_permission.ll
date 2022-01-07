; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_inode_permission.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_inode_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.cred = type { i32 }
%struct.inode_security_struct = type { i32, i32 }
%struct.av_decision = type { i32 }

@MAY_NOT_BLOCK = common dso_local global i32 0, align 4
@MAY_ACCESS = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@MAY_APPEND = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@AVC_NONBLOCKING = common dso_local global i32 0, align 4
@FILE__AUDIT_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @selinux_inode_permission to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_inode_permission(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode_security_struct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.av_decision, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %17, %struct.cred** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MAY_NOT_BLOCK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MAY_ACCESS, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @MAY_READ, align 4
  %25 = load i32, i32* @MAY_WRITE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MAY_EXEC, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @MAY_APPEND, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %114

36:                                               ; preds = %2
  %37 = load %struct.cred*, %struct.cred** %6, align 8
  %38 = call i32 @validate_creds(%struct.cred* %37)
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = call i32 @IS_PRIVATE(%struct.inode* %39)
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %114

44:                                               ; preds = %36
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @file_mask_to_av(i32 %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.cred*, %struct.cred** %6, align 8
  %51 = call i32 @cred_sid(%struct.cred* %50)
  store i32 %51, i32* %11, align 4
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @MAY_NOT_BLOCK, align 4
  %55 = and i32 %53, %54
  %56 = call %struct.inode_security_struct* @inode_security_rcu(%struct.inode* %52, i32 %55)
  store %struct.inode_security_struct* %56, %struct.inode_security_struct** %10, align 8
  %57 = load %struct.inode_security_struct*, %struct.inode_security_struct** %10, align 8
  %58 = call i64 @IS_ERR(%struct.inode_security_struct* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %44
  %61 = load %struct.inode_security_struct*, %struct.inode_security_struct** %10, align 8
  %62 = call i32 @PTR_ERR(%struct.inode_security_struct* %61)
  store i32 %62, i32* %3, align 4
  br label %114

63:                                               ; preds = %44
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.inode_security_struct*, %struct.inode_security_struct** %10, align 8
  %66 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.inode_security_struct*, %struct.inode_security_struct** %10, align 8
  %69 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @MAY_NOT_BLOCK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %63
  %77 = load i32, i32* @AVC_NONBLOCKING, align 4
  br label %79

78:                                               ; preds = %63
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i32 [ %77, %76 ], [ 0, %78 ]
  %81 = call i32 @avc_has_perm_noaudit(i32* @selinux_state, i32 %64, i32 %67, i32 %70, i32 %71, i32 %80, %struct.av_decision* %12)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* @FILE__AUDIT_ACCESS, align 4
  br label %89

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %86
  %90 = phi i32 [ %87, %86 ], [ 0, %88 ]
  %91 = call i32 @avc_audit_required(i32 %82, %struct.av_decision* %12, i32 %83, i32 %90, i32* %16)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i64 @likely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* %3, align 4
  br label %114

100:                                              ; preds = %89
  %101 = load %struct.inode*, %struct.inode** %4, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @audit_inode_permission(%struct.inode* %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %100
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %3, align 4
  br label %114

112:                                              ; preds = %100
  %113 = load i32, i32* %13, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %110, %98, %60, %43, %35
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @validate_creds(%struct.cred*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_PRIVATE(%struct.inode*) #1

declare dso_local i32 @file_mask_to_av(i32, i32) #1

declare dso_local i32 @cred_sid(%struct.cred*) #1

declare dso_local %struct.inode_security_struct* @inode_security_rcu(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode_security_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.inode_security_struct*) #1

declare dso_local i32 @avc_has_perm_noaudit(i32*, i32, i32, i32, i32, i32, %struct.av_decision*) #1

declare dso_local i32 @avc_audit_required(i32, %struct.av_decision*, i32, i32, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @audit_inode_permission(%struct.inode*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
