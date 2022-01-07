; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_cmp_sb_context.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_cmp_sb_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_2__*, i32, i32, %struct.superblock_security_struct* }
%struct.TYPE_2__ = type { i32 }
%struct.superblock_security_struct = type { i8, i64, i64, i64 }
%struct.inode_security_struct = type { i64 }

@SE_MNTMASK = common dso_local global i8 0, align 1
@FSCONTEXT_MNT = common dso_local global i8 0, align 1
@CONTEXT_MNT = common dso_local global i8 0, align 1
@DEFCONTEXT_MNT = common dso_local global i8 0, align 1
@ROOTCONTEXT_MNT = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [93 x i8] c"SELinux: mount invalid.  Same superblock, different security settings for (dev %s, type %s)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.super_block*)* @selinux_cmp_sb_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_cmp_sb_context(%struct.super_block* %0, %struct.super_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.superblock_security_struct*, align 8
  %7 = alloca %struct.superblock_security_struct*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca %struct.inode_security_struct*, align 8
  %11 = alloca %struct.inode_security_struct*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.super_block* %1, %struct.super_block** %5, align 8
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 3
  %14 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %13, align 8
  store %struct.superblock_security_struct* %14, %struct.superblock_security_struct** %6, align 8
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 3
  %17 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %16, align 8
  store %struct.superblock_security_struct* %17, %struct.superblock_security_struct** %7, align 8
  %18 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %19 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 8
  %21 = sext i8 %20 to i32
  %22 = load i8, i8* @SE_MNTMASK, align 1
  %23 = sext i8 %22 to i32
  %24 = and i32 %21, %23
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %8, align 1
  %26 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %7, align 8
  %27 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %26, i32 0, i32 0
  %28 = load i8, i8* %27, align 8
  %29 = sext i8 %28 to i32
  %30 = load i8, i8* @SE_MNTMASK, align 1
  %31 = sext i8 %30 to i32
  %32 = and i32 %29, %31
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %9, align 1
  %34 = load i8, i8* %8, align 1
  %35 = sext i8 %34 to i32
  %36 = load i8, i8* %9, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %2
  br label %114

40:                                               ; preds = %2
  %41 = load i8, i8* %8, align 1
  %42 = sext i8 %41 to i32
  %43 = load i8, i8* @FSCONTEXT_MNT, align 1
  %44 = sext i8 %43 to i32
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %49 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %7, align 8
  %52 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %114

56:                                               ; preds = %47, %40
  %57 = load i8, i8* %8, align 1
  %58 = sext i8 %57 to i32
  %59 = load i8, i8* @CONTEXT_MNT, align 1
  %60 = sext i8 %59 to i32
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %65 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %7, align 8
  %68 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %114

72:                                               ; preds = %63, %56
  %73 = load i8, i8* %8, align 1
  %74 = sext i8 %73 to i32
  %75 = load i8, i8* @DEFCONTEXT_MNT, align 1
  %76 = sext i8 %75 to i32
  %77 = and i32 %74, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %72
  %80 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %81 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %7, align 8
  %84 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %114

88:                                               ; preds = %79, %72
  %89 = load i8, i8* %8, align 1
  %90 = sext i8 %89 to i32
  %91 = load i8, i8* @ROOTCONTEXT_MNT, align 1
  %92 = sext i8 %91 to i32
  %93 = and i32 %90, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %113

95:                                               ; preds = %88
  %96 = load %struct.super_block*, %struct.super_block** %4, align 8
  %97 = getelementptr inbounds %struct.super_block, %struct.super_block* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call %struct.inode_security_struct* @backing_inode_security(i32 %98)
  store %struct.inode_security_struct* %99, %struct.inode_security_struct** %10, align 8
  %100 = load %struct.super_block*, %struct.super_block** %5, align 8
  %101 = getelementptr inbounds %struct.super_block, %struct.super_block* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call %struct.inode_security_struct* @backing_inode_security(i32 %102)
  store %struct.inode_security_struct* %103, %struct.inode_security_struct** %11, align 8
  %104 = load %struct.inode_security_struct*, %struct.inode_security_struct** %10, align 8
  %105 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.inode_security_struct*, %struct.inode_security_struct** %11, align 8
  %108 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %106, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %95
  br label %114

112:                                              ; preds = %95
  br label %113

113:                                              ; preds = %112, %88
  store i32 0, i32* %3, align 4
  br label %126

114:                                              ; preds = %111, %87, %71, %55, %39
  %115 = load %struct.super_block*, %struct.super_block** %5, align 8
  %116 = getelementptr inbounds %struct.super_block, %struct.super_block* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.super_block*, %struct.super_block** %5, align 8
  %119 = getelementptr inbounds %struct.super_block, %struct.super_block* %118, i32 0, i32 0
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @pr_warn(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %122)
  %124 = load i32, i32* @EBUSY, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %114, %113
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.inode_security_struct* @backing_inode_security(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
