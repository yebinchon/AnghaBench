; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_may_delete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_may_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }

@ENOENT = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@AUDIT_TYPE_CHILD_DELETE = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@DCACHE_NFSFS_RENAMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @may_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @may_delete(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dentry*, %struct.dentry** %6, align 8
  %11 = call %struct.inode* @d_backing_inode(%struct.dentry* %10)
  store %struct.inode* %11, %struct.inode** %8, align 8
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  %13 = call i64 @d_is_negative(%struct.dentry* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %136

18:                                               ; preds = %3
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = icmp ne %struct.inode* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.dentry*, %struct.dentry** %6, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.inode*, %struct.inode** %27, align 8
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = icmp ne %struct.inode* %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @uid_valid(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %18
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @gid_valid(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38, %18
  %45 = load i32, i32* @EOVERFLOW, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %136

47:                                               ; preds = %38
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = load %struct.dentry*, %struct.dentry** %6, align 8
  %50 = load i32, i32* @AUDIT_TYPE_CHILD_DELETE, align 4
  %51 = call i32 @audit_inode_child(%struct.inode* %48, %struct.dentry* %49, i32 %50)
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = load i32, i32* @MAY_WRITE, align 4
  %54 = load i32, i32* @MAY_EXEC, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @inode_permission(%struct.inode* %52, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %136

61:                                               ; preds = %47
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = call i64 @IS_APPEND(%struct.inode* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* @EPERM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %136

68:                                               ; preds = %61
  %69 = load %struct.inode*, %struct.inode** %5, align 8
  %70 = load %struct.inode*, %struct.inode** %8, align 8
  %71 = call i64 @check_sticky(%struct.inode* %69, %struct.inode* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %89, label %73

73:                                               ; preds = %68
  %74 = load %struct.inode*, %struct.inode** %8, align 8
  %75 = call i64 @IS_APPEND(%struct.inode* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %89, label %77

77:                                               ; preds = %73
  %78 = load %struct.inode*, %struct.inode** %8, align 8
  %79 = call i64 @IS_IMMUTABLE(%struct.inode* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %77
  %82 = load %struct.inode*, %struct.inode** %8, align 8
  %83 = call i64 @IS_SWAPFILE(%struct.inode* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load %struct.inode*, %struct.inode** %8, align 8
  %87 = call i64 @HAS_UNMAPPED_ID(%struct.inode* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85, %81, %77, %73, %68
  %90 = load i32, i32* @EPERM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %136

92:                                               ; preds = %85
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %92
  %96 = load %struct.dentry*, %struct.dentry** %6, align 8
  %97 = call i64 @d_is_dir(%struct.dentry* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* @ENOTDIR, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %136

102:                                              ; preds = %95
  %103 = load %struct.dentry*, %struct.dentry** %6, align 8
  %104 = call i64 @IS_ROOT(%struct.dentry* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i32, i32* @EBUSY, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %136

109:                                              ; preds = %102
  br label %118

110:                                              ; preds = %92
  %111 = load %struct.dentry*, %struct.dentry** %6, align 8
  %112 = call i64 @d_is_dir(%struct.dentry* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %110
  %115 = load i32, i32* @EISDIR, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %136

117:                                              ; preds = %110
  br label %118

118:                                              ; preds = %117, %109
  %119 = load %struct.inode*, %struct.inode** %5, align 8
  %120 = call i64 @IS_DEADDIR(%struct.inode* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i32, i32* @ENOENT, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %4, align 4
  br label %136

125:                                              ; preds = %118
  %126 = load %struct.dentry*, %struct.dentry** %6, align 8
  %127 = getelementptr inbounds %struct.dentry, %struct.dentry* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @DCACHE_NFSFS_RENAMED, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = load i32, i32* @EBUSY, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  br label %136

135:                                              ; preds = %125
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %135, %132, %122, %114, %106, %99, %89, %65, %59, %44, %15
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.inode* @d_backing_inode(%struct.dentry*) #1

declare dso_local i64 @d_is_negative(%struct.dentry*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @uid_valid(i32) #1

declare dso_local i32 @gid_valid(i32) #1

declare dso_local i32 @audit_inode_child(%struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @inode_permission(%struct.inode*, i32) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i64 @check_sticky(%struct.inode*, %struct.inode*) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i64 @IS_SWAPFILE(%struct.inode*) #1

declare dso_local i64 @HAS_UNMAPPED_ID(%struct.inode*) #1

declare dso_local i64 @d_is_dir(%struct.dentry*) #1

declare dso_local i64 @IS_ROOT(%struct.dentry*) #1

declare dso_local i64 @IS_DEADDIR(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
