; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_copy_up.c_ovl_copy_up_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_copy_up.c_ovl_copy_up_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ovl_copy_up_ctx = type { %struct.TYPE_5__, i64, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dentry = type { i32 }
%struct.path = type { %struct.dentry* }

@EIO = common dso_local global i32 0, align 4
@OVL_XATTR_METACOPY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ovl_copy_up_ctx*, %struct.dentry*)* @ovl_copy_up_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_copy_up_inode(%struct.ovl_copy_up_ctx* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ovl_copy_up_ctx*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.path, align 8
  %8 = alloca %struct.path, align 8
  store %struct.ovl_copy_up_ctx* %0, %struct.ovl_copy_up_ctx** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %9 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @S_ISREG(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %2
  %16 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %51, label %20

20:                                               ; preds = %15
  %21 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ovl_path_upper(i32 %23, %struct.path* %7)
  %25 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 0
  %26 = load %struct.dentry*, %struct.dentry** %25, align 8
  %27 = icmp ne %struct.dentry* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %129

34:                                               ; preds = %20
  %35 = load %struct.dentry*, %struct.dentry** %5, align 8
  %36 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 0
  store %struct.dentry* %35, %struct.dentry** %36, align 8
  %37 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ovl_path_lowerdata(i32 %39, %struct.path* %8)
  %41 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %4, align 8
  %42 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ovl_copy_up_data(%struct.path* %8, %struct.path* %7, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %34
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %129

50:                                               ; preds = %34
  br label %51

51:                                               ; preds = %50, %15, %2
  %52 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %4, align 8
  %53 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.dentry*, %struct.dentry** %5, align 8
  %57 = call i32 @ovl_copy_xattr(i32 %55, %struct.dentry* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %129

62:                                               ; preds = %51
  %63 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %4, align 8
  %64 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %62
  %68 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %4, align 8
  %69 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %4, align 8
  %72 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.dentry*, %struct.dentry** %5, align 8
  %76 = call i32 @ovl_set_origin(i32 %70, i32 %74, %struct.dentry* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %129

81:                                               ; preds = %67
  br label %82

82:                                               ; preds = %81, %62
  %83 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %4, align 8
  %84 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %82
  %88 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %4, align 8
  %89 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.dentry*, %struct.dentry** %5, align 8
  %92 = load i32, i32* @OVL_XATTR_METACOPY, align 4
  %93 = load i32, i32* @EOPNOTSUPP, align 4
  %94 = sub nsw i32 0, %93
  %95 = call i32 @ovl_check_setxattr(i32 %90, %struct.dentry* %91, i32 %92, i32* null, i32 0, i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %87
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %3, align 4
  br label %129

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %100, %82
  %102 = load %struct.dentry*, %struct.dentry** %5, align 8
  %103 = getelementptr inbounds %struct.dentry, %struct.dentry* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @inode_lock(i32 %104)
  %106 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %4, align 8
  %107 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %101
  %111 = load %struct.dentry*, %struct.dentry** %5, align 8
  %112 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %4, align 8
  %113 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %112, i32 0, i32 0
  %114 = call i32 @ovl_set_size(%struct.dentry* %111, %struct.TYPE_5__* %113)
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %110, %101
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %115
  %119 = load %struct.dentry*, %struct.dentry** %5, align 8
  %120 = load %struct.ovl_copy_up_ctx*, %struct.ovl_copy_up_ctx** %4, align 8
  %121 = getelementptr inbounds %struct.ovl_copy_up_ctx, %struct.ovl_copy_up_ctx* %120, i32 0, i32 0
  %122 = call i32 @ovl_set_attr(%struct.dentry* %119, %struct.TYPE_5__* %121)
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %118, %115
  %124 = load %struct.dentry*, %struct.dentry** %5, align 8
  %125 = getelementptr inbounds %struct.dentry, %struct.dentry* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @inode_unlock(i32 %126)
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %123, %98, %79, %60, %48, %31
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @ovl_path_upper(i32, %struct.path*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ovl_path_lowerdata(i32, %struct.path*) #1

declare dso_local i32 @ovl_copy_up_data(%struct.path*, %struct.path*, i32) #1

declare dso_local i32 @ovl_copy_xattr(i32, %struct.dentry*) #1

declare dso_local i32 @ovl_set_origin(i32, i32, %struct.dentry*) #1

declare dso_local i32 @ovl_check_setxattr(i32, %struct.dentry*, i32, i32*, i32, i32) #1

declare dso_local i32 @inode_lock(i32) #1

declare dso_local i32 @ovl_set_size(%struct.dentry*, %struct.TYPE_5__*) #1

declare dso_local i32 @ovl_set_attr(%struct.dentry*, %struct.TYPE_5__*) #1

declare dso_local i32 @inode_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
