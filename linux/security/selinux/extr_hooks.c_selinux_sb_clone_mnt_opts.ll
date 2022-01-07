; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_sb_clone_mnt_opts.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_selinux_sb_clone_mnt_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.super_block = type { i32, %struct.superblock_security_struct* }
%struct.superblock_security_struct = type { i32, i64, i32, i8*, i8*, i32 }
%struct.inode_security_struct = type { i8* }

@FSCONTEXT_MNT = common dso_local global i32 0, align 4
@CONTEXT_MNT = common dso_local global i32 0, align 4
@ROOTCONTEXT_MNT = common dso_local global i32 0, align 4
@selinux_state = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@SE_SBINITIALIZED = common dso_local global i32 0, align 4
@SECURITY_LSM_NATIVE_LABELS = common dso_local global i64 0, align 8
@SECURITY_FS_USE_NATIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.super_block*, i64, i64*)* @selinux_sb_clone_mnt_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_sb_clone_mnt_opts(%struct.super_block* %0, %struct.super_block* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.superblock_security_struct*, align 8
  %12 = alloca %struct.superblock_security_struct*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.inode_security_struct*, align 8
  %18 = alloca %struct.inode_security_struct*, align 8
  %19 = alloca %struct.inode_security_struct*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.super_block* %1, %struct.super_block** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.super_block*, %struct.super_block** %6, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 1
  %22 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %21, align 8
  store %struct.superblock_security_struct* %22, %struct.superblock_security_struct** %11, align 8
  %23 = load %struct.super_block*, %struct.super_block** %7, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 1
  %25 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %24, align 8
  store %struct.superblock_security_struct* %25, %struct.superblock_security_struct** %12, align 8
  %26 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %11, align 8
  %27 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @FSCONTEXT_MNT, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %13, align 4
  %31 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %11, align 8
  %32 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CONTEXT_MNT, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %14, align 4
  %36 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %11, align 8
  %37 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ROOTCONTEXT_MNT, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @selinux_state, i32 0, i32 0), align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %202

44:                                               ; preds = %4
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i64*, i64** %9, align 8
  %49 = icmp ne i64* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %202

53:                                               ; preds = %47, %44
  %54 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %11, align 8
  %55 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SE_SBINITIALIZED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUG_ON(i32 %61)
  %63 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %12, align 8
  %64 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @SE_SBINITIALIZED, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %53
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @SECURITY_LSM_NATIVE_LABELS, align 8
  %72 = and i64 %70, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = load i64, i64* @SECURITY_LSM_NATIVE_LABELS, align 8
  %79 = load i64*, i64** %9, align 8
  %80 = load i64, i64* %79, align 8
  %81 = or i64 %80, %78
  store i64 %81, i64* %79, align 8
  br label %82

82:                                               ; preds = %77, %74, %69
  %83 = load %struct.super_block*, %struct.super_block** %6, align 8
  %84 = load %struct.super_block*, %struct.super_block** %7, align 8
  %85 = call i32 @selinux_cmp_sb_context(%struct.super_block* %83, %struct.super_block* %84)
  store i32 %85, i32* %5, align 4
  br label %202

