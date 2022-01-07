; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_xfrm.c_selinux_xfrm_state_alloc_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_xfrm.c_selinux_xfrm_state_alloc_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.xfrm_sec_ctx* }
%struct.xfrm_sec_ctx = type { i32, i32, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@selinux_state = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XFRM_SC_DOI_LSM = common dso_local global i32 0, align 4
@XFRM_SC_ALG_SELINUX = common dso_local global i32 0, align 4
@selinux_xfrm_refcount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @selinux_xfrm_state_alloc_acquire(%struct.xfrm_state* %0, %struct.xfrm_sec_ctx* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca %struct.xfrm_sec_ctx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfrm_sec_ctx*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %5, align 8
  store %struct.xfrm_sec_ctx* %1, %struct.xfrm_sec_ctx** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* null, i8** %10, align 8
  %12 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %6, align 8
  %13 = icmp ne %struct.xfrm_sec_ctx* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %67

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %67

21:                                               ; preds = %15
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @security_sid_to_context(i32* @selinux_state, i64 %22, i8** %10, i32* %11)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %67

28:                                               ; preds = %21
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 24, %30
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call %struct.xfrm_sec_ctx* @kmalloc(i32 %32, i32 %33)
  store %struct.xfrm_sec_ctx* %34, %struct.xfrm_sec_ctx** %9, align 8
  %35 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %9, align 8
  %36 = icmp ne %struct.xfrm_sec_ctx* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %63

40:                                               ; preds = %28
  %41 = load i32, i32* @XFRM_SC_DOI_LSM, align 4
  %42 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %9, align 8
  %43 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @XFRM_SC_ALG_SELINUX, align 4
  %45 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %9, align 8
  %46 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %9, align 8
  %49 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %9, align 8
  %52 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %9, align 8
  %54 = getelementptr inbounds %struct.xfrm_sec_ctx, %struct.xfrm_sec_ctx* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @memcpy(i32 %55, i8* %56, i32 %57)
  %59 = load %struct.xfrm_sec_ctx*, %struct.xfrm_sec_ctx** %9, align 8
  %60 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %61 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %60, i32 0, i32 0
  store %struct.xfrm_sec_ctx* %59, %struct.xfrm_sec_ctx** %61, align 8
  %62 = call i32 @atomic_inc(i32* @selinux_xfrm_refcount)
  br label %63

63:                                               ; preds = %40, %37
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @kfree(i8* %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %63, %26, %18, %14
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @security_sid_to_context(i32*, i64, i8**, i32*) #1

declare dso_local %struct.xfrm_sec_ctx* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
