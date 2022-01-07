; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_fork.c_xfs_iformat_fork.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_fork.c_xfs_iformat_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { i32*, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.xfs_dinode = type { i32, i32, i32 }
%struct.inode = type { i32, i32 }
%struct.xfs_attr_shortform = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@S_IFMT = common dso_local global i32 0, align 4
@XFS_DATA_FORK = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@xfs_ifork_zone = common dso_local global i32 0, align 4
@KM_NOFS = common dso_local global i32 0, align 4
@XFS_ATTR_FORK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_iformat_fork(%struct.xfs_inode* %0, %struct.xfs_dinode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca %struct.xfs_dinode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.xfs_attr_shortform*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %4, align 8
  store %struct.xfs_dinode* %1, %struct.xfs_dinode** %5, align 8
  %11 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %12 = call %struct.inode* @VFS_I(%struct.xfs_inode* %11)
  store %struct.inode* %12, %struct.inode** %6, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @S_IFMT, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %57 [
    i32 134, label %18
    i32 136, label %18
    i32 137, label %18
    i32 131, label %18
    i32 132, label %27
    i32 133, label %27
    i32 135, label %27
  ]

18:                                               ; preds = %2, %2, %2, %2
  %19 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %20 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %23 = call i32 @xfs_dinode_get_rdev(%struct.xfs_dinode* %22)
  %24 = call i32 @xfs_to_linux_dev_t(i32 %23)
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %60

27:                                               ; preds = %2, %2, %2
  %28 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %29 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %53 [
    i32 128, label %31
    i32 129, label %43
    i32 130, label %48
  ]

31:                                               ; preds = %27
  %32 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %33 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @be64_to_cpu(i32 %34)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %39 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %40 = load i32, i32* @XFS_DATA_FORK, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @xfs_iformat_local(%struct.xfs_inode* %38, %struct.xfs_dinode* %39, i32 %40, i32 %41)
  store i32 %42, i32* %9, align 4
  br label %56

43:                                               ; preds = %27
  %44 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %45 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %46 = load i32, i32* @XFS_DATA_FORK, align 4
  %47 = call i32 @xfs_iformat_extents(%struct.xfs_inode* %44, %struct.xfs_dinode* %45, i32 %46)
  store i32 %47, i32* %9, align 4
  br label %56

48:                                               ; preds = %27
  %49 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %50 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %51 = load i32, i32* @XFS_DATA_FORK, align 4
  %52 = call i32 @xfs_iformat_btree(%struct.xfs_inode* %49, %struct.xfs_dinode* %50, i32 %51)
  store i32 %52, i32* %9, align 4
  br label %56

53:                                               ; preds = %27
  %54 = load i32, i32* @EFSCORRUPTED, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %154

56:                                               ; preds = %48, %43, %31
  br label %60

57:                                               ; preds = %2
  %58 = load i32, i32* @EFSCORRUPTED, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %154

60:                                               ; preds = %56, %18
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %154

65:                                               ; preds = %60
  %66 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %67 = call i64 @xfs_is_reflink_inode(%struct.xfs_inode* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %71 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 @ASSERT(i32 %74)
  %76 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %77 = call i32 @xfs_ifork_init_cow(%struct.xfs_inode* %76)
  br label %78

78:                                               ; preds = %69, %65
  %79 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %80 = call i32 @XFS_DFORK_Q(%struct.xfs_dinode* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %154

83:                                               ; preds = %78
  %84 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %85 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  %88 = zext i1 %87 to i32
  %89 = call i32 @ASSERT(i32 %88)
  %90 = load i32, i32* @xfs_ifork_zone, align 4
  %91 = load i32, i32* @KM_NOFS, align 4
  %92 = call i32* @kmem_zone_zalloc(i32 %90, i32 %91)
  %93 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %94 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %93, i32 0, i32 1
  store i32* %92, i32** %94, align 8
  %95 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %96 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %122 [
    i32 128, label %98
    i32 129, label %112
    i32 130, label %117
  ]

98:                                               ; preds = %83
  %99 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %100 = call i64 @XFS_DFORK_APTR(%struct.xfs_dinode* %99)
  %101 = inttoptr i64 %100 to %struct.xfs_attr_shortform*
  store %struct.xfs_attr_shortform* %101, %struct.xfs_attr_shortform** %7, align 8
  %102 = load %struct.xfs_attr_shortform*, %struct.xfs_attr_shortform** %7, align 8
  %103 = getelementptr inbounds %struct.xfs_attr_shortform, %struct.xfs_attr_shortform* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @be16_to_cpu(i32 %105)
  store i32 %106, i32* %8, align 4
  %107 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %108 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %109 = load i32, i32* @XFS_ATTR_FORK, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @xfs_iformat_local(%struct.xfs_inode* %107, %struct.xfs_dinode* %108, i32 %109, i32 %110)
  store i32 %111, i32* %9, align 4
  br label %125

112:                                              ; preds = %83
  %113 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %114 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %115 = load i32, i32* @XFS_ATTR_FORK, align 4
  %116 = call i32 @xfs_iformat_extents(%struct.xfs_inode* %113, %struct.xfs_dinode* %114, i32 %115)
  store i32 %116, i32* %9, align 4
  br label %125

117:                                              ; preds = %83
  %118 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %119 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %120 = load i32, i32* @XFS_ATTR_FORK, align 4
  %121 = call i32 @xfs_iformat_btree(%struct.xfs_inode* %118, %struct.xfs_dinode* %119, i32 %120)
  store i32 %121, i32* %9, align 4
  br label %125

122:                                              ; preds = %83
  %123 = load i32, i32* @EFSCORRUPTED, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %122, %117, %112, %98
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %152

128:                                              ; preds = %125
  %129 = load i32, i32* @xfs_ifork_zone, align 4
  %130 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %131 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @kmem_zone_free(i32 %129, i32* %132)
  %134 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %135 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %134, i32 0, i32 1
  store i32* null, i32** %135, align 8
  %136 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %137 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %128
  %141 = load i32, i32* @xfs_ifork_zone, align 4
  %142 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %143 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @kmem_zone_free(i32 %141, i32* %144)
  br label %146

146:                                              ; preds = %140, %128
  %147 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %148 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %147, i32 0, i32 0
  store i32* null, i32** %148, align 8
  %149 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %150 = load i32, i32* @XFS_DATA_FORK, align 4
  %151 = call i32 @xfs_idestroy_fork(%struct.xfs_inode* %149, i32 %150)
  br label %152

152:                                              ; preds = %146, %125
  %153 = load i32, i32* %9, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %152, %82, %63, %57, %53
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local %struct.inode* @VFS_I(%struct.xfs_inode*) #1

declare dso_local i32 @xfs_to_linux_dev_t(i32) #1

declare dso_local i32 @xfs_dinode_get_rdev(%struct.xfs_dinode*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @xfs_iformat_local(%struct.xfs_inode*, %struct.xfs_dinode*, i32, i32) #1

declare dso_local i32 @xfs_iformat_extents(%struct.xfs_inode*, %struct.xfs_dinode*, i32) #1

declare dso_local i32 @xfs_iformat_btree(%struct.xfs_inode*, %struct.xfs_dinode*, i32) #1

declare dso_local i64 @xfs_is_reflink_inode(%struct.xfs_inode*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_ifork_init_cow(%struct.xfs_inode*) #1

declare dso_local i32 @XFS_DFORK_Q(%struct.xfs_dinode*) #1

declare dso_local i32* @kmem_zone_zalloc(i32, i32) #1

declare dso_local i64 @XFS_DFORK_APTR(%struct.xfs_dinode*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @kmem_zone_free(i32, i32*) #1

declare dso_local i32 @xfs_idestroy_fork(%struct.xfs_inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
