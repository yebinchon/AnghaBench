; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_export.c_ovl_fh_to_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_export.c_ovl_fh_to_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { i32 }
%struct.fid = type { i32 }
%struct.ovl_fh = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OVL_FILEID = common dso_local global i32 0, align 4
@OVL_FH_FLAG_PATH_UPPER = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"overlayfs: failed to decode file handle (len=%d, type=%d, flags=%x, err=%i)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)* @ovl_fh_to_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ovl_fh_to_dentry(%struct.super_block* %0, %struct.fid* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.fid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.ovl_fh*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.fid* %1, %struct.fid** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.dentry* null, %struct.dentry** %10, align 8
  %15 = load %struct.fid*, %struct.fid** %7, align 8
  %16 = bitcast %struct.fid* %15 to %struct.ovl_fh*
  store %struct.ovl_fh* %16, %struct.ovl_fh** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = shl i32 %17, 2
  store i32 %18, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @OVL_FILEID, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %63

25:                                               ; preds = %4
  %26 = load %struct.ovl_fh*, %struct.ovl_fh** %11, align 8
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @ovl_check_fh_len(%struct.ovl_fh* %26, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %63

32:                                               ; preds = %25
  %33 = load %struct.ovl_fh*, %struct.ovl_fh** %11, align 8
  %34 = getelementptr inbounds %struct.ovl_fh, %struct.ovl_fh* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @OVL_FH_FLAG_PATH_UPPER, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load %struct.super_block*, %struct.super_block** %6, align 8
  %42 = load %struct.ovl_fh*, %struct.ovl_fh** %11, align 8
  %43 = call %struct.dentry* @ovl_upper_fh_to_d(%struct.super_block* %41, %struct.ovl_fh* %42)
  br label %48

44:                                               ; preds = %32
  %45 = load %struct.super_block*, %struct.super_block** %6, align 8
  %46 = load %struct.ovl_fh*, %struct.ovl_fh** %11, align 8
  %47 = call %struct.dentry* @ovl_lower_fh_to_d(%struct.super_block* %45, %struct.ovl_fh* %46)
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi %struct.dentry* [ %43, %40 ], [ %47, %44 ]
  store %struct.dentry* %49, %struct.dentry** %10, align 8
  %50 = load %struct.dentry*, %struct.dentry** %10, align 8
  %51 = call i32 @PTR_ERR(%struct.dentry* %50)
  store i32 %51, i32* %14, align 4
  %52 = load %struct.dentry*, %struct.dentry** %10, align 8
  %53 = call i64 @IS_ERR(%struct.dentry* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @ESTALE, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %63

61:                                               ; preds = %55, %48
  %62 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %62, %struct.dentry** %5, align 8
  br label %71

63:                                               ; preds = %60, %31, %24
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %14, align 4
  %70 = call %struct.dentry* @ERR_PTR(i32 %69)
  store %struct.dentry* %70, %struct.dentry** %5, align 8
  br label %71

71:                                               ; preds = %63, %61
  %72 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %72
}

declare dso_local i32 @ovl_check_fh_len(%struct.ovl_fh*, i32) #1

declare dso_local %struct.dentry* @ovl_upper_fh_to_d(%struct.super_block*, %struct.ovl_fh*) #1

declare dso_local %struct.dentry* @ovl_lower_fh_to_d(%struct.super_block*, %struct.ovl_fh*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
