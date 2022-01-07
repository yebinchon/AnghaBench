; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_export.c_ovl_obtain_alias.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_export.c_ovl_obtain_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ovl_path = type { i32, %struct.dentry* }
%struct.dentry = type { %struct.ovl_entry* }
%struct.ovl_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8* }
%struct.inode = type { i32 }
%struct.ovl_inode_params = type { i32, i8*, %struct.dentry*, %struct.ovl_path* }

@EIO = common dso_local global i32 0, align 4
@OVL_UPPERDATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.dentry*, %struct.ovl_path*, %struct.dentry*)* @ovl_obtain_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ovl_obtain_alias(%struct.super_block* %0, %struct.dentry* %1, %struct.ovl_path* %2, %struct.dentry* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.ovl_path*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.ovl_entry*, align 8
  %15 = alloca %struct.ovl_inode_params, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.ovl_path* %2, %struct.ovl_path** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  %16 = load %struct.ovl_path*, %struct.ovl_path** %8, align 8
  %17 = icmp ne %struct.ovl_path* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load %struct.ovl_path*, %struct.ovl_path** %8, align 8
  %20 = getelementptr inbounds %struct.ovl_path, %struct.ovl_path* %19, i32 0, i32 1
  %21 = load %struct.dentry*, %struct.dentry** %20, align 8
  br label %23

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi %struct.dentry* [ %21, %18 ], [ null, %22 ]
  store %struct.dentry* %24, %struct.dentry** %10, align 8
  %25 = load %struct.dentry*, %struct.dentry** %7, align 8
  %26 = icmp ne %struct.dentry* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %30

28:                                               ; preds = %23
  %29 = load %struct.dentry*, %struct.dentry** %9, align 8
  br label %30

30:                                               ; preds = %28, %27
  %31 = phi %struct.dentry* [ %25, %27 ], [ %29, %28 ]
  store %struct.dentry* %31, %struct.dentry** %11, align 8
  %32 = getelementptr inbounds %struct.ovl_inode_params, %struct.ovl_inode_params* %15, i32 0, i32 0
  %33 = load %struct.dentry*, %struct.dentry** %10, align 8
  %34 = icmp ne %struct.dentry* %33, null
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %32, align 8
  %38 = getelementptr inbounds %struct.ovl_inode_params, %struct.ovl_inode_params* %15, i32 0, i32 1
  store i8* null, i8** %38, align 8
  %39 = getelementptr inbounds %struct.ovl_inode_params, %struct.ovl_inode_params* %15, i32 0, i32 2
  %40 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %40, %struct.dentry** %39, align 8
  %41 = getelementptr inbounds %struct.ovl_inode_params, %struct.ovl_inode_params* %15, i32 0, i32 3
  %42 = load %struct.ovl_path*, %struct.ovl_path** %8, align 8
  store %struct.ovl_path* %42, %struct.ovl_path** %41, align 8
  %43 = load %struct.dentry*, %struct.dentry** %11, align 8
  %44 = icmp ne %struct.dentry* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  br label %48

46:                                               ; preds = %30
  %47 = load %struct.dentry*, %struct.dentry** %10, align 8
  br label %48

48:                                               ; preds = %46, %45
  %49 = phi %struct.dentry* [ %43, %45 ], [ %47, %46 ]
  %50 = call i64 @d_is_dir(%struct.dentry* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  %55 = call %struct.dentry* @ERR_PTR(i32 %54)
  store %struct.dentry* %55, %struct.dentry** %5, align 8
  br label %138

56:                                               ; preds = %48
  %57 = load %struct.dentry*, %struct.dentry** %11, align 8
  %58 = call i8* @dget(%struct.dentry* %57)
  %59 = getelementptr inbounds %struct.ovl_inode_params, %struct.ovl_inode_params* %15, i32 0, i32 1
  store i8* %58, i8** %59, align 8
  %60 = load %struct.super_block*, %struct.super_block** %6, align 8
  %61 = call %struct.inode* @ovl_get_inode(%struct.super_block* %60, %struct.ovl_inode_params* %15)
  store %struct.inode* %61, %struct.inode** %13, align 8
  %62 = load %struct.inode*, %struct.inode** %13, align 8
  %63 = call i64 @IS_ERR(%struct.inode* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %56
  %66 = load %struct.dentry*, %struct.dentry** %11, align 8
  %67 = call i32 @dput(%struct.dentry* %66)
  %68 = load %struct.inode*, %struct.inode** %13, align 8
  %69 = call %struct.dentry* @ERR_CAST(%struct.inode* %68)
  store %struct.dentry* %69, %struct.dentry** %5, align 8
  br label %138

70:                                               ; preds = %56
  %71 = load %struct.dentry*, %struct.dentry** %11, align 8
  %72 = icmp ne %struct.dentry* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* @OVL_UPPERDATA, align 4
  %75 = load %struct.inode*, %struct.inode** %13, align 8
  %76 = call i32 @ovl_set_flag(i32 %74, %struct.inode* %75)
  br label %77

77:                                               ; preds = %73, %70
  %78 = load %struct.inode*, %struct.inode** %13, align 8
  %79 = call %struct.dentry* @d_find_any_alias(%struct.inode* %78)
  store %struct.dentry* %79, %struct.dentry** %12, align 8
  %80 = load %struct.dentry*, %struct.dentry** %12, align 8
  %81 = icmp ne %struct.dentry* %80, null
  br i1 %81, label %126, label %82

82:                                               ; preds = %77
  %83 = load %struct.inode*, %struct.inode** %13, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call %struct.dentry* @d_alloc_anon(i32 %85)
  store %struct.dentry* %86, %struct.dentry** %12, align 8
  %87 = load %struct.dentry*, %struct.dentry** %12, align 8
  %88 = icmp ne %struct.dentry* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %82
  br label %130

90:                                               ; preds = %82
  %91 = load %struct.dentry*, %struct.dentry** %10, align 8
  %92 = icmp ne %struct.dentry* %91, null
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 1, i32 0
  %95 = call %struct.ovl_entry* @ovl_alloc_entry(i32 %94)
  store %struct.ovl_entry* %95, %struct.ovl_entry** %14, align 8
  %96 = load %struct.ovl_entry*, %struct.ovl_entry** %14, align 8
  %97 = icmp ne %struct.ovl_entry* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %90
  br label %130

99:                                               ; preds = %90
  %100 = load %struct.dentry*, %struct.dentry** %10, align 8
  %101 = icmp ne %struct.dentry* %100, null
  br i1 %101, label %102, label %116

102:                                              ; preds = %99
  %103 = load %struct.dentry*, %struct.dentry** %10, align 8
  %104 = call i8* @dget(%struct.dentry* %103)
  %105 = load %struct.ovl_entry*, %struct.ovl_entry** %14, align 8
  %106 = getelementptr inbounds %struct.ovl_entry, %struct.ovl_entry* %105, i32 0, i32 0
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  store i8* %104, i8** %108, align 8
  %109 = load %struct.ovl_path*, %struct.ovl_path** %8, align 8
  %110 = getelementptr inbounds %struct.ovl_path, %struct.ovl_path* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.ovl_entry*, %struct.ovl_entry** %14, align 8
  %113 = getelementptr inbounds %struct.ovl_entry, %struct.ovl_entry* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  store i32 %111, i32* %115, align 8
  br label %116

116:                                              ; preds = %102, %99
  %117 = load %struct.ovl_entry*, %struct.ovl_entry** %14, align 8
  %118 = load %struct.dentry*, %struct.dentry** %12, align 8
  %119 = getelementptr inbounds %struct.dentry, %struct.dentry* %118, i32 0, i32 0
  store %struct.ovl_entry* %117, %struct.ovl_entry** %119, align 8
  %120 = load %struct.dentry*, %struct.dentry** %7, align 8
  %121 = icmp ne %struct.dentry* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load %struct.dentry*, %struct.dentry** %12, align 8
  %124 = call i32 @ovl_dentry_set_upper_alias(%struct.dentry* %123)
  br label %125

125:                                              ; preds = %122, %116
  br label %126

126:                                              ; preds = %125, %77
  %127 = load %struct.dentry*, %struct.dentry** %12, align 8
  %128 = load %struct.inode*, %struct.inode** %13, align 8
  %129 = call %struct.dentry* @d_instantiate_anon(%struct.dentry* %127, %struct.inode* %128)
  store %struct.dentry* %129, %struct.dentry** %5, align 8
  br label %138

130:                                              ; preds = %98, %89
  %131 = load %struct.inode*, %struct.inode** %13, align 8
  %132 = call i32 @iput(%struct.inode* %131)
  %133 = load %struct.dentry*, %struct.dentry** %12, align 8
  %134 = call i32 @dput(%struct.dentry* %133)
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  %137 = call %struct.dentry* @ERR_PTR(i32 %136)
  store %struct.dentry* %137, %struct.dentry** %5, align 8
  br label %138

138:                                              ; preds = %130, %126, %65, %52
  %139 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %139
}

declare dso_local i64 @d_is_dir(%struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i8* @dget(%struct.dentry*) #1

declare dso_local %struct.inode* @ovl_get_inode(%struct.super_block*, %struct.ovl_inode_params*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.inode*) #1

declare dso_local i32 @ovl_set_flag(i32, %struct.inode*) #1

declare dso_local %struct.dentry* @d_find_any_alias(%struct.inode*) #1

declare dso_local %struct.dentry* @d_alloc_anon(i32) #1

declare dso_local %struct.ovl_entry* @ovl_alloc_entry(i32) #1

declare dso_local i32 @ovl_dentry_set_upper_alias(%struct.dentry*) #1

declare dso_local %struct.dentry* @d_instantiate_anon(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
