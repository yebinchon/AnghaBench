; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_update_manager_entry.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_update_manager_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.tomoyo_manager = type { i64, i32 }
%struct.tomoyo_acl_param = type { i32, i32* }

@tomoyo_kernel_namespace = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TOMOYO_ID_MANAGER = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@tomoyo_same_manager = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @tomoyo_update_manager_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_update_manager_entry(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tomoyo_manager, align 8
  %7 = alloca %struct.tomoyo_acl_param, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = bitcast %struct.tomoyo_manager* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  %10 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %7, i32 0, i32 0
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %7, i32 0, i32 1
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tomoyo_kernel_namespace, i32 0, i32 0), align 8
  %14 = load i64, i64* @TOMOYO_ID_MANAGER, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32* %15, i32** %12, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i32 [ %20, %18 ], [ %23, %21 ]
  store i32 %25, i32* %8, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @tomoyo_correct_domain(i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @tomoyo_correct_word(i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %52

36:                                               ; preds = %29, %24
  %37 = load i8*, i8** %4, align 8
  %38 = call i64 @tomoyo_get_name(i8* %37)
  %39 = getelementptr inbounds %struct.tomoyo_manager, %struct.tomoyo_manager* %6, i32 0, i32 0
  store i64 %38, i64* %39, align 8
  %40 = getelementptr inbounds %struct.tomoyo_manager, %struct.tomoyo_manager* %6, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.tomoyo_manager, %struct.tomoyo_manager* %6, i32 0, i32 1
  %45 = load i32, i32* @tomoyo_same_manager, align 4
  %46 = call i32 @tomoyo_update_policy(i32* %44, i32 16, %struct.tomoyo_acl_param* %7, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = getelementptr inbounds %struct.tomoyo_manager, %struct.tomoyo_manager* %6, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @tomoyo_put_name(i64 %48)
  br label %50

50:                                               ; preds = %43, %36
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %33
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @tomoyo_correct_domain(i8*) #2

declare dso_local i32 @tomoyo_correct_word(i8*) #2

declare dso_local i64 @tomoyo_get_name(i8*) #2

declare dso_local i32 @tomoyo_update_policy(i32*, i32, %struct.tomoyo_acl_param*, i32) #2

declare dso_local i32 @tomoyo_put_name(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
