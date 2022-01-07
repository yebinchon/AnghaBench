; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_copy_up.c_ovl_create_index.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_copy_up.c_ovl_create_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.qstr = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@OVL_INDEX = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.dentry*, %struct.dentry*)* @ovl_create_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_create_index(%struct.dentry* %0, %struct.dentry* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.qstr, align 4
  %13 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.dentry* @ovl_indexdir(i32 %16)
  store %struct.dentry* %17, %struct.dentry** %8, align 8
  %18 = load %struct.dentry*, %struct.dentry** %8, align 8
  %19 = call %struct.inode* @d_inode(%struct.dentry* %18)
  store %struct.inode* %19, %struct.inode** %9, align 8
  store %struct.dentry* null, %struct.dentry** %10, align 8
  store %struct.dentry* null, %struct.dentry** %11, align 8
  %20 = bitcast %struct.qstr* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 8, i1 false)
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = call i32 @d_is_dir(%struct.dentry* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %103

31:                                               ; preds = %3
  %32 = load i32, i32* @OVL_INDEX, align 4
  %33 = load %struct.dentry*, %struct.dentry** %5, align 8
  %34 = call %struct.inode* @d_inode(%struct.dentry* %33)
  %35 = call i32 @ovl_test_flag(i32 %32, %struct.inode* %34)
  %36 = call i64 @WARN_ON(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %103

41:                                               ; preds = %31
  %42 = load %struct.dentry*, %struct.dentry** %6, align 8
  %43 = call i32 @ovl_get_index_name(%struct.dentry* %42, %struct.qstr* %12)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %4, align 4
  br label %103

48:                                               ; preds = %41
  %49 = load %struct.dentry*, %struct.dentry** %8, align 8
  %50 = load i32, i32* @S_IFDIR, align 4
  %51 = call i32 @OVL_CATTR(i32 %50)
  %52 = call %struct.dentry* @ovl_create_temp(%struct.dentry* %49, i32 %51)
  store %struct.dentry* %52, %struct.dentry** %11, align 8
  %53 = load %struct.dentry*, %struct.dentry** %11, align 8
  %54 = call i32 @PTR_ERR(%struct.dentry* %53)
  store i32 %54, i32* %13, align 4
  %55 = load %struct.dentry*, %struct.dentry** %11, align 8
  %56 = call i64 @IS_ERR(%struct.dentry* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %98

59:                                               ; preds = %48
  %60 = load %struct.dentry*, %struct.dentry** %7, align 8
  %61 = load %struct.dentry*, %struct.dentry** %11, align 8
  %62 = call i32 @ovl_set_upper_fh(%struct.dentry* %60, %struct.dentry* %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %88

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.dentry*, %struct.dentry** %8, align 8
  %70 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.dentry* @lookup_one_len(i32 %68, %struct.dentry* %69, i32 %71)
  store %struct.dentry* %72, %struct.dentry** %10, align 8
  %73 = load %struct.dentry*, %struct.dentry** %10, align 8
  %74 = call i64 @IS_ERR(%struct.dentry* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %66
  %77 = load %struct.dentry*, %struct.dentry** %10, align 8
  %78 = call i32 @PTR_ERR(%struct.dentry* %77)
  store i32 %78, i32* %13, align 4
  br label %87

79:                                               ; preds = %66
  %80 = load %struct.inode*, %struct.inode** %9, align 8
  %81 = load %struct.dentry*, %struct.dentry** %11, align 8
  %82 = load %struct.inode*, %struct.inode** %9, align 8
  %83 = load %struct.dentry*, %struct.dentry** %10, align 8
  %84 = call i32 @ovl_do_rename(%struct.inode* %80, %struct.dentry* %81, %struct.inode* %82, %struct.dentry* %83, i32 0)
  store i32 %84, i32* %13, align 4
  %85 = load %struct.dentry*, %struct.dentry** %10, align 8
  %86 = call i32 @dput(%struct.dentry* %85)
  br label %87

87:                                               ; preds = %79, %76
  br label %88

88:                                               ; preds = %87, %65
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load %struct.inode*, %struct.inode** %9, align 8
  %93 = load %struct.dentry*, %struct.dentry** %11, align 8
  %94 = call i32 @ovl_cleanup(%struct.inode* %92, %struct.dentry* %93)
  br label %95

95:                                               ; preds = %91, %88
  %96 = load %struct.dentry*, %struct.dentry** %11, align 8
  %97 = call i32 @dput(%struct.dentry* %96)
  br label %98

98:                                               ; preds = %95, %58
  %99 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @kfree(i32 %100)
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %98, %46, %38, %28
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.dentry* @ovl_indexdir(i32) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @d_is_dir(%struct.dentry*) #1

declare dso_local i32 @ovl_test_flag(i32, %struct.inode*) #1

declare dso_local i32 @ovl_get_index_name(%struct.dentry*, %struct.qstr*) #1

declare dso_local %struct.dentry* @ovl_create_temp(%struct.dentry*, i32) #1

declare dso_local i32 @OVL_CATTR(i32) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @ovl_set_upper_fh(%struct.dentry*, %struct.dentry*) #1

declare dso_local %struct.dentry* @lookup_one_len(i32, %struct.dentry*, i32) #1

declare dso_local i32 @ovl_do_rename(%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @ovl_cleanup(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
