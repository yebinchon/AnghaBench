; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_set_mnt_opts.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_set_mnt_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64, i32*, %struct.superblock_smack*, %struct.dentry* }
%struct.superblock_smack = type { i32, %struct.smack_known*, %struct.smack_known*, %struct.smack_known*, %struct.smack_known* }
%struct.smack_known = type { i32 }
%struct.dentry = type { i32 }
%struct.inode = type { i32* }
%struct.inode_smack = type { i32 }
%struct.smack_mnt_opts = type { i64, i64, i64, i64, i64 }

@SMK_SB_INITIALIZED = common dso_local global i32 0, align 4
@CAP_MAC_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@SYSFS_MAGIC = common dso_local global i64 0, align 8
@TMPFS_MAGIC = common dso_local global i64 0, align 8
@RAMFS_MAGIC = common dso_local global i64 0, align 8
@SMK_SB_UNTRUSTED = common dso_local global i32 0, align 4
@SMK_INODE_TRANSMUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i64, i64*)* @smack_set_mnt_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smack_set_mnt_opts(%struct.super_block* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.superblock_smack*, align 8
  %13 = alloca %struct.inode_smack*, align 8
  %14 = alloca %struct.smack_known*, align 8
  %15 = alloca %struct.smack_mnt_opts*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %18 = load %struct.super_block*, %struct.super_block** %6, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 3
  %20 = load %struct.dentry*, %struct.dentry** %19, align 8
  store %struct.dentry* %20, %struct.dentry** %10, align 8
  %21 = load %struct.dentry*, %struct.dentry** %10, align 8
  %22 = call %struct.inode* @d_backing_inode(%struct.dentry* %21)
  store %struct.inode* %22, %struct.inode** %11, align 8
  %23 = load %struct.super_block*, %struct.super_block** %6, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 2
  %25 = load %struct.superblock_smack*, %struct.superblock_smack** %24, align 8
  store %struct.superblock_smack* %25, %struct.superblock_smack** %12, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to %struct.smack_mnt_opts*
  store %struct.smack_mnt_opts* %27, %struct.smack_mnt_opts** %15, align 8
  store i32 0, i32* %16, align 4
  %28 = load %struct.superblock_smack*, %struct.superblock_smack** %12, align 8
  %29 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SMK_SB_INITIALIZED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %221

35:                                               ; preds = %4
  %36 = load %struct.inode*, %struct.inode** %11, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.inode*, %struct.inode** %11, align 8
  %42 = call i32 @lsm_inode_alloc(%struct.inode* %41)
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %17, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %17, align 4
  store i32 %46, i32* %5, align 4
  br label %221

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %35
  %49 = load i32, i32* @CAP_MAC_ADMIN, align 4
  %50 = call i32 @smack_privileged(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %95, label %52

52:                                               ; preds = %48
  %53 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %15, align 8
  %54 = icmp ne %struct.smack_mnt_opts* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @EPERM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %221

58:                                               ; preds = %52
  %59 = call %struct.smack_known* (...) @smk_of_current()
  store %struct.smack_known* %59, %struct.smack_known** %14, align 8
  %60 = load %struct.smack_known*, %struct.smack_known** %14, align 8
  %61 = load %struct.superblock_smack*, %struct.superblock_smack** %12, align 8
  %62 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %61, i32 0, i32 1
  store %struct.smack_known* %60, %struct.smack_known** %62, align 8
  %63 = load %struct.smack_known*, %struct.smack_known** %14, align 8
  %64 = load %struct.superblock_smack*, %struct.superblock_smack** %12, align 8
  %65 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %64, i32 0, i32 4
  store %struct.smack_known* %63, %struct.smack_known** %65, align 8
  %66 = load %struct.super_block*, %struct.super_block** %6, align 8
  %67 = getelementptr inbounds %struct.super_block, %struct.super_block* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, @init_user_ns
  br i1 %69, label %70, label %94

70:                                               ; preds = %58
  %71 = load %struct.super_block*, %struct.super_block** %6, align 8
  %72 = getelementptr inbounds %struct.super_block, %struct.super_block* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SYSFS_MAGIC, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %70
  %77 = load %struct.super_block*, %struct.super_block** %6, align 8
  %78 = getelementptr inbounds %struct.super_block, %struct.super_block* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @TMPFS_MAGIC, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %76
  %83 = load %struct.super_block*, %struct.super_block** %6, align 8
  %84 = getelementptr inbounds %struct.super_block, %struct.super_block* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @RAMFS_MAGIC, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  store i32 1, i32* %16, align 4
  %89 = load i32, i32* @SMK_SB_UNTRUSTED, align 4
  %90 = load %struct.superblock_smack*, %struct.superblock_smack** %12, align 8
  %91 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %88, %82, %76, %70, %58
  br label %95

95:                                               ; preds = %94, %48
  %96 = load i32, i32* @SMK_SB_INITIALIZED, align 4
  %97 = load %struct.superblock_smack*, %struct.superblock_smack** %12, align 8
  %98 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %15, align 8
  %102 = icmp ne %struct.smack_mnt_opts* %101, null
  br i1 %102, label %103, label %204

103:                                              ; preds = %95
  %104 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %15, align 8
  %105 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %103
  %109 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %15, align 8
  %110 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = call %struct.smack_known* @smk_import_entry(i64 %111, i32 0)
  store %struct.smack_known* %112, %struct.smack_known** %14, align 8
  %113 = load %struct.smack_known*, %struct.smack_known** %14, align 8
  %114 = call i64 @IS_ERR(%struct.smack_known* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %108
  %117 = load %struct.smack_known*, %struct.smack_known** %14, align 8
  %118 = call i32 @PTR_ERR(%struct.smack_known* %117)
  store i32 %118, i32* %5, align 4
  br label %221

119:                                              ; preds = %108
  %120 = load %struct.smack_known*, %struct.smack_known** %14, align 8
  %121 = load %struct.superblock_smack*, %struct.superblock_smack** %12, align 8
  %122 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %121, i32 0, i32 4
  store %struct.smack_known* %120, %struct.smack_known** %122, align 8
  br label %123

123:                                              ; preds = %119, %103
  %124 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %15, align 8
  %125 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %123
  %129 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %15, align 8
  %130 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = call %struct.smack_known* @smk_import_entry(i64 %131, i32 0)
  store %struct.smack_known* %132, %struct.smack_known** %14, align 8
  %133 = load %struct.smack_known*, %struct.smack_known** %14, align 8
  %134 = call i64 @IS_ERR(%struct.smack_known* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = load %struct.smack_known*, %struct.smack_known** %14, align 8
  %138 = call i32 @PTR_ERR(%struct.smack_known* %137)
  store i32 %138, i32* %5, align 4
  br label %221

139:                                              ; preds = %128
  %140 = load %struct.smack_known*, %struct.smack_known** %14, align 8
  %141 = load %struct.superblock_smack*, %struct.superblock_smack** %12, align 8
  %142 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %141, i32 0, i32 3
  store %struct.smack_known* %140, %struct.smack_known** %142, align 8
  br label %143

143:                                              ; preds = %139, %123
  %144 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %15, align 8
  %145 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %163

148:                                              ; preds = %143
  %149 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %15, align 8
  %150 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = call %struct.smack_known* @smk_import_entry(i64 %151, i32 0)
  store %struct.smack_known* %152, %struct.smack_known** %14, align 8
  %153 = load %struct.smack_known*, %struct.smack_known** %14, align 8
  %154 = call i64 @IS_ERR(%struct.smack_known* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %148
  %157 = load %struct.smack_known*, %struct.smack_known** %14, align 8
  %158 = call i32 @PTR_ERR(%struct.smack_known* %157)
  store i32 %158, i32* %5, align 4
  br label %221

159:                                              ; preds = %148
  %160 = load %struct.smack_known*, %struct.smack_known** %14, align 8
  %161 = load %struct.superblock_smack*, %struct.superblock_smack** %12, align 8
  %162 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %161, i32 0, i32 2
  store %struct.smack_known* %160, %struct.smack_known** %162, align 8
  br label %163

163:                                              ; preds = %159, %143
  %164 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %15, align 8
  %165 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %183

168:                                              ; preds = %163
  %169 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %15, align 8
  %170 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = call %struct.smack_known* @smk_import_entry(i64 %171, i32 0)
  store %struct.smack_known* %172, %struct.smack_known** %14, align 8
  %173 = load %struct.smack_known*, %struct.smack_known** %14, align 8
  %174 = call i64 @IS_ERR(%struct.smack_known* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %168
  %177 = load %struct.smack_known*, %struct.smack_known** %14, align 8
  %178 = call i32 @PTR_ERR(%struct.smack_known* %177)
  store i32 %178, i32* %5, align 4
  br label %221

179:                                              ; preds = %168
  %180 = load %struct.smack_known*, %struct.smack_known** %14, align 8
  %181 = load %struct.superblock_smack*, %struct.superblock_smack** %12, align 8
  %182 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %181, i32 0, i32 1
  store %struct.smack_known* %180, %struct.smack_known** %182, align 8
  br label %183

183:                                              ; preds = %179, %163
  %184 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %15, align 8
  %185 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %203

188:                                              ; preds = %183
  %189 = load %struct.smack_mnt_opts*, %struct.smack_mnt_opts** %15, align 8
  %190 = getelementptr inbounds %struct.smack_mnt_opts, %struct.smack_mnt_opts* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = call %struct.smack_known* @smk_import_entry(i64 %191, i32 0)
  store %struct.smack_known* %192, %struct.smack_known** %14, align 8
  %193 = load %struct.smack_known*, %struct.smack_known** %14, align 8
  %194 = call i64 @IS_ERR(%struct.smack_known* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %188
  %197 = load %struct.smack_known*, %struct.smack_known** %14, align 8
  %198 = call i32 @PTR_ERR(%struct.smack_known* %197)
  store i32 %198, i32* %5, align 4
  br label %221

199:                                              ; preds = %188
  %200 = load %struct.smack_known*, %struct.smack_known** %14, align 8
  %201 = load %struct.superblock_smack*, %struct.superblock_smack** %12, align 8
  %202 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %201, i32 0, i32 1
  store %struct.smack_known* %200, %struct.smack_known** %202, align 8
  store i32 1, i32* %16, align 4
  br label %203

203:                                              ; preds = %199, %183
  br label %204

204:                                              ; preds = %203, %95
  %205 = load %struct.inode*, %struct.inode** %11, align 8
  %206 = load %struct.superblock_smack*, %struct.superblock_smack** %12, align 8
  %207 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %206, i32 0, i32 1
  %208 = load %struct.smack_known*, %struct.smack_known** %207, align 8
  %209 = call i32 @init_inode_smack(%struct.inode* %205, %struct.smack_known* %208)
  %210 = load i32, i32* %16, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %220

212:                                              ; preds = %204
  %213 = load %struct.inode*, %struct.inode** %11, align 8
  %214 = call %struct.inode_smack* @smack_inode(%struct.inode* %213)
  store %struct.inode_smack* %214, %struct.inode_smack** %13, align 8
  %215 = load i32, i32* @SMK_INODE_TRANSMUTE, align 4
  %216 = load %struct.inode_smack*, %struct.inode_smack** %13, align 8
  %217 = getelementptr inbounds %struct.inode_smack, %struct.inode_smack* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = or i32 %218, %215
  store i32 %219, i32* %217, align 4
  br label %220

220:                                              ; preds = %212, %204
  store i32 0, i32* %5, align 4
  br label %221

221:                                              ; preds = %220, %196, %176, %156, %136, %116, %55, %45, %34
  %222 = load i32, i32* %5, align 4
  ret i32 %222
}

declare dso_local %struct.inode* @d_backing_inode(%struct.dentry*) #1

declare dso_local i32 @lsm_inode_alloc(%struct.inode*) #1

declare dso_local i32 @smack_privileged(i32) #1

declare dso_local %struct.smack_known* @smk_of_current(...) #1

declare dso_local %struct.smack_known* @smk_import_entry(i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.smack_known*) #1

declare dso_local i32 @PTR_ERR(%struct.smack_known*) #1

declare dso_local i32 @init_inode_smack(%struct.inode*, %struct.smack_known*) #1

declare dso_local %struct.inode_smack* @smack_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
