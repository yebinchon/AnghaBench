; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_sb_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_sb_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.seq_file = type { i32 }
%struct.super_block = type { %struct.superblock_security_struct* }
%struct.superblock_security_struct = type { i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.inode_security_struct = type { i32 }

@SE_SBINITIALIZED = common dso_local global i32 0, align 4
@selinux_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@FSCONTEXT_MNT = common dso_local global i32 0, align 4
@FSCONTEXT_STR = common dso_local global i32 0, align 4
@CONTEXT_MNT = common dso_local global i32 0, align 4
@CONTEXT_STR = common dso_local global i32 0, align 4
@DEFCONTEXT_MNT = common dso_local global i32 0, align 4
@DEFCONTEXT_STR = common dso_local global i32 0, align 4
@ROOTCONTEXT_MNT = common dso_local global i32 0, align 4
@ROOTCONTEXT_STR = common dso_local global i32 0, align 4
@SBLABEL_MNT = common dso_local global i32 0, align 4
@SECLABEL_STR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.super_block*)* @selinux_sb_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_sb_show_options(%struct.seq_file* %0, %struct.super_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.superblock_security_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode_security_struct*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.super_block* %1, %struct.super_block** %5, align 8
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 0
  %12 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %11, align 8
  store %struct.superblock_security_struct* %12, %struct.superblock_security_struct** %6, align 8
  %13 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %14 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SE_SBINITIALIZED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %137

20:                                               ; preds = %2
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @selinux_state, i32 0, i32 0), align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %137

24:                                               ; preds = %20
  %25 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %26 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FSCONTEXT_MNT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %24
  %32 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %33 = call i32 @seq_putc(%struct.seq_file* %32, i8 signext 44)
  %34 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %35 = load i32, i32* @FSCONTEXT_STR, align 4
  %36 = call i32 @seq_puts(%struct.seq_file* %34, i32 %35)
  %37 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %38 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %39 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @show_sid(%struct.seq_file* %37, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %137

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %46, %24
  %48 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %49 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @CONTEXT_MNT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %47
  %55 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %56 = call i32 @seq_putc(%struct.seq_file* %55, i8 signext 44)
  %57 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %58 = load i32, i32* @CONTEXT_STR, align 4
  %59 = call i32 @seq_puts(%struct.seq_file* %57, i32 %58)
  %60 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %61 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %62 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @show_sid(%struct.seq_file* %60, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %137

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69, %47
  %71 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %72 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @DEFCONTEXT_MNT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %70
  %78 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %79 = call i32 @seq_putc(%struct.seq_file* %78, i8 signext 44)
  %80 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %81 = load i32, i32* @DEFCONTEXT_STR, align 4
  %82 = call i32 @seq_puts(%struct.seq_file* %80, i32 %81)
  %83 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %84 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %85 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @show_sid(%struct.seq_file* %83, i32 %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %77
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %3, align 4
  br label %137

92:                                               ; preds = %77
  br label %93

93:                                               ; preds = %92, %70
  %94 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %95 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @ROOTCONTEXT_MNT, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %123

100:                                              ; preds = %93
  %101 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %102 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %101, i32 0, i32 1
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load %struct.dentry*, %struct.dentry** %104, align 8
  store %struct.dentry* %105, %struct.dentry** %8, align 8
  %106 = load %struct.dentry*, %struct.dentry** %8, align 8
  %107 = call %struct.inode_security_struct* @backing_inode_security(%struct.dentry* %106)
  store %struct.inode_security_struct* %107, %struct.inode_security_struct** %9, align 8
  %108 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %109 = call i32 @seq_putc(%struct.seq_file* %108, i8 signext 44)
  %110 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %111 = load i32, i32* @ROOTCONTEXT_STR, align 4
  %112 = call i32 @seq_puts(%struct.seq_file* %110, i32 %111)
  %113 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %114 = load %struct.inode_security_struct*, %struct.inode_security_struct** %9, align 8
  %115 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @show_sid(%struct.seq_file* %113, i32 %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %100
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %3, align 4
  br label %137

122:                                              ; preds = %100
  br label %123

123:                                              ; preds = %122, %93
  %124 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %125 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @SBLABEL_MNT, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %123
  %131 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %132 = call i32 @seq_putc(%struct.seq_file* %131, i8 signext 44)
  %133 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %134 = load i32, i32* @SECLABEL_STR, align 4
  %135 = call i32 @seq_puts(%struct.seq_file* %133, i32 %134)
  br label %136

136:                                              ; preds = %130, %123
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %120, %90, %67, %44, %23, %19
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i32) #1

declare dso_local i32 @show_sid(%struct.seq_file*, i32) #1

declare dso_local %struct.inode_security_struct* @backing_inode_security(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
