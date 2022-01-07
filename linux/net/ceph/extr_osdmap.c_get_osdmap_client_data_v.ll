; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_get_osdmap_client_data_v.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_get_osdmap_client_data_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e_inval = common dso_local global i32 0, align 4
@OSDMAP_WRAPPER_COMPAT_VER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"got v %d cv %d > %d of %s ceph_osdmap\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OSDMAP_CLIENT_DATA_COMPAT_VER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"got v %d cv %d > %d of %s ceph_osdmap client data\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"got v %d < 6 of %s ceph_osdmap\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i8*, i32*)* @get_osdmap_client_data_v to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_osdmap_client_data_v(i8** %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i8**, i8*** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @e_inval, align 4
  %17 = call i32 @ceph_decode_8_safe(i8** %13, i8* %14, i32 %15, i32 %16)
  %18 = load i32, i32* %10, align 4
  %19 = icmp sge i32 %18, 7
  br i1 %19, label %20, label %66

20:                                               ; preds = %4
  %21 = load i8**, i8*** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @e_inval, align 4
  %25 = call i32 @ceph_decode_8_safe(i8** %21, i8* %22, i32 %23, i32 %24)
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @OSDMAP_WRAPPER_COMPAT_VER, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %20
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @OSDMAP_WRAPPER_COMPAT_VER, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %32, i8* %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %90

37:                                               ; preds = %20
  %38 = load i8**, i8*** %6, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr i8, i8* %39, i64 4
  store i8* %40, i8** %38, align 8
  %41 = load i8**, i8*** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @e_inval, align 4
  %45 = call i32 @ceph_decode_8_safe(i8** %41, i8* %42, i32 %43, i32 %44)
  %46 = load i8**, i8*** %6, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @e_inval, align 4
  %50 = call i32 @ceph_decode_8_safe(i8** %46, i8* %47, i32 %48, i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @OSDMAP_CLIENT_DATA_COMPAT_VER, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %37
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @OSDMAP_CLIENT_DATA_COMPAT_VER, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56, i32 %57, i8* %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %90

62:                                               ; preds = %37
  %63 = load i8**, i8*** %6, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr i8, i8* %64, i64 4
  store i8* %65, i8** %63, align 8
  br label %84

66:                                               ; preds = %4
  %67 = load i8**, i8*** %6, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr i8, i8* %68, i64 -1
  store i8* %69, i8** %67, align 8
  %70 = load i8**, i8*** %6, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @e_inval, align 4
  %74 = call i32 @ceph_decode_16_safe(i8** %70, i8* %71, i32 %72, i32 %73)
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %75, 6
  br i1 %76, label %77, label %83

77:                                               ; preds = %66
  %78 = load i32, i32* %12, align 4
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 (i8*, i32, ...) @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %78, i8* %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %90

83:                                               ; preds = %66
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %83, %62
  %85 = load i32, i32* %10, align 4
  %86 = load i32*, i32** %9, align 8
  store i32 %85, i32* %86, align 4
  store i32 0, i32* %5, align 4
  br label %90

87:                                               ; No predecessors!
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %87, %84, %77, %54, %29
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @ceph_decode_8_safe(i8**, i8*, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, ...) #1

declare dso_local i32 @ceph_decode_16_safe(i8**, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
