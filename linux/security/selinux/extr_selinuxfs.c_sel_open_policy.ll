; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_selinuxfs.c_sel_open_policy.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_selinuxfs.c_sel_open_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.selinux_fs_info* }
%struct.selinux_fs_info = type { i32, i32, %struct.selinux_state* }
%struct.selinux_state = type { i32 }
%struct.file = type { %struct.policy_load_memory* }
%struct.policy_load_memory = type { i32, i32 }

@selinux_state = common dso_local global i32 0, align 4
@SECINITSID_SECURITY = common dso_local global i32 0, align 4
@SECCLASS_SECURITY = common dso_local global i32 0, align 4
@SECURITY__READ_POLICY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @sel_open_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sel_open_policy(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.selinux_fs_info*, align 8
  %7 = alloca %struct.selinux_state*, align 8
  %8 = alloca %struct.policy_load_memory*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.selinux_fs_info*, %struct.selinux_fs_info** %13, align 8
  store %struct.selinux_fs_info* %14, %struct.selinux_fs_info** %6, align 8
  %15 = load %struct.selinux_fs_info*, %struct.selinux_fs_info** %6, align 8
  %16 = getelementptr inbounds %struct.selinux_fs_info, %struct.selinux_fs_info* %15, i32 0, i32 2
  %17 = load %struct.selinux_state*, %struct.selinux_state** %16, align 8
  store %struct.selinux_state* %17, %struct.selinux_state** %7, align 8
  store %struct.policy_load_memory* null, %struct.policy_load_memory** %8, align 8
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load %struct.policy_load_memory*, %struct.policy_load_memory** %19, align 8
  %21 = call i32 @BUG_ON(%struct.policy_load_memory* %20)
  %22 = load %struct.selinux_fs_info*, %struct.selinux_fs_info** %6, align 8
  %23 = getelementptr inbounds %struct.selinux_fs_info, %struct.selinux_fs_info* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = call i32 (...) @current_sid()
  %26 = load i32, i32* @SECINITSID_SECURITY, align 4
  %27 = load i32, i32* @SECCLASS_SECURITY, align 4
  %28 = load i32, i32* @SECURITY__READ_POLICY, align 4
  %29 = call i32 @avc_has_perm(i32* @selinux_state, i32 %25, i32 %26, i32 %27, i32 %28, i32* null)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %83

33:                                               ; preds = %2
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %9, align 4
  %36 = load %struct.selinux_fs_info*, %struct.selinux_fs_info** %6, align 8
  %37 = getelementptr inbounds %struct.selinux_fs_info, %struct.selinux_fs_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %83

41:                                               ; preds = %33
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.policy_load_memory* @kzalloc(i32 8, i32 %44)
  store %struct.policy_load_memory* %45, %struct.policy_load_memory** %8, align 8
  %46 = load %struct.policy_load_memory*, %struct.policy_load_memory** %8, align 8
  %47 = icmp ne %struct.policy_load_memory* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %83

49:                                               ; preds = %41
  %50 = load %struct.inode*, %struct.inode** %4, align 8
  %51 = call i64 @i_size_read(%struct.inode* %50)
  %52 = load %struct.selinux_state*, %struct.selinux_state** %7, align 8
  %53 = call i64 @security_policydb_len(%struct.selinux_state* %52)
  %54 = icmp ne i64 %51, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load %struct.inode*, %struct.inode** %4, align 8
  %57 = call i32 @inode_lock(%struct.inode* %56)
  %58 = load %struct.inode*, %struct.inode** %4, align 8
  %59 = load %struct.selinux_state*, %struct.selinux_state** %7, align 8
  %60 = call i64 @security_policydb_len(%struct.selinux_state* %59)
  %61 = call i32 @i_size_write(%struct.inode* %58, i64 %60)
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = call i32 @inode_unlock(%struct.inode* %62)
  br label %64

64:                                               ; preds = %55, %49
  %65 = load %struct.selinux_state*, %struct.selinux_state** %7, align 8
  %66 = load %struct.policy_load_memory*, %struct.policy_load_memory** %8, align 8
  %67 = getelementptr inbounds %struct.policy_load_memory, %struct.policy_load_memory* %66, i32 0, i32 0
  %68 = load %struct.policy_load_memory*, %struct.policy_load_memory** %8, align 8
  %69 = getelementptr inbounds %struct.policy_load_memory, %struct.policy_load_memory* %68, i32 0, i32 1
  %70 = call i32 @security_read_policy(%struct.selinux_state* %65, i32* %67, i32* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %83

74:                                               ; preds = %64
  %75 = load %struct.selinux_fs_info*, %struct.selinux_fs_info** %6, align 8
  %76 = getelementptr inbounds %struct.selinux_fs_info, %struct.selinux_fs_info* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load %struct.policy_load_memory*, %struct.policy_load_memory** %8, align 8
  %78 = load %struct.file*, %struct.file** %5, align 8
  %79 = getelementptr inbounds %struct.file, %struct.file* %78, i32 0, i32 0
  store %struct.policy_load_memory* %77, %struct.policy_load_memory** %79, align 8
  %80 = load %struct.selinux_fs_info*, %struct.selinux_fs_info** %6, align 8
  %81 = getelementptr inbounds %struct.selinux_fs_info, %struct.selinux_fs_info* %80, i32 0, i32 1
  %82 = call i32 @mutex_unlock(i32* %81)
  store i32 0, i32* %3, align 4
  br label %98

83:                                               ; preds = %73, %48, %40, %32
  %84 = load %struct.selinux_fs_info*, %struct.selinux_fs_info** %6, align 8
  %85 = getelementptr inbounds %struct.selinux_fs_info, %struct.selinux_fs_info* %84, i32 0, i32 1
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load %struct.policy_load_memory*, %struct.policy_load_memory** %8, align 8
  %88 = icmp ne %struct.policy_load_memory* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load %struct.policy_load_memory*, %struct.policy_load_memory** %8, align 8
  %91 = getelementptr inbounds %struct.policy_load_memory, %struct.policy_load_memory* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @vfree(i32 %92)
  br label %94

94:                                               ; preds = %89, %83
  %95 = load %struct.policy_load_memory*, %struct.policy_load_memory** %8, align 8
  %96 = call i32 @kfree(%struct.policy_load_memory* %95)
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %94, %74
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @BUG_ON(%struct.policy_load_memory*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @avc_has_perm(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @current_sid(...) #1

declare dso_local %struct.policy_load_memory* @kzalloc(i32, i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @security_policydb_len(%struct.selinux_state*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @security_read_policy(%struct.selinux_state*, i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @kfree(%struct.policy_load_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
