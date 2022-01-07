; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_sb_remount.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_sb_remount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_2__*, i32, i32, %struct.superblock_security_struct* }
%struct.TYPE_2__ = type { i32 }
%struct.superblock_security_struct = type { i32, i32, i32, i32 }
%struct.selinux_mnt_opts = type { i64, i64, i64, i64 }
%struct.inode_security_struct = type { i32 }

@SE_SBINITIALIZED = common dso_local global i32 0, align 4
@FSCONTEXT_MNT = common dso_local global i32 0, align 4
@CONTEXT_MNT = common dso_local global i32 0, align 4
@ROOTCONTEXT_MNT = common dso_local global i32 0, align 4
@DEFCONTEXT_MNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"SELinux: unable to change security options during remount (dev %s, type=%s)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*)* @selinux_sb_remount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_sb_remount(%struct.super_block* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.selinux_mnt_opts*, align 8
  %7 = alloca %struct.superblock_security_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode_security_struct*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.selinux_mnt_opts*
  store %struct.selinux_mnt_opts* %12, %struct.selinux_mnt_opts** %6, align 8
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 3
  %15 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %14, align 8
  store %struct.superblock_security_struct* %15, %struct.superblock_security_struct** %7, align 8
  %16 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %7, align 8
  %17 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SE_SBINITIALIZED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %148

23:                                               ; preds = %2
  %24 = load %struct.selinux_mnt_opts*, %struct.selinux_mnt_opts** %6, align 8
  %25 = icmp ne %struct.selinux_mnt_opts* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %148

27:                                               ; preds = %23
  %28 = load %struct.selinux_mnt_opts*, %struct.selinux_mnt_opts** %6, align 8
  %29 = getelementptr inbounds %struct.selinux_mnt_opts, %struct.selinux_mnt_opts* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %27
  %33 = load %struct.super_block*, %struct.super_block** %4, align 8
  %34 = load %struct.selinux_mnt_opts*, %struct.selinux_mnt_opts** %6, align 8
  %35 = getelementptr inbounds %struct.selinux_mnt_opts, %struct.selinux_mnt_opts* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @parse_sid(%struct.super_block* %33, i64 %36, i32* %8)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %148

42:                                               ; preds = %32
  %43 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %7, align 8
  %44 = load i32, i32* @FSCONTEXT_MNT, align 4
  %45 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %7, align 8
  %46 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @bad_option(%struct.superblock_security_struct* %43, i32 %44, i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %136

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %27
  %54 = load %struct.selinux_mnt_opts*, %struct.selinux_mnt_opts** %6, align 8
  %55 = getelementptr inbounds %struct.selinux_mnt_opts, %struct.selinux_mnt_opts* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %53
  %59 = load %struct.super_block*, %struct.super_block** %4, align 8
  %60 = load %struct.selinux_mnt_opts*, %struct.selinux_mnt_opts** %6, align 8
  %61 = getelementptr inbounds %struct.selinux_mnt_opts, %struct.selinux_mnt_opts* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @parse_sid(%struct.super_block* %59, i64 %62, i32* %8)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %3, align 4
  br label %148

68:                                               ; preds = %58
  %69 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %7, align 8
  %70 = load i32, i32* @CONTEXT_MNT, align 4
  %71 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %7, align 8
  %72 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i64 @bad_option(%struct.superblock_security_struct* %69, i32 %70, i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %136

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %53
  %80 = load %struct.selinux_mnt_opts*, %struct.selinux_mnt_opts** %6, align 8
  %81 = getelementptr inbounds %struct.selinux_mnt_opts, %struct.selinux_mnt_opts* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %109

84:                                               ; preds = %79
  %85 = load %struct.super_block*, %struct.super_block** %4, align 8
  %86 = getelementptr inbounds %struct.super_block, %struct.super_block* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.inode_security_struct* @backing_inode_security(i32 %87)
  store %struct.inode_security_struct* %88, %struct.inode_security_struct** %10, align 8
  %89 = load %struct.super_block*, %struct.super_block** %4, align 8
  %90 = load %struct.selinux_mnt_opts*, %struct.selinux_mnt_opts** %6, align 8
  %91 = getelementptr inbounds %struct.selinux_mnt_opts, %struct.selinux_mnt_opts* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @parse_sid(%struct.super_block* %89, i64 %92, i32* %8)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %3, align 4
  br label %148

98:                                               ; preds = %84
  %99 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %7, align 8
  %100 = load i32, i32* @ROOTCONTEXT_MNT, align 4
  %101 = load %struct.inode_security_struct*, %struct.inode_security_struct** %10, align 8
  %102 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i64 @bad_option(%struct.superblock_security_struct* %99, i32 %100, i32 %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %136

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108, %79
  %110 = load %struct.selinux_mnt_opts*, %struct.selinux_mnt_opts** %6, align 8
  %111 = getelementptr inbounds %struct.selinux_mnt_opts, %struct.selinux_mnt_opts* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %135

114:                                              ; preds = %109
  %115 = load %struct.super_block*, %struct.super_block** %4, align 8
  %116 = load %struct.selinux_mnt_opts*, %struct.selinux_mnt_opts** %6, align 8
  %117 = getelementptr inbounds %struct.selinux_mnt_opts, %struct.selinux_mnt_opts* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @parse_sid(%struct.super_block* %115, i64 %118, i32* %8)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %114
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %3, align 4
  br label %148

124:                                              ; preds = %114
  %125 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %7, align 8
  %126 = load i32, i32* @DEFCONTEXT_MNT, align 4
  %127 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %7, align 8
  %128 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i64 @bad_option(%struct.superblock_security_struct* %125, i32 %126, i32 %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %124
  br label %136

134:                                              ; preds = %124
  br label %135

135:                                              ; preds = %134, %109
  store i32 0, i32* %3, align 4
  br label %148

136:                                              ; preds = %133, %107, %77, %51
  %137 = load %struct.super_block*, %struct.super_block** %4, align 8
  %138 = getelementptr inbounds %struct.super_block, %struct.super_block* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.super_block*, %struct.super_block** %4, align 8
  %141 = getelementptr inbounds %struct.super_block, %struct.super_block* %140, i32 0, i32 0
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @pr_warn(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %139, i32 %144)
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %136, %135, %122, %96, %66, %40, %26, %22
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @parse_sid(%struct.super_block*, i64, i32*) #1

declare dso_local i64 @bad_option(%struct.superblock_security_struct*, i32, i32, i32) #1

declare dso_local %struct.inode_security_struct* @backing_inode_security(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
