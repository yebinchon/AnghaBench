; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_xdr.c_nlm_encode_testres.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_xdr.c_nlm_encode_testres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_res = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.file_lock }
%struct.file_lock = type { i64, i64, i64 }

@nlm_lck_denied = common dso_local global i64 0, align 8
@F_RDLCK = common dso_local global i64 0, align 8
@xdr_zero = common dso_local global i32 0, align 4
@xdr_one = common dso_local global i32 0, align 4
@OFFSET_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.nlm_res*)* @nlm_encode_testres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @nlm_encode_testres(i32* %0, %struct.nlm_res* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nlm_res*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.file_lock*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.nlm_res* %1, %struct.nlm_res** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %11 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %10, i32 0, i32 2
  %12 = call i32* @nlm_encode_cookie(i32* %9, i32* %11)
  store i32* %12, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %93

15:                                               ; preds = %2
  %16 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %17 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %4, align 8
  store i32 %19, i32* %20, align 4
  %22 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %23 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @nlm_lck_denied, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %91

27:                                               ; preds = %15
  %28 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %29 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store %struct.file_lock* %30, %struct.file_lock** %8, align 8
  %31 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %32 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @F_RDLCK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @xdr_zero, align 4
  br label %40

38:                                               ; preds = %27
  %39 = load i32, i32* @xdr_one, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %4, align 8
  store i32 %41, i32* %42, align 4
  %44 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %45 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @htonl(i32 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %4, align 8
  store i32 %49, i32* %50, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = load %struct.nlm_res*, %struct.nlm_res** %5, align 8
  %54 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32* @xdr_encode_netobj(i32* %52, i32* %55)
  store i32* %56, i32** %4, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %40
  store i32* null, i32** %3, align 8
  br label %93

59:                                               ; preds = %40
  %60 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %61 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @loff_t_to_s32(i64 %62)
  store i32 %63, i32* %6, align 4
  %64 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %65 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @OFFSET_MAX, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  br label %80

70:                                               ; preds = %59
  %71 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %72 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %75 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %73, %76
  %78 = add nsw i64 %77, 1
  %79 = call i32 @loff_t_to_s32(i64 %78)
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %70, %69
  %81 = load i32, i32* %6, align 4
  %82 = call i8* @htonl(i32 %81)
  %83 = ptrtoint i8* %82 to i32
  %84 = load i32*, i32** %4, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %4, align 8
  store i32 %83, i32* %84, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i8* @htonl(i32 %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = load i32*, i32** %4, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %4, align 8
  store i32 %88, i32* %89, align 4
  br label %91

91:                                               ; preds = %80, %15
  %92 = load i32*, i32** %4, align 8
  store i32* %92, i32** %3, align 8
  br label %93

93:                                               ; preds = %91, %58, %14
  %94 = load i32*, i32** %3, align 8
  ret i32* %94
}

declare dso_local i32* @nlm_encode_cookie(i32*, i32*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32* @xdr_encode_netobj(i32*, i32*) #1

declare dso_local i32 @loff_t_to_s32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
