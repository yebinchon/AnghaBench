; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_export.c_ovl_d_to_fh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_export.c_ovl_d_to_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.ovl_fh = type { i32, i32 }

@EOVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"overlayfs: failed to encode file handle (%pd2, err=%i, buflen=%d, len=%d, type=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i8*, i32)* @ovl_d_to_fh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_d_to_fh(%struct.dentry* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ovl_fh*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ovl_fh* null, %struct.ovl_fh** %8, align 8
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = call i32 @ovl_check_encode_origin(%struct.dentry* %11)
  store i32 %12, i32* %10, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %62

16:                                               ; preds = %3
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.dentry*, %struct.dentry** %5, align 8
  %21 = call i32 @ovl_dentry_lower(%struct.dentry* %20)
  br label %25

22:                                               ; preds = %16
  %23 = load %struct.dentry*, %struct.dentry** %5, align 8
  %24 = call i32 @ovl_dentry_upper(%struct.dentry* %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i32 [ %21, %19 ], [ %24, %22 ]
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call %struct.ovl_fh* @ovl_encode_real_fh(i32 %26, i32 %30)
  store %struct.ovl_fh* %31, %struct.ovl_fh** %8, align 8
  %32 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  %33 = call i64 @IS_ERR(%struct.ovl_fh* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  %37 = call i32 @PTR_ERR(%struct.ovl_fh* %36)
  store i32 %37, i32* %4, align 4
  br label %85

38:                                               ; preds = %25
  %39 = load i32, i32* @EOVERFLOW, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  %41 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  %42 = getelementptr inbounds %struct.ovl_fh, %struct.ovl_fh* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %62

47:                                               ; preds = %38
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  %50 = bitcast %struct.ovl_fh* %49 to i8*
  %51 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  %52 = getelementptr inbounds %struct.ovl_fh, %struct.ovl_fh* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @memcpy(i8* %48, i8* %50, i32 %53)
  %55 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  %56 = getelementptr inbounds %struct.ovl_fh, %struct.ovl_fh* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %82, %47
  %59 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  %60 = call i32 @kfree(%struct.ovl_fh* %59)
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %85

62:                                               ; preds = %46, %15
  %63 = load %struct.dentry*, %struct.dentry** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  %67 = icmp ne %struct.ovl_fh* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  %70 = getelementptr inbounds %struct.ovl_fh, %struct.ovl_fh* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  br label %73

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %68
  %74 = phi i32 [ %71, %68 ], [ 0, %72 ]
  %75 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  %76 = icmp ne %struct.ovl_fh* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load %struct.ovl_fh*, %struct.ovl_fh** %8, align 8
  %79 = getelementptr inbounds %struct.ovl_fh, %struct.ovl_fh* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  br label %82

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %77
  %83 = phi i32 [ %80, %77 ], [ 0, %81 ]
  %84 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), %struct.dentry* %63, i32 %64, i32 %65, i32 %74, i32 %83)
  br label %58

85:                                               ; preds = %58, %35
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @ovl_check_encode_origin(%struct.dentry*) #1

declare dso_local %struct.ovl_fh* @ovl_encode_real_fh(i32, i32) #1

declare dso_local i32 @ovl_dentry_lower(%struct.dentry*) #1

declare dso_local i32 @ovl_dentry_upper(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.ovl_fh*) #1

declare dso_local i32 @PTR_ERR(%struct.ovl_fh*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.ovl_fh*) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, %struct.dentry*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
