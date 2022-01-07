; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_export.c_ovl_lower_fh_to_d.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_export.c_ovl_lower_fh_to_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { %struct.ovl_fs* }
%struct.ovl_fs = type { i64 }
%struct.ovl_fh = type { i32 }
%struct.ovl_path = type { %struct.inode* }
%struct.inode = type { i32 }

@DCACHE_DISCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.ovl_fh*)* @ovl_lower_fh_to_d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ovl_lower_fh_to_d(%struct.super_block* %0, %struct.ovl_fh* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.ovl_fh*, align 8
  %6 = alloca %struct.ovl_fs*, align 8
  %7 = alloca %struct.ovl_path, align 8
  %8 = alloca %struct.ovl_path*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dentry*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.ovl_fh* %1, %struct.ovl_fh** %5, align 8
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load %struct.ovl_fs*, %struct.ovl_fs** %15, align 8
  store %struct.ovl_fs* %16, %struct.ovl_fs** %6, align 8
  %17 = bitcast %struct.ovl_path* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 8, i1 false)
  store %struct.ovl_path* %7, %struct.ovl_path** %8, align 8
  store %struct.dentry* null, %struct.dentry** %9, align 8
  store %struct.dentry* null, %struct.dentry** %10, align 8
  %18 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %19 = load %struct.ovl_fh*, %struct.ovl_fh** %5, align 8
  %20 = call i32 @ovl_check_origin_fh(%struct.ovl_fs* %18, %struct.ovl_fh* %19, i32 0, i32* null, %struct.ovl_path** %8)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* %12, align 4
  %25 = call %struct.inode* @ERR_PTR(i32 %24)
  %26 = bitcast %struct.inode* %25 to %struct.dentry*
  store %struct.dentry* %26, %struct.dentry** %3, align 8
  br label %163

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.ovl_path, %struct.ovl_path* %7, i32 0, i32 0
  %29 = load %struct.inode*, %struct.inode** %28, align 8
  %30 = call i64 @d_is_dir(%struct.inode* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.ovl_path, %struct.ovl_path* %7, i32 0, i32 0
  %34 = load %struct.inode*, %struct.inode** %33, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DCACHE_DISCONNECTED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %65, label %40

40:                                               ; preds = %32, %27
  %41 = load %struct.super_block*, %struct.super_block** %4, align 8
  %42 = getelementptr inbounds %struct.ovl_path, %struct.ovl_path* %7, i32 0, i32 0
  %43 = load %struct.inode*, %struct.inode** %42, align 8
  %44 = call %struct.inode* @ovl_lookup_inode(%struct.super_block* %41, %struct.inode* %43, i32 0)
  store %struct.inode* %44, %struct.inode** %11, align 8
  %45 = load %struct.inode*, %struct.inode** %11, align 8
  %46 = call i32 @PTR_ERR(%struct.inode* %45)
  store i32 %46, i32* %12, align 4
  %47 = load %struct.inode*, %struct.inode** %11, align 8
  %48 = call i64 @IS_ERR(%struct.inode* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %159

51:                                               ; preds = %40
  %52 = load %struct.inode*, %struct.inode** %11, align 8
  %53 = icmp ne %struct.inode* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load %struct.inode*, %struct.inode** %11, align 8
  %56 = call %struct.inode* @d_find_any_alias(%struct.inode* %55)
  %57 = bitcast %struct.inode* %56 to %struct.dentry*
  store %struct.dentry* %57, %struct.dentry** %9, align 8
  %58 = load %struct.inode*, %struct.inode** %11, align 8
  %59 = call i32 @iput(%struct.inode* %58)
  %60 = load %struct.dentry*, %struct.dentry** %9, align 8
  %61 = icmp ne %struct.dentry* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %151

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %51
  br label %65

65:                                               ; preds = %64, %32
  %66 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %67 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %65
  %71 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %72 = load %struct.ovl_fh*, %struct.ovl_fh** %5, align 8
  %73 = call %struct.inode* @ovl_get_index_fh(%struct.ovl_fs* %71, %struct.ovl_fh* %72)
  %74 = bitcast %struct.inode* %73 to %struct.dentry*
  store %struct.dentry* %74, %struct.dentry** %10, align 8
  %75 = load %struct.dentry*, %struct.dentry** %10, align 8
  %76 = bitcast %struct.dentry* %75 to %struct.inode*
  %77 = call i32 @PTR_ERR(%struct.inode* %76)
  store i32 %77, i32* %12, align 4
  %78 = load %struct.dentry*, %struct.dentry** %10, align 8
  %79 = bitcast %struct.dentry* %78 to %struct.inode*
  %80 = call i64 @IS_ERR(%struct.inode* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  store %struct.dentry* null, %struct.dentry** %10, align 8
  br label %159

83:                                               ; preds = %70
  br label %84

84:                                               ; preds = %83, %65
  %85 = load %struct.dentry*, %struct.dentry** %10, align 8
  %86 = icmp ne %struct.dentry* %85, null
  br i1 %86, label %87, label %115

87:                                               ; preds = %84
  %88 = load %struct.dentry*, %struct.dentry** %10, align 8
  %89 = bitcast %struct.dentry* %88 to %struct.inode*
  %90 = call i64 @d_is_dir(%struct.inode* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %115

92:                                               ; preds = %87
  %93 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %94 = load %struct.dentry*, %struct.dentry** %10, align 8
  %95 = bitcast %struct.dentry* %94 to %struct.inode*
  %96 = call %struct.inode* @ovl_index_upper(%struct.ovl_fs* %93, %struct.inode* %95)
  %97 = bitcast %struct.inode* %96 to %struct.dentry*
  store %struct.dentry* %97, %struct.dentry** %13, align 8
  %98 = load %struct.dentry*, %struct.dentry** %13, align 8
  %99 = bitcast %struct.dentry* %98 to %struct.inode*
  %100 = call i32 @PTR_ERR(%struct.inode* %99)
  store i32 %100, i32* %12, align 4
  %101 = load %struct.dentry*, %struct.dentry** %13, align 8
  %102 = bitcast %struct.dentry* %101 to %struct.inode*
  %103 = call i64 @IS_ERR_OR_NULL(%struct.inode* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %92
  br label %159

106:                                              ; preds = %92
  %107 = load %struct.super_block*, %struct.super_block** %4, align 8
  %108 = load %struct.dentry*, %struct.dentry** %13, align 8
  %109 = bitcast %struct.dentry* %108 to %struct.inode*
  %110 = call %struct.inode* @ovl_get_dentry(%struct.super_block* %107, %struct.inode* %109, %struct.ovl_path* null, %struct.inode* null)
  %111 = bitcast %struct.inode* %110 to %struct.dentry*
  store %struct.dentry* %111, %struct.dentry** %9, align 8
  %112 = load %struct.dentry*, %struct.dentry** %13, align 8
  %113 = bitcast %struct.dentry* %112 to %struct.inode*
  %114 = call i32 @dput(%struct.inode* %113)
  br label %151

115:                                              ; preds = %87, %84
  %116 = getelementptr inbounds %struct.ovl_path, %struct.ovl_path* %7, i32 0, i32 0
  %117 = load %struct.inode*, %struct.inode** %116, align 8
  %118 = call i64 @d_is_dir(%struct.inode* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.ovl_path, %struct.ovl_path* %7, i32 0, i32 0
  %122 = load %struct.inode*, %struct.inode** %121, align 8
  %123 = call i32 @dput(%struct.inode* %122)
  %124 = getelementptr inbounds %struct.ovl_path, %struct.ovl_path* %7, i32 0, i32 0
  store %struct.inode* null, %struct.inode** %124, align 8
  %125 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %126 = load %struct.ovl_fh*, %struct.ovl_fh** %5, align 8
  %127 = call i32 @ovl_check_origin_fh(%struct.ovl_fs* %125, %struct.ovl_fh* %126, i32 1, i32* null, %struct.ovl_path** %8)
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %120
  br label %159

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %131, %115
  %133 = load %struct.dentry*, %struct.dentry** %10, align 8
  %134 = icmp ne %struct.dentry* %133, null
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = load %struct.dentry*, %struct.dentry** %10, align 8
  %137 = bitcast %struct.dentry* %136 to %struct.inode*
  %138 = getelementptr inbounds %struct.ovl_path, %struct.ovl_path* %7, i32 0, i32 0
  %139 = load %struct.inode*, %struct.inode** %138, align 8
  %140 = call i32 @ovl_verify_origin(%struct.inode* %137, %struct.inode* %139, i32 0)
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %135
  br label %159

144:                                              ; preds = %135
  br label %145

145:                                              ; preds = %144, %132
  %146 = load %struct.super_block*, %struct.super_block** %4, align 8
  %147 = load %struct.dentry*, %struct.dentry** %10, align 8
  %148 = bitcast %struct.dentry* %147 to %struct.inode*
  %149 = call %struct.inode* @ovl_get_dentry(%struct.super_block* %146, %struct.inode* null, %struct.ovl_path* %7, %struct.inode* %148)
  %150 = bitcast %struct.inode* %149 to %struct.dentry*
  store %struct.dentry* %150, %struct.dentry** %9, align 8
  br label %151

151:                                              ; preds = %159, %145, %106, %62
  %152 = getelementptr inbounds %struct.ovl_path, %struct.ovl_path* %7, i32 0, i32 0
  %153 = load %struct.inode*, %struct.inode** %152, align 8
  %154 = call i32 @dput(%struct.inode* %153)
  %155 = load %struct.dentry*, %struct.dentry** %10, align 8
  %156 = bitcast %struct.dentry* %155 to %struct.inode*
  %157 = call i32 @dput(%struct.inode* %156)
  %158 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %158, %struct.dentry** %3, align 8
  br label %163

159:                                              ; preds = %143, %130, %105, %82, %50
  %160 = load i32, i32* %12, align 4
  %161 = call %struct.inode* @ERR_PTR(i32 %160)
  %162 = bitcast %struct.inode* %161 to %struct.dentry*
  store %struct.dentry* %162, %struct.dentry** %9, align 8
  br label %151

163:                                              ; preds = %151, %23
  %164 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %164
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ovl_check_origin_fh(%struct.ovl_fs*, %struct.ovl_fh*, i32, i32*, %struct.ovl_path**) #2

declare dso_local %struct.inode* @ERR_PTR(i32) #2

declare dso_local i64 @d_is_dir(%struct.inode*) #2

declare dso_local %struct.inode* @ovl_lookup_inode(%struct.super_block*, %struct.inode*, i32) #2

declare dso_local i32 @PTR_ERR(%struct.inode*) #2

declare dso_local i64 @IS_ERR(%struct.inode*) #2

declare dso_local %struct.inode* @d_find_any_alias(%struct.inode*) #2

declare dso_local i32 @iput(%struct.inode*) #2

declare dso_local %struct.inode* @ovl_get_index_fh(%struct.ovl_fs*, %struct.ovl_fh*) #2

declare dso_local %struct.inode* @ovl_index_upper(%struct.ovl_fs*, %struct.inode*) #2

declare dso_local i64 @IS_ERR_OR_NULL(%struct.inode*) #2

declare dso_local %struct.inode* @ovl_get_dentry(%struct.super_block*, %struct.inode*, %struct.ovl_path*, %struct.inode*) #2

declare dso_local i32 @dput(%struct.inode*) #2

declare dso_local i32 @ovl_verify_origin(%struct.inode*, %struct.inode*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
