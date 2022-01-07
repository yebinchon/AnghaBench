; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_namei.c_ovl_index_upper.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_namei.c_ovl_index_upper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ovl_fs = type { i32 }
%struct.dentry = type opaque
%struct.ovl_fh = type { i32 }

@OVL_XATTR_UPPER = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"overlayfs: invalid index upper (%pd2, upper=%pd2).\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @ovl_index_upper(%struct.ovl_fs* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.ovl_fs*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.ovl_fh*, align 8
  %7 = alloca %struct.dentry*, align 8
  store %struct.ovl_fs* %0, %struct.ovl_fs** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %8 = load %struct.dentry*, %struct.dentry** %5, align 8
  %9 = bitcast %struct.dentry* %8 to %struct.ovl_fh*
  %10 = call i32 @d_is_dir(%struct.ovl_fh* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = bitcast %struct.dentry* %13 to %struct.ovl_fh*
  %15 = call %struct.ovl_fh* @dget(%struct.ovl_fh* %14)
  %16 = bitcast %struct.ovl_fh* %15 to %struct.dentry*
  store %struct.dentry* %16, %struct.dentry** %3, align 8
  br label %75

17:                                               ; preds = %2
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = bitcast %struct.dentry* %18 to %struct.ovl_fh*
  %20 = load i32, i32* @OVL_XATTR_UPPER, align 4
  %21 = call %struct.ovl_fh* @ovl_get_fh(%struct.ovl_fh* %19, i32 %20)
  store %struct.ovl_fh* %21, %struct.ovl_fh** %6, align 8
  %22 = load %struct.ovl_fh*, %struct.ovl_fh** %6, align 8
  %23 = call i64 @IS_ERR_OR_NULL(%struct.ovl_fh* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load %struct.ovl_fh*, %struct.ovl_fh** %6, align 8
  %27 = call %struct.ovl_fh* @ERR_CAST(%struct.ovl_fh* %26)
  %28 = bitcast %struct.ovl_fh* %27 to %struct.dentry*
  store %struct.dentry* %28, %struct.dentry** %3, align 8
  br label %75

29:                                               ; preds = %17
  %30 = load %struct.ovl_fh*, %struct.ovl_fh** %6, align 8
  %31 = load %struct.ovl_fs*, %struct.ovl_fs** %4, align 8
  %32 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.ovl_fh* @ovl_decode_real_fh(%struct.ovl_fh* %30, i32 %33, i32 1)
  %35 = bitcast %struct.ovl_fh* %34 to %struct.dentry*
  store %struct.dentry* %35, %struct.dentry** %7, align 8
  %36 = load %struct.ovl_fh*, %struct.ovl_fh** %6, align 8
  %37 = call i32 @kfree(%struct.ovl_fh* %36)
  %38 = load %struct.dentry*, %struct.dentry** %7, align 8
  %39 = bitcast %struct.dentry* %38 to %struct.ovl_fh*
  %40 = call i64 @IS_ERR_OR_NULL(%struct.ovl_fh* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %29
  %43 = load %struct.dentry*, %struct.dentry** %7, align 8
  %44 = icmp ne %struct.dentry* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = bitcast %struct.dentry* %43 to i8*
  br label %52

47:                                               ; preds = %42
  %48 = load i32, i32* @ESTALE, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.ovl_fh* @ERR_PTR(i32 %49)
  %51 = bitcast %struct.ovl_fh* %50 to i8*
  br label %52

52:                                               ; preds = %47, %45
  %53 = phi i8* [ %46, %45 ], [ %51, %47 ]
  %54 = bitcast i8* %53 to %struct.dentry*
  store %struct.dentry* %54, %struct.dentry** %3, align 8
  br label %75

55:                                               ; preds = %29
  %56 = load %struct.dentry*, %struct.dentry** %7, align 8
  %57 = bitcast %struct.dentry* %56 to %struct.ovl_fh*
  %58 = call i32 @d_is_dir(%struct.ovl_fh* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %55
  %61 = load %struct.dentry*, %struct.dentry** %5, align 8
  %62 = bitcast %struct.dentry* %61 to %struct.ovl_fh*
  %63 = load %struct.dentry*, %struct.dentry** %7, align 8
  %64 = bitcast %struct.dentry* %63 to %struct.ovl_fh*
  %65 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), %struct.ovl_fh* %62, %struct.ovl_fh* %64)
  %66 = load %struct.dentry*, %struct.dentry** %7, align 8
  %67 = bitcast %struct.dentry* %66 to %struct.ovl_fh*
  %68 = call i32 @dput(%struct.ovl_fh* %67)
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  %71 = call %struct.ovl_fh* @ERR_PTR(i32 %70)
  %72 = bitcast %struct.ovl_fh* %71 to %struct.dentry*
  store %struct.dentry* %72, %struct.dentry** %3, align 8
  br label %75

73:                                               ; preds = %55
  %74 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %74, %struct.dentry** %3, align 8
  br label %75

75:                                               ; preds = %73, %60, %52, %25, %12
  %76 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %76
}

declare dso_local i32 @d_is_dir(%struct.ovl_fh*) #1

declare dso_local %struct.ovl_fh* @dget(%struct.ovl_fh*) #1

declare dso_local %struct.ovl_fh* @ovl_get_fh(%struct.ovl_fh*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.ovl_fh*) #1

declare dso_local %struct.ovl_fh* @ERR_CAST(%struct.ovl_fh*) #1

declare dso_local %struct.ovl_fh* @ovl_decode_real_fh(%struct.ovl_fh*, i32, i32) #1

declare dso_local i32 @kfree(%struct.ovl_fh*) #1

declare dso_local %struct.ovl_fh* @ERR_PTR(i32) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, %struct.ovl_fh*, %struct.ovl_fh*) #1

declare dso_local i32 @dput(%struct.ovl_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
