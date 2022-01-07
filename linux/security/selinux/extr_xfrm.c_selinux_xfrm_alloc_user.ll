; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_xfrm.c_selinux_xfrm_alloc_user.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_xfrm.c_selinux_xfrm_alloc_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_sec_ctx = type { i32, i8*, i32, i64, i64 }
%struct.xfrm_user_sec_ctx = type { i64, i64, i32 }
%struct.task_security_struct = type { i32 }

@XFRM_SC_DOI_LSM = common dso_local global i64 0, align 8
@XFRM_SC_ALG_SELINUX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@SECCLASS_ASSOCIATION = common dso_local global i32 0, align 4
@ASSOCIATION__SETCONTEXT = common dso_local global i32 0, align 4
@selinux_xfrm_refcount = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_sec_ctx**, %struct.xfrm_user_sec_ctx*, i32)* @selinux_xfrm_alloc_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_xfrm_alloc_user(%struct.xfrm_sec_ctx** %0, %struct.xfrm_user_sec_ctx* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_sec_ctx**, align 8
  %6 = alloca %struct.xfrm_user_sec_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.task_security_struct*, align 8
  %10 = alloca %struct.xfrm_sec_ctx*, align 8
  %11 = alloca i32, align 4
  store %struct.xfrm_sec_ctx** %0, %struct.xfrm_sec_ctx*** %5, align 8
  store %struct.xfrm_user_sec_ctx* %1, %struct.xfrm_user_sec_ctx** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = call i32 (...) @current_cred()
  %13 = call %struct.task_security_struct* @selinux_cred(i32 %12)
  store %struct.task_security_struct* %13, %struct.task_security_struct** %9, align 8
  store %struct.xfrm_sec_ctx* null, %struct.xfrm_sec_ctx** %10, align 8
  %14 = load %struct.xfrm_sec_ctx**, %struct.xfrm_sec_ctx*** %5, align 8
  %15 = icmp eq %struct.xfrm_sec_ctx** %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %3
  %17 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %6, align 8
  %18 = icmp eq %struct.xfrm_user_sec_ctx* %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %16
  %20 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.xfrm_user_sec_ctx, %struct.xfrm_user_sec_ctx* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @XFRM_SC_DOI_LSM, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %6, align 8
  %27 = getelementptr inbounds %struct.xfrm_user_sec_ctx, %struct.xfrm_user_sec_ctx* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @XFRM_SC_ALG_SELINUX, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %19, %16, %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %112

34:                                               ; preds = %25
  %35 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %6, align 8
  %36 = getelementptr inbounds %struct.xfrm_user_sec_ctx, %struct.xfrm_user_sec_ctx* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %112

44:                                               ; preds = %34
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 40, %46
  %48 = add i64 %47, 1
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* %7, align 4
  %51 = call %struct.xfrm_sec_ctx* @kmalloc(i32 %49, i32 %50)
  store %struct.xfrm_sec_ctx* %51, %struct.xfrm_sec_ctx** %10, align 8
  %52 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %10, align 8
  %53 = icmp ne %struct.xfrm_sec_ctx* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %44
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %112

57:                                               ; preds = %44
  %58 = load i64, i64* @XFRM_SC_DOI_LSM, align 8
  %59 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %10, align 8
  %60 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %59, i32 0, i32 4
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* @XFRM_SC_ALG_SELINUX, align 8
  %62 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %10, align 8
  %63 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %62, i32 0, i32 3
  store i64 %61, i64* %63, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %10, align 8
  %66 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %10, align 8
  %68 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.xfrm_user_sec_ctx*, %struct.xfrm_user_sec_ctx** %6, align 8
  %71 = getelementptr inbounds %struct.xfrm_user_sec_ctx, %struct.xfrm_user_sec_ctx* %70, i64 1
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @memcpy(i8* %69, %struct.xfrm_user_sec_ctx* %71, i32 %72)
  %74 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %10, align 8
  %75 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  store i8 0, i8* %79, align 1
  %80 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %10, align 8
  %81 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %10, align 8
  %85 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %84, i32 0, i32 2
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @security_context_to_sid(i32* @selinux_state, i8* %82, i32 %83, i32* %85, i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %57
  br label %108

91:                                               ; preds = %57
  %92 = load %struct.task_security_struct*, %struct.task_security_struct** %9, align 8
  %93 = getelementptr inbounds %struct.task_security_struct, %struct.task_security_struct* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %10, align 8
  %96 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @SECCLASS_ASSOCIATION, align 4
  %99 = load i32, i32* @ASSOCIATION__SETCONTEXT, align 4
  %100 = call i32 @avc_has_perm(i32* @selinux_state, i32 %94, i32 %97, i32 %98, i32 %99, i32* null)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  br label %108

104:                                              ; preds = %91
  %105 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %10, align 8
  %106 = load %struct.xfrm_sec_ctx**, %struct.xfrm_sec_ctx*** %5, align 8
  store %struct.xfrm_sec_ctx* %105, %struct.xfrm_sec_ctx** %106, align 8
  %107 = call i32 @atomic_inc(i32* @selinux_xfrm_refcount)
  store i32 0, i32* %4, align 4
  br label %112

108:                                              ; preds = %103, %90
  %109 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %10, align 8
  %110 = call i32 @kfree(%struct.xfrm_sec_ctx* %109)
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %108, %104, %54, %41, %31
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local %struct.task_security_struct* @selinux_cred(i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local %struct.xfrm_sec_ctx* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, %struct.xfrm_user_sec_ctx*, i32) #1

declare dso_local i32 @security_context_to_sid(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @avc_has_perm(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @kfree(%struct.xfrm_sec_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
