; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_copy_up.c_ovl_copy_up_workdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_copy_up.c_ovl_copy_up_workdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ovl_copy_up_ctx = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.ovl_cu_creds = type { i32 }
%struct.ovl_cattr = type { i32, i32, i32 }

@S_IFMT = common dso_local global i32 0, align 4
@OVL_WHITEOUTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ovl_copy_up_ctx*)* @ovl_copy_up_workdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_copy_up_workdir(%struct.ovl_copy_up_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ovl_copy_up_ctx*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.ovl_cu_creds, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ovl_cattr, align 4
  store %struct.ovl_copy_up_ctx* %0, %struct.ovl_copy_up_ctx** %3, align 8
  %12 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.inode* @d_inode(i32 %14)
  store %struct.inode* %15, %struct.inode** %5, align 8
  %16 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.inode* @d_inode(i32 %18)
  store %struct.inode* %19, %struct.inode** %6, align 8
  %20 = getelementptr inbounds %struct.ovl_cattr, %struct.ovl_cattr* %11, i32 0, i32 0
  %21 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @S_IFMT, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %20, align 4
  %27 = getelementptr inbounds %struct.ovl_cattr, %struct.ovl_cattr* %11, i32 0, i32 1
  %28 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %27, align 4
  %31 = getelementptr inbounds %struct.ovl_cattr, %struct.ovl_cattr* %11, i32 0, i32 2
  %32 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %32, i32 0, i32 7
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %31, align 4
  %36 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ovl_lock_rename_workdir(i32 %38, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %1
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %2, align 4
  br label %174

47:                                               ; preds = %1
  %48 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %49 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ovl_prep_cu_creds(i32 %50, %struct.ovl_cu_creds* %9)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %159

55:                                               ; preds = %47
  %56 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %57 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.dentry* @ovl_create_temp(i32 %58, %struct.ovl_cattr* %11)
  store %struct.dentry* %59, %struct.dentry** %7, align 8
  %60 = call i32 @ovl_revert_cu_creds(%struct.ovl_cu_creds* %9)
  %61 = load %struct.dentry*, %struct.dentry** %7, align 8
  %62 = call i32 @PTR_ERR(%struct.dentry* %61)
  store i32 %62, i32* %10, align 4
  %63 = load %struct.dentry*, %struct.dentry** %7, align 8
  %64 = call i64 @IS_ERR(%struct.dentry* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %159

67:                                               ; preds = %55
  %68 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %69 = load %struct.dentry*, %struct.dentry** %7, align 8
  %70 = call i32 @ovl_copy_up_inode(%struct.ovl_copy_up_ctx* %68, %struct.dentry* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %168

74:                                               ; preds = %67
  %75 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %76 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %75, i32 0, i32 7
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @S_ISDIR(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %74
  %82 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %83 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %81
  %87 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %88 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %91 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.dentry*, %struct.dentry** %7, align 8
  %95 = call i32 @ovl_create_index(i32 %89, i32 %93, %struct.dentry* %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %86
  br label %168

99:                                               ; preds = %86
  br label %100

100:                                              ; preds = %99, %81, %74
  %101 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %102 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %106 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %109 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call %struct.dentry* @lookup_one_len(i32 %104, i32 %107, i32 %111)
  store %struct.dentry* %112, %struct.dentry** %8, align 8
  %113 = load %struct.dentry*, %struct.dentry** %8, align 8
  %114 = call i32 @PTR_ERR(%struct.dentry* %113)
  store i32 %114, i32* %10, align 4
  %115 = load %struct.dentry*, %struct.dentry** %8, align 8
  %116 = call i64 @IS_ERR(%struct.dentry* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %100
  br label %168

119:                                              ; preds = %100
  %120 = load %struct.inode*, %struct.inode** %6, align 8
  %121 = load %struct.dentry*, %struct.dentry** %7, align 8
  %122 = load %struct.inode*, %struct.inode** %5, align 8
  %123 = load %struct.dentry*, %struct.dentry** %8, align 8
  %124 = call i32 @ovl_do_rename(%struct.inode* %120, %struct.dentry* %121, %struct.inode* %122, %struct.dentry* %123, i32 0)
  store i32 %124, i32* %10, align 4
  %125 = load %struct.dentry*, %struct.dentry** %8, align 8
  %126 = call i32 @dput(%struct.dentry* %125)
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %119
  br label %168

130:                                              ; preds = %119
  %131 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %132 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %130
  %136 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %137 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call %struct.inode* @d_inode(i32 %138)
  %140 = call i32 @ovl_set_upperdata(%struct.inode* %139)
  br label %141

141:                                              ; preds = %135, %130
  %142 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %143 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call %struct.inode* @d_inode(i32 %144)
  store %struct.inode* %145, %struct.inode** %4, align 8
  %146 = load %struct.inode*, %struct.inode** %4, align 8
  %147 = load %struct.dentry*, %struct.dentry** %7, align 8
  %148 = call i32 @ovl_inode_update(%struct.inode* %146, %struct.dentry* %147)
  %149 = load %struct.inode*, %struct.inode** %4, align 8
  %150 = getelementptr inbounds %struct.inode, %struct.inode* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @S_ISDIR(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %141
  %155 = load i32, i32* @OVL_WHITEOUTS, align 4
  %156 = load %struct.inode*, %struct.inode** %4, align 8
  %157 = call i32 @ovl_set_flag(i32 %155, %struct.inode* %156)
  br label %158

158:                                              ; preds = %154, %141
  br label %159

159:                                              ; preds = %168, %158, %66, %54
  %160 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %161 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %3, align 8
  %164 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @unlock_rename(i32 %162, i32 %165)
  %167 = load i32, i32* %10, align 4
  store i32 %167, i32* %2, align 4
  br label %174

168:                                              ; preds = %129, %118, %98, %73
  %169 = load %struct.inode*, %struct.inode** %6, align 8
  %170 = load %struct.dentry*, %struct.dentry** %7, align 8
  %171 = call i32 @ovl_cleanup(%struct.inode* %169, %struct.dentry* %170)
  %172 = load %struct.dentry*, %struct.dentry** %7, align 8
  %173 = call i32 @dput(%struct.dentry* %172)
  br label %159

174:                                              ; preds = %159, %45
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @ovl_lock_rename_workdir(i32, i32) #1

declare dso_local i32 @ovl_prep_cu_creds(i32, %struct.ovl_cu_creds*) #1

declare dso_local %struct.dentry* @ovl_create_temp(i32, %struct.ovl_cattr*) #1

declare dso_local i32 @ovl_revert_cu_creds(%struct.ovl_cu_creds*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @ovl_copy_up_inode(%struct.ovl_copy_up_ctx*, %struct.dentry*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @ovl_create_index(i32, i32, %struct.dentry*) #1

declare dso_local %struct.dentry* @lookup_one_len(i32, i32, i32) #1

declare dso_local i32 @ovl_do_rename(%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @ovl_set_upperdata(%struct.inode*) #1

declare dso_local i32 @ovl_inode_update(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @ovl_set_flag(i32, %struct.inode*) #1

declare dso_local i32 @unlock_rename(i32, i32) #1

declare dso_local i32 @ovl_cleanup(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
