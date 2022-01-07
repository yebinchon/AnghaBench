; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_namei.c_ovl_get_index_fh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_namei.c_ovl_get_index_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.ovl_fs = type { i32 }
%struct.ovl_fh = type { i32 }
%struct.qstr = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @ovl_get_index_fh(%struct.ovl_fs* %0, %struct.ovl_fh* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.ovl_fs*, align 8
  %5 = alloca %struct.ovl_fh*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.qstr, align 4
  %8 = alloca i32, align 4
  store %struct.ovl_fs* %0, %struct.ovl_fs** %4, align 8
  store %struct.ovl_fh* %1, %struct.ovl_fh** %5, align 8
  %9 = load %struct.ovl_fh*, %struct.ovl_fh** %5, align 8
  %10 = call i32 @ovl_get_index_name_fh(%struct.ovl_fh* %9, %struct.qstr* %7)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  %15 = call %struct.dentry* @ERR_PTR(i32 %14)
  store %struct.dentry* %15, %struct.dentry** %3, align 8
  br label %68

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.qstr, %struct.qstr* %7, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ovl_fs*, %struct.ovl_fs** %4, align 8
  %20 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.qstr, %struct.qstr* %7, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.dentry* @lookup_one_len_unlocked(i32 %18, i32 %21, i32 %23)
  store %struct.dentry* %24, %struct.dentry** %6, align 8
  %25 = getelementptr inbounds %struct.qstr, %struct.qstr* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @kfree(i32 %26)
  %28 = load %struct.dentry*, %struct.dentry** %6, align 8
  %29 = call i64 @IS_ERR(%struct.dentry* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %16
  %32 = load %struct.dentry*, %struct.dentry** %6, align 8
  %33 = call i32 @PTR_ERR(%struct.dentry* %32)
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store %struct.dentry* null, %struct.dentry** %6, align 8
  br label %38

38:                                               ; preds = %37, %31
  %39 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %39, %struct.dentry** %3, align 8
  br label %68

40:                                               ; preds = %16
  %41 = load %struct.dentry*, %struct.dentry** %6, align 8
  %42 = call i64 @d_is_negative(%struct.dentry* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  br label %63

45:                                               ; preds = %40
  %46 = load %struct.dentry*, %struct.dentry** %6, align 8
  %47 = call i64 @ovl_is_whiteout(%struct.dentry* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @ESTALE, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  br label %62

52:                                               ; preds = %45
  %53 = load %struct.dentry*, %struct.dentry** %6, align 8
  %54 = call i64 @ovl_dentry_weird(%struct.dentry* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %61

59:                                               ; preds = %52
  %60 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %60, %struct.dentry** %3, align 8
  br label %68

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61, %49
  br label %63

63:                                               ; preds = %62, %44
  %64 = load %struct.dentry*, %struct.dentry** %6, align 8
  %65 = call i32 @dput(%struct.dentry* %64)
  %66 = load i32, i32* %8, align 4
  %67 = call %struct.dentry* @ERR_PTR(i32 %66)
  store %struct.dentry* %67, %struct.dentry** %3, align 8
  br label %68

68:                                               ; preds = %63, %59, %38, %13
  %69 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %69
}

declare dso_local i32 @ovl_get_index_name_fh(%struct.ovl_fh*, %struct.qstr*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.dentry* @lookup_one_len_unlocked(i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @d_is_negative(%struct.dentry*) #1

declare dso_local i64 @ovl_is_whiteout(%struct.dentry*) #1

declare dso_local i64 @ovl_dentry_weird(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
