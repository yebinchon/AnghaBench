; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_ubifs_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_ubifs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.dentry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ubifs_inode = type { i32, i32 }
%struct.ubifs_budget_req = type { i32, i32, i32 }
%struct.fscrypt_name = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"dent '%pd' to ino %lu (nlink %d) in dir ino %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @ubifs_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.ubifs_info*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ubifs_inode*, align 8
  %11 = alloca %struct.ubifs_inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ubifs_budget_req, align 4
  %15 = alloca %struct.fscrypt_name, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 5
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %19, align 8
  store %struct.ubifs_info* %20, %struct.ubifs_info** %8, align 8
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = call %struct.inode* @d_inode(%struct.dentry* %21)
  store %struct.inode* %22, %struct.inode** %9, align 8
  %23 = load %struct.inode*, %struct.inode** %9, align 8
  %24 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %23)
  store %struct.ubifs_inode* %24, %struct.ubifs_inode** %10, align 8
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %25)
  store %struct.ubifs_inode* %26, %struct.ubifs_inode** %11, align 8
  %27 = load %struct.dentry*, %struct.dentry** %7, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @CALC_DENT_SIZE(i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %14, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %14, i32 0, i32 1
  store i32 2, i32* %33, align 4
  %34 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %14, i32 0, i32 2
  %35 = load %struct.ubifs_inode*, %struct.ubifs_inode** %10, align 8
  %36 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ALIGN(i32 %37, i32 8)
  store i32 %38, i32* %34, align 4
  %39 = load %struct.dentry*, %struct.dentry** %7, align 8
  %40 = load %struct.inode*, %struct.inode** %9, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.inode*, %struct.inode** %9, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dbg_gen(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.dentry* %39, i32 %42, i64 %45, i32 %48)
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = call i32 @inode_is_locked(%struct.inode* %51)
  %53 = call i32 @ubifs_assert(%struct.ubifs_info* %50, i32 %52)
  %54 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %55 = load %struct.inode*, %struct.inode** %9, align 8
  %56 = call i32 @inode_is_locked(%struct.inode* %55)
  %57 = call i32 @ubifs_assert(%struct.ubifs_info* %54, i32 %56)
  %58 = load %struct.dentry*, %struct.dentry** %5, align 8
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = load %struct.dentry*, %struct.dentry** %7, align 8
  %61 = call i32 @fscrypt_prepare_link(%struct.dentry* %58, %struct.inode* %59, %struct.dentry* %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %3
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %4, align 4
  br label %179

66:                                               ; preds = %3
  %67 = load %struct.inode*, %struct.inode** %6, align 8
  %68 = load %struct.dentry*, %struct.dentry** %7, align 8
  %69 = getelementptr inbounds %struct.dentry, %struct.dentry* %68, i32 0, i32 0
  %70 = call i32 @fscrypt_setup_filename(%struct.inode* %67, %struct.TYPE_4__* %69, i32 0, %struct.fscrypt_name* %15)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %4, align 4
  br label %179

75:                                               ; preds = %66
  %76 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %77 = load %struct.inode*, %struct.inode** %9, align 8
  %78 = call i32 @dbg_check_synced_i_size(%struct.ubifs_info* %76, %struct.inode* %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %176

82:                                               ; preds = %75
  %83 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %84 = call i32 @ubifs_budget_space(%struct.ubifs_info* %83, %struct.ubifs_budget_req* %14)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %176

88:                                               ; preds = %82
  %89 = load %struct.inode*, %struct.inode** %6, align 8
  %90 = load %struct.inode*, %struct.inode** %9, align 8
  %91 = call i32 @lock_2_inodes(%struct.inode* %89, %struct.inode* %90)
  %92 = load %struct.inode*, %struct.inode** %9, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %88
  %97 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %98 = load %struct.inode*, %struct.inode** %9, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ubifs_delete_orphan(%struct.ubifs_info* %97, i32 %100)
  br label %102

102:                                              ; preds = %96, %88
  %103 = load %struct.inode*, %struct.inode** %9, align 8
  %104 = call i32 @inc_nlink(%struct.inode* %103)
  %105 = load %struct.inode*, %struct.inode** %9, align 8
  %106 = call i32 @ihold(%struct.inode* %105)
  %107 = load %struct.inode*, %struct.inode** %9, align 8
  %108 = call i32 @current_time(%struct.inode* %107)
  %109 = load %struct.inode*, %struct.inode** %9, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.inode*, %struct.inode** %6, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load %struct.inode*, %struct.inode** %6, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %120 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load %struct.inode*, %struct.inode** %9, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.inode*, %struct.inode** %6, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 8
  %126 = load %struct.inode*, %struct.inode** %6, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 4
  store i32 %123, i32* %127, align 4
  %128 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %129 = load %struct.inode*, %struct.inode** %6, align 8
  %130 = load %struct.inode*, %struct.inode** %9, align 8
  %131 = call i32 @ubifs_jnl_update(%struct.ubifs_info* %128, %struct.inode* %129, %struct.fscrypt_name* %15, %struct.inode* %130, i32 0, i32 0)
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %102
  br label %145

135:                                              ; preds = %102
  %136 = load %struct.inode*, %struct.inode** %6, align 8
  %137 = load %struct.inode*, %struct.inode** %9, align 8
  %138 = call i32 @unlock_2_inodes(%struct.inode* %136, %struct.inode* %137)
  %139 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %140 = call i32 @ubifs_release_budget(%struct.ubifs_info* %139, %struct.ubifs_budget_req* %14)
  %141 = load %struct.dentry*, %struct.dentry** %7, align 8
  %142 = load %struct.inode*, %struct.inode** %9, align 8
  %143 = call i32 @d_instantiate(%struct.dentry* %141, %struct.inode* %142)
  %144 = call i32 @fscrypt_free_filename(%struct.fscrypt_name* %15)
  store i32 0, i32* %4, align 4
  br label %179

145:                                              ; preds = %134
  %146 = load i32, i32* %13, align 4
  %147 = load %struct.inode*, %struct.inode** %6, align 8
  %148 = getelementptr inbounds %struct.inode, %struct.inode* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = sub nsw i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load %struct.inode*, %struct.inode** %6, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %155 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 4
  %156 = load %struct.inode*, %struct.inode** %9, align 8
  %157 = call i32 @drop_nlink(%struct.inode* %156)
  %158 = load %struct.inode*, %struct.inode** %9, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %145
  %163 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %164 = load %struct.inode*, %struct.inode** %9, align 8
  %165 = getelementptr inbounds %struct.inode, %struct.inode* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @ubifs_add_orphan(%struct.ubifs_info* %163, i32 %166)
  br label %168

168:                                              ; preds = %162, %145
  %169 = load %struct.inode*, %struct.inode** %6, align 8
  %170 = load %struct.inode*, %struct.inode** %9, align 8
  %171 = call i32 @unlock_2_inodes(%struct.inode* %169, %struct.inode* %170)
  %172 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %173 = call i32 @ubifs_release_budget(%struct.ubifs_info* %172, %struct.ubifs_budget_req* %14)
  %174 = load %struct.inode*, %struct.inode** %9, align 8
  %175 = call i32 @iput(%struct.inode* %174)
  br label %176

176:                                              ; preds = %168, %87, %81
  %177 = call i32 @fscrypt_free_filename(%struct.fscrypt_name* %15)
  %178 = load i32, i32* %12, align 4
  store i32 %178, i32* %4, align 4
  br label %179

179:                                              ; preds = %176, %135, %73, %64
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @CALC_DENT_SIZE(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dbg_gen(i8*, %struct.dentry*, i32, i64, i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @inode_is_locked(%struct.inode*) #1

declare dso_local i32 @fscrypt_prepare_link(%struct.dentry*, %struct.inode*, %struct.dentry*) #1

declare dso_local i32 @fscrypt_setup_filename(%struct.inode*, %struct.TYPE_4__*, i32, %struct.fscrypt_name*) #1

declare dso_local i32 @dbg_check_synced_i_size(%struct.ubifs_info*, %struct.inode*) #1

declare dso_local i32 @ubifs_budget_space(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @lock_2_inodes(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ubifs_delete_orphan(%struct.ubifs_info*, i32) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @ubifs_jnl_update(%struct.ubifs_info*, %struct.inode*, %struct.fscrypt_name*, %struct.inode*, i32, i32) #1

declare dso_local i32 @unlock_2_inodes(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ubifs_release_budget(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @fscrypt_free_filename(%struct.fscrypt_name*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @ubifs_add_orphan(%struct.ubifs_info*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