86:                                               ; preds = %53
  %87 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %12, align 8
  %88 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %87, i32 0, i32 2
  %89 = call i32 @mutex_lock(i32* %88)
  %90 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %11, align 8
  %91 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %12, align 8
  %94 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %11, align 8
  %96 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %95, i32 0, i32 4
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %12, align 8
  %99 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %98, i32 0, i32 4
  store i8* %97, i8** %99, align 8
  %100 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %11, align 8
  %101 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %12, align 8
  %104 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  %105 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %11, align 8
  %106 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %12, align 8
  %109 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  %110 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %12, align 8
  %111 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @SECURITY_FS_USE_NATIVE, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %86
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* @SECURITY_LSM_NATIVE_LABELS, align 8
  %118 = and i64 %116, %117
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %130, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %120
  %124 = load %struct.super_block*, %struct.super_block** %7, align 8
  %125 = call i32 @security_fs_use(%struct.TYPE_3__* @selinux_state, %struct.super_block* %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %197

129:                                              ; preds = %123
  br label %130

130:                                              ; preds = %129, %120, %115, %86
  %131 = load i64, i64* %8, align 8
  %132 = load i64, i64* @SECURITY_LSM_NATIVE_LABELS, align 8
  %133 = and i64 %131, %132
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %130
  %136 = load i32, i32* %14, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %135
  %139 = load i64, i64* @SECURITY_FS_USE_NATIVE, align 8
  %140 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %12, align 8
  %141 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  %142 = load i64, i64* @SECURITY_LSM_NATIVE_LABELS, align 8
  %143 = load i64*, i64** %9, align 8
  %144 = load i64, i64* %143, align 8
  %145 = or i64 %144, %142
  store i64 %145, i64* %143, align 8
  br label %146

146:                                              ; preds = %138, %135, %130
  %147 = load i32, i32* %14, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %175

149:                                              ; preds = %146
  %150 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %11, align 8
  %151 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %150, i32 0, i32 3
  %152 = load i8*, i8** %151, align 8
  store i8* %152, i8** %16, align 8
  %153 = load i32, i32* %13, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %149
  %156 = load i8*, i8** %16, align 8
  %157 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %12, align 8
  %158 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %157, i32 0, i32 4
  store i8* %156, i8** %158, align 8
  br label %159

159:                                              ; preds = %155, %149
  %160 = load i32, i32* %15, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %171, label %162

162:                                              ; preds = %159
  %163 = load %struct.super_block*, %struct.super_block** %7, align 8
  %164 = getelementptr inbounds %struct.super_block, %struct.super_block* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i8* @backing_inode_security(i32 %165)
  %167 = bitcast i8* %166 to %struct.inode_security_struct*
  store %struct.inode_security_struct* %167, %struct.inode_security_struct** %17, align 8
  %168 = load i8*, i8** %16, align 8
  %169 = load %struct.inode_security_struct*, %struct.inode_security_struct** %17, align 8
  %170 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %169, i32 0, i32 0
  store i8* %168, i8** %170, align 8
  br label %171

171:                                              ; preds = %162, %159
  %172 = load i8*, i8** %16, align 8
  %173 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %12, align 8
  %174 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %173, i32 0, i32 3
  store i8* %172, i8** %174, align 8
  br label %175

175:                                              ; preds = %171, %146
  %176 = load i32, i32* %15, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %194

178:                                              ; preds = %175
  %179 = load %struct.super_block*, %struct.super_block** %6, align 8
  %180 = getelementptr inbounds %struct.super_block, %struct.super_block* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i8* @backing_inode_security(i32 %181)
  %183 = bitcast i8* %182 to %struct.inode_security_struct*
  store %struct.inode_security_struct* %183, %struct.inode_security_struct** %18, align 8
  %184 = load %struct.super_block*, %struct.super_block** %7, align 8
  %185 = getelementptr inbounds %struct.super_block, %struct.super_block* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i8* @backing_inode_security(i32 %186)
  %188 = bitcast i8* %187 to %struct.inode_security_struct*
  store %struct.inode_security_struct* %188, %struct.inode_security_struct** %19, align 8
  %189 = load %struct.inode_security_struct*, %struct.inode_security_struct** %18, align 8
  %190 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = load %struct.inode_security_struct*, %struct.inode_security_struct** %19, align 8
  %193 = getelementptr inbounds %struct.inode_security_struct, %struct.inode_security_struct* %192, i32 0, i32 0
  store i8* %191, i8** %193, align 8
  br label %194

194:                                              ; preds = %178, %175
  %195 = load %struct.super_block*, %struct.super_block** %7, align 8
  %196 = call i32 @sb_finish_set_opts(%struct.super_block* %195)
  br label %197

197:                                              ; preds = %194, %128
  %198 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %12, align 8
  %199 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %198, i32 0, i32 2
  %200 = call i32 @mutex_unlock(i32* %199)
  %201 = load i32, i32* %10, align 4
  store i32 %201, i32* %5, align 4
  br label %202

202:                                              ; preds = %197, %82, %50, %43
  %203 = load i32, i32* %5, align 4
  ret i32 %203
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @selinux_cmp_sb_context(%struct.super_block*, %struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @security_fs_use(%struct.TYPE_3__*, %struct.super_block*) #1

declare dso_local i8* @backing_inode_security(i32) #1

declare dso_local i32 @sb_finish_set_opts(%struct.super_block*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
