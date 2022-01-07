; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_export.c_ovl_lookup_real_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_export.c_ovl_lookup_real_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.ovl_fs* }
%struct.ovl_fs = type { i64, i32 }
%struct.dentry = type opaque
%struct.ovl_layer = type { i64, i32 }
%struct.inode = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.dentry*, %struct.ovl_layer*)* @ovl_lookup_real_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ovl_lookup_real_inode(%struct.super_block* %0, %struct.dentry* %1, %struct.ovl_layer* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.ovl_layer*, align 8
  %8 = alloca %struct.ovl_fs*, align 8
  %9 = alloca %struct.ovl_layer, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.dentry*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.ovl_layer* %2, %struct.ovl_layer** %7, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load %struct.ovl_fs*, %struct.ovl_fs** %15, align 8
  store %struct.ovl_fs* %16, %struct.ovl_fs** %8, align 8
  %17 = getelementptr inbounds %struct.ovl_layer, %struct.ovl_layer* %9, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.ovl_layer, %struct.ovl_layer* %9, i32 0, i32 1
  %19 = load %struct.ovl_fs*, %struct.ovl_fs** %8, align 8
  %20 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %18, align 8
  store %struct.dentry* null, %struct.dentry** %10, align 8
  store %struct.dentry* null, %struct.dentry** %11, align 8
  %22 = load %struct.super_block*, %struct.super_block** %5, align 8
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = bitcast %struct.dentry* %23 to %struct.inode*
  %25 = load %struct.ovl_layer*, %struct.ovl_layer** %7, align 8
  %26 = getelementptr inbounds %struct.ovl_layer, %struct.ovl_layer* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call %struct.inode* @ovl_lookup_inode(%struct.super_block* %22, %struct.inode* %24, i32 %30)
  store %struct.inode* %31, %struct.inode** %12, align 8
  %32 = load %struct.inode*, %struct.inode** %12, align 8
  %33 = call i64 @IS_ERR(%struct.inode* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %3
  %36 = load %struct.inode*, %struct.inode** %12, align 8
  %37 = call %struct.inode* @ERR_CAST(%struct.inode* %36)
  %38 = bitcast %struct.inode* %37 to %struct.dentry*
  store %struct.dentry* %38, %struct.dentry** %4, align 8
  br label %140

39:                                               ; preds = %3
  %40 = load %struct.inode*, %struct.inode** %12, align 8
  %41 = icmp ne %struct.inode* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.inode*, %struct.inode** %12, align 8
  %44 = call %struct.inode* @d_find_any_alias(%struct.inode* %43)
  %45 = bitcast %struct.inode* %44 to %struct.dentry*
  store %struct.dentry* %45, %struct.dentry** %11, align 8
  %46 = load %struct.inode*, %struct.inode** %12, align 8
  %47 = call i32 @iput(%struct.inode* %46)
  br label %48

48:                                               ; preds = %42, %39
  %49 = load %struct.dentry*, %struct.dentry** %11, align 8
  %50 = icmp ne %struct.dentry* %49, null
  br i1 %50, label %83, label %51

51:                                               ; preds = %48
  %52 = load %struct.ovl_layer*, %struct.ovl_layer** %7, align 8
  %53 = getelementptr inbounds %struct.ovl_layer, %struct.ovl_layer* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %83

56:                                               ; preds = %51
  %57 = load %struct.ovl_fs*, %struct.ovl_fs** %8, align 8
  %58 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %83

61:                                               ; preds = %56
  %62 = load %struct.dentry*, %struct.dentry** %6, align 8
  %63 = bitcast %struct.dentry* %62 to %struct.inode*
  %64 = call i32 @d_is_dir(%struct.inode* %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i64 @WARN_ON(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %61
  %71 = load %struct.ovl_fs*, %struct.ovl_fs** %8, align 8
  %72 = load %struct.dentry*, %struct.dentry** %6, align 8
  %73 = bitcast %struct.dentry* %72 to %struct.inode*
  %74 = call %struct.inode* @ovl_lookup_index(%struct.ovl_fs* %71, i32* null, %struct.inode* %73, i32 0)
  %75 = bitcast %struct.inode* %74 to %struct.dentry*
  store %struct.dentry* %75, %struct.dentry** %10, align 8
  %76 = load %struct.dentry*, %struct.dentry** %10, align 8
  %77 = bitcast %struct.dentry* %76 to %struct.inode*
  %78 = call i64 @IS_ERR(%struct.inode* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %81, %struct.dentry** %4, align 8
  br label %140

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %61, %56, %51, %48
  %84 = load %struct.dentry*, %struct.dentry** %10, align 8
  %85 = icmp ne %struct.dentry* %84, null
  br i1 %85, label %86, label %110

86:                                               ; preds = %83
  %87 = load %struct.ovl_fs*, %struct.ovl_fs** %8, align 8
  %88 = load %struct.dentry*, %struct.dentry** %10, align 8
  %89 = bitcast %struct.dentry* %88 to %struct.inode*
  %90 = call %struct.inode* @ovl_index_upper(%struct.ovl_fs* %87, %struct.inode* %89)
  %91 = bitcast %struct.inode* %90 to %struct.dentry*
  store %struct.dentry* %91, %struct.dentry** %13, align 8
  %92 = load %struct.dentry*, %struct.dentry** %10, align 8
  %93 = bitcast %struct.dentry* %92 to %struct.inode*
  %94 = call i32 @dput(%struct.inode* %93)
  %95 = load %struct.dentry*, %struct.dentry** %13, align 8
  %96 = bitcast %struct.dentry* %95 to %struct.inode*
  %97 = call i64 @IS_ERR_OR_NULL(%struct.inode* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %86
  %100 = load %struct.dentry*, %struct.dentry** %13, align 8
  store %struct.dentry* %100, %struct.dentry** %4, align 8
  br label %140

101:                                              ; preds = %86
  %102 = load %struct.super_block*, %struct.super_block** %5, align 8
  %103 = load %struct.dentry*, %struct.dentry** %13, align 8
  %104 = bitcast %struct.dentry* %103 to %struct.inode*
  %105 = call %struct.inode* @ovl_lookup_real(%struct.super_block* %102, %struct.inode* %104, %struct.ovl_layer* %9)
  %106 = bitcast %struct.inode* %105 to %struct.dentry*
  store %struct.dentry* %106, %struct.dentry** %11, align 8
  %107 = load %struct.dentry*, %struct.dentry** %13, align 8
  %108 = bitcast %struct.dentry* %107 to %struct.inode*
  %109 = call i32 @dput(%struct.inode* %108)
  br label %110

110:                                              ; preds = %101, %83
  %111 = load %struct.dentry*, %struct.dentry** %11, align 8
  %112 = bitcast %struct.dentry* %111 to %struct.inode*
  %113 = call i64 @IS_ERR_OR_NULL(%struct.inode* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %116, %struct.dentry** %4, align 8
  br label %140

117:                                              ; preds = %110
  %118 = load %struct.dentry*, %struct.dentry** %11, align 8
  %119 = bitcast %struct.dentry* %118 to %struct.inode*
  %120 = load %struct.ovl_layer*, %struct.ovl_layer** %7, align 8
  %121 = getelementptr inbounds %struct.ovl_layer, %struct.ovl_layer* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call %struct.inode* @ovl_dentry_real_at(%struct.inode* %119, i64 %122)
  %124 = load %struct.dentry*, %struct.dentry** %6, align 8
  %125 = bitcast %struct.dentry* %124 to %struct.inode*
  %126 = icmp ne %struct.inode* %123, %125
  %127 = zext i1 %126 to i32
  %128 = call i64 @WARN_ON(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %117
  %131 = load %struct.dentry*, %struct.dentry** %11, align 8
  %132 = bitcast %struct.dentry* %131 to %struct.inode*
  %133 = call i32 @dput(%struct.inode* %132)
  %134 = load i32, i32* @EIO, align 4
  %135 = sub nsw i32 0, %134
  %136 = call %struct.inode* @ERR_PTR(i32 %135)
  %137 = bitcast %struct.inode* %136 to %struct.dentry*
  store %struct.dentry* %137, %struct.dentry** %11, align 8
  br label %138

138:                                              ; preds = %130, %117
  %139 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %139, %struct.dentry** %4, align 8
  br label %140

140:                                              ; preds = %138, %115, %99, %80, %35
  %141 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %141
}

declare dso_local %struct.inode* @ovl_lookup_inode(%struct.super_block*, %struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_CAST(%struct.inode*) #1

declare dso_local %struct.inode* @d_find_any_alias(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @d_is_dir(%struct.inode*) #1

declare dso_local %struct.inode* @ovl_lookup_index(%struct.ovl_fs*, i32*, %struct.inode*, i32) #1

declare dso_local %struct.inode* @ovl_index_upper(%struct.ovl_fs*, %struct.inode*) #1

declare dso_local i32 @dput(%struct.inode*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.inode*) #1

declare dso_local %struct.inode* @ovl_lookup_real(%struct.super_block*, %struct.inode*, %struct.ovl_layer*) #1

declare dso_local %struct.inode* @ovl_dentry_real_at(%struct.inode*, i64) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
