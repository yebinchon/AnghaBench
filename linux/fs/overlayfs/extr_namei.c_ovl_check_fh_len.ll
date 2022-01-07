; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_namei.c_ovl_check_fh_len.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_namei.c_ovl_check_fh_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ovl_fh = type { i32, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@OVL_FH_MAGIC = common dso_local global i64 0, align 8
@OVL_FH_VERSION = common dso_local global i64 0, align 8
@OVL_FH_FLAG_ALL = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@OVL_FH_FLAG_ANY_ENDIAN = common dso_local global i32 0, align 4
@OVL_FH_FLAG_BIG_ENDIAN = common dso_local global i32 0, align 4
@OVL_FH_FLAG_CPU_ENDIAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovl_check_fh_len(%struct.ovl_fh* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ovl_fh*, align 8
  %5 = alloca i32, align 4
  store %struct.ovl_fh* %0, %struct.ovl_fh** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 32
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.ovl_fh*, %struct.ovl_fh** %4, align 8
  %12 = getelementptr inbounds %struct.ovl_fh, %struct.ovl_fh* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %9, %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %63

18:                                               ; preds = %9
  %19 = load %struct.ovl_fh*, %struct.ovl_fh** %4, align 8
  %20 = getelementptr inbounds %struct.ovl_fh, %struct.ovl_fh* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @OVL_FH_MAGIC, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %63

27:                                               ; preds = %18
  %28 = load %struct.ovl_fh*, %struct.ovl_fh** %4, align 8
  %29 = getelementptr inbounds %struct.ovl_fh, %struct.ovl_fh* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @OVL_FH_VERSION, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %27
  %34 = load %struct.ovl_fh*, %struct.ovl_fh** %4, align 8
  %35 = getelementptr inbounds %struct.ovl_fh, %struct.ovl_fh* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @OVL_FH_FLAG_ALL, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33, %27
  %42 = load i32, i32* @ENODATA, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %63

44:                                               ; preds = %33
  %45 = load %struct.ovl_fh*, %struct.ovl_fh** %4, align 8
  %46 = getelementptr inbounds %struct.ovl_fh, %struct.ovl_fh* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @OVL_FH_FLAG_ANY_ENDIAN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %44
  %52 = load %struct.ovl_fh*, %struct.ovl_fh** %4, align 8
  %53 = getelementptr inbounds %struct.ovl_fh, %struct.ovl_fh* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @OVL_FH_FLAG_BIG_ENDIAN, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @OVL_FH_FLAG_CPU_ENDIAN, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load i32, i32* @ENODATA, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %63

62:                                               ; preds = %51, %44
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %59, %41, %24, %15
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
